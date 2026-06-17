const fs = require('fs');
const files = ['ATS_Sequencer.maxpat', 'CymbalStrobe_Square.maxpat'];

files.forEach(file => {
    if (!fs.existsSync(file)) return;
    const patch = JSON.parse(fs.readFileSync(file, 'utf8'));

    const boxes = {};
    patch.patcher.boxes.forEach(b => {
        boxes[b.box.id] = b.box;
    });

    const lines = patch.patcher.lines;

    const xycMessages = Object.values(boxes).filter(b => b.maxclass === 'message' && b.text && b.text.startsWith('xyc '));
    console.log(`Processing ${file} - Found ${xycMessages.length} xyc messages`);

    xycMessages.forEach(msg => {
        const values = msg.text.replace('xyc ', '').split(' ');
        const tVal = parseFloat(values[0]);
        const targetVal = parseFloat(values[1]);
        const curveVal = parseFloat(values[2]);
        
        const feeders = lines.filter(l => l.patchline.destination[0] === msg.id && l.patchline.destination[1] === 1);
        feeders.forEach(f => {
            const sprintfId = f.patchline.source[0];
            const feeders2 = lines.filter(l => l.patchline.destination[0] === sprintfId);
            
            // Map each source box to the inlets it connects to
            const boxToInlets = {};
            feeders2.forEach(f2 => {
                const s2Id = f2.patchline.source[0];
                let targetId = null;
                
                if (boxes[s2Id].maxclass === 'number' || boxes[s2Id].maxclass === 'flonum') {
                    targetId = s2Id;
                } else {
                    const feeders3 = lines.filter(l => l.patchline.destination[0] === s2Id);
                    if (feeders3.length > 0) {
                        const s3Id = feeders3[0].patchline.source[0];
                        if (boxes[s3Id].maxclass === 'number' || boxes[s3Id].maxclass === 'flonum') {
                            targetId = s3Id;
                        }
                    }
                }
                
                if (targetId) {
                    if (!boxToInlets[targetId]) boxToInlets[targetId] = [];
                    boxToInlets[targetId].push(f2.patchline.destination[1]);
                }
            });
            
            Object.keys(boxToInlets).forEach(targetId => {
                const inlets = boxToInlets[targetId];
                let initVal = null;
                
                if (inlets.includes(2)) {
                    initVal = curveVal;
                } else if (inlets.includes(1)) {
                    initVal = targetVal;
                } else if (inlets.includes(0)) {
                    initVal = tVal;
                }
                
                if (initVal !== null) {
                    const targetBox = boxes[targetId];
                    targetBox.parameter_enable = 1;
                    if (!targetBox.saved_attribute_attributes) {
                        targetBox.saved_attribute_attributes = { valueof: {} };
                    }
                    if (!targetBox.saved_attribute_attributes.valueof) {
                        targetBox.saved_attribute_attributes.valueof = {};
                    }
                    
                    targetBox.saved_attribute_attributes.valueof.parameter_initial = [initVal];
                    targetBox.saved_attribute_attributes.valueof.parameter_initial_enable = 1;
                    targetBox.saved_attribute_attributes.valueof.parameter_invisible = 1;
                    targetBox.saved_attribute_attributes.valueof.parameter_longname = targetBox.id;
                    targetBox.saved_attribute_attributes.valueof.parameter_shortname = targetBox.id;
                    targetBox.saved_attribute_attributes.valueof.parameter_type = targetBox.maxclass === 'number' ? 3 : 0;
                    
                    console.log(`Updated ${targetId} (${targetBox.maxclass}) with initVal = ${initVal} (inlets: ${inlets.join(',')})`);
                }
            });
        });
    });

    fs.writeFileSync(file, JSON.stringify(patch, null, '\t') + '\n');
    console.log(`Saved ${file}`);
});
