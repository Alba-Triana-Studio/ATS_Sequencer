const fs = require("fs");
const data = JSON.parse(fs.readFileSync("ATS_Sequencer.maxpat", "utf8"));
const texts = new Set();
function traverse(obj) {
  if (Array.isArray(obj)) {
    obj.forEach(traverse);
  } else if (typeof obj === "object" && obj !== null) {
    if (obj.box && obj.box.maxclass === "comment" && obj.box.text) texts.add(obj.box.text);
    if (obj.box && obj.box.maxclass === "textbutton" && obj.box.text) texts.add(obj.box.text);
    if (obj.box && obj.box.maxclass === "message" && obj.box.text) texts.add(obj.box.text);
    if (obj.box && obj.box.maxclass === "live.text" && obj.box.text) texts.add(obj.box.text);
    Object.values(obj).forEach(traverse);
  }
}
traverse(data);
console.log(Array.from(texts).sort().join("\n"));
