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
                    newBoxRef.box.preset_data = oldPresetsData[i];
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
