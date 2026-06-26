const maxApi = require('max-api');
const fs = require('fs');

let oldPath = '';
let newPath = '';
let toggles = [0, 0, 0, 0];
let oldPresetsData = [null, null, null, null];

function getValidPath(p) {
    if (fs.existsSync(p)) return p;
    if (p.includes(':/')) {
        const fixed = p.substring(p.indexOf(':/') + 1);
        if (fs.existsSync(fixed)) return fixed;
    }
    return p;
}

maxApi.addHandler('toggle', (idx, state) => {
    toggles[idx] = state;
});

maxApi.addHandler('old_file', (p) => {
    oldPath = getValidPath(p);
    try {
        if (!fs.existsSync(oldPath)) {
            maxApi.outlet('error', 'El archivo antiguo no existe: ' + oldPath);
            return;
        }
        const oldPatch = JSON.parse(fs.readFileSync(oldPath, 'utf8'));
        const oldPresets = oldPatch.patcher.boxes.filter(b => b.box.maxclass === 'preset');
        
        if (oldPresets.length !== 4) {
            maxApi.outlet('error', `El archivo antiguo tiene ${oldPresets.length} presets. Se requieren 4.`);
            return;
        }

        oldPresets.sort((a, b) => a.box.patching_rect[1] - b.box.patching_rect[1]);

        let foundData = false;
        for (let i = 0; i < 4; i++) {
            if (oldPresets[i].box.preset_data) {
                oldPresetsData[i] = oldPresets[i].box.preset_data;
                maxApi.outlet('set_toggle', i, 1);
                toggles[i] = 1;
                foundData = true;
            } else {
                oldPresetsData[i] = null;
                maxApi.outlet('set_toggle', i, 0);
                toggles[i] = 0;
            }
        }
        
        if (foundData) {
            maxApi.outlet('success', '1. Archivo antiguo listo. (Detectamos matrices)');
        } else {
            maxApi.outlet('error', '1. Archivo cargado, pero no hay presets guardados en él.');
        }
    } catch (e) {
        maxApi.outlet('error', 'Error al leer archivo antiguo: ' + e.message);
    }
});

maxApi.addHandler('new_file', (p) => {
    newPath = getValidPath(p);
    maxApi.outlet('success', '2. Archivo nuevo seleccionado.');
});

maxApi.addHandler('migrate', () => {
    try {
        if (!oldPath) {
            maxApi.outlet('error', 'Falta seleccionar el archivo antiguo.');
            return;
        }
        if (!newPath) {
            maxApi.outlet('error', 'Falta seleccionar el archivo nuevo.');
            return;
        }
        if (!fs.existsSync(newPath)) {
            maxApi.outlet('error', 'El archivo nuevo no existe: ' + newPath);
            return;
        }

        const newPatch = JSON.parse(fs.readFileSync(newPath, 'utf8'));
        const newPresets = newPatch.patcher.boxes.filter(b => b.box.maxclass === 'preset');

        if (newPresets.length !== 4) {
            maxApi.outlet('error', `El archivo nuevo tiene ${newPresets.length} presets. Se requieren 4.`);
            return;
        }

        newPresets.sort((a, b) => a.box.patching_rect[1] - b.box.patching_rect[1]);

        let migratedCount = 0;
        for (let i = 0; i < 4; i++) {
            if (toggles[i] && oldPresetsData[i]) {
                const newId = newPresets[i].box.id;
                const newBoxRef = newPatch.patcher.boxes.find(b => b.box.id === newId);
                if (newBoxRef) {
                    const oldCols = 10;
                    const newCols = 20;
                    // Mapping old rows to new rows based on the new layout:
                    // 0: M1 -> 0
                    // 1: M2 -> 1
                    // 2: M3 -> 4
                    // 3: M4 -> 6
                    // 4: M5 -> 7
                    // 5: M6 -> 10
                    // 6: M7 -> 13
                    // 7: M8 -> 16
                    // 8: M9 -> 17
                    // 9: T1 -> 18
                    // 10: T2 -> 19
                    // 11: T3 -> 20
                    // 12: Full Piece -> 21
                    const rowMapping = {
                        0: 0, 1: 1, 2: 4, 3: 6, 4: 7, 5: 10, 6: 13,
                        7: 16, 8: 17, 9: 18, 10: 19, 11: 20, 12: 21
                    };
                    const mappedData = oldPresetsData[i].map(item => {
                        if (typeof item === 'object' && item.number) {
                            let oldIdx = item.number;
                            let oldRow = Math.floor((oldIdx - 1) / oldCols);
                            let oldCol = (oldIdx - 1) % oldCols;
                            
                            // Map to the new row if it exists in mapping, otherwise leave it in the same row
                            let newRow = rowMapping[oldRow] !== undefined ? rowMapping[oldRow] : oldRow;
                            
                            let newIdx = newRow * newCols + oldCol + 1;
                            let newItem = Object.assign({}, item);
                            newItem.number = newIdx;
                            return newItem;
                        }
                        return item;
                    });
                    newBoxRef.box.preset_data = mappedData;
                    migratedCount++;
                }
            }
        }

        if (migratedCount === 0) {
            maxApi.outlet('error', 'No se migró nada. ¿Seleccionaste alguna matriz con datos?');
            return;
        }

        fs.writeFileSync(newPath, JSON.stringify(newPatch, null, '\t') + '\n');
        maxApi.outlet('success', `¡ÉXITO! Migradas ${migratedCount} matrices. Cierra esto y abre tu versión nueva.`);
        
        oldPath = '';
        newPath = '';
        toggles = [0, 0, 0, 0];
        oldPresetsData = [null, null, null, null];
        for(let i=0; i<4; i++) maxApi.outlet('set_toggle', i, 0);
    } catch (e) {
        maxApi.outlet('error', 'Error durante la migración: ' + e.message);
    }
});
