const fs = require("fs");
const data = JSON.parse(fs.readFileSync("ATS_Sequencer.maxpat", "utf8"));

const boxes = data.patcher.box || data.patcher.boxes || [];

function findBoxes(obj) {
  let results = [];
  if (Array.isArray(obj)) {
    obj.forEach(item => results = results.concat(findBoxes(item)));
  } else if (typeof obj === "object" && obj !== null) {
    if (obj.box && (obj.box.maxclass === "textbutton" || obj.box.maxclass === "comment")) {
      if (obj.box.presentation) {
        results.push({
          class: obj.box.maxclass,
          text: obj.box.text || "",
          rect: obj.box.presentation_rect || []
        });
      }
    }
    Object.values(obj).forEach(val => results = results.concat(findBoxes(val)));
  }
  return results;
}

const found = findBoxes(data.patcher);
console.log(found.filter(f => f.text.match(/Play|Global|Master|Save|Load|Clear|Doc|Guardar/i)).map(f => `${f.class} - ${f.text.trim()} - ${f.rect}`).join('\n'));
