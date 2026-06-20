const fs = require("fs");

const file = "ATS_Sequencer.maxpat";
const backup = "ATS_Sequencer_backup_doc.maxpat";
fs.copyFileSync(file, backup);

const data = JSON.parse(fs.readFileSync(file, "utf8"));

const newButton = {
  box: {
    maxclass: "textbutton",
    text: "📖 Documentación / Quick Start",
    presentation: 1,
    presentation_rect: [1723.0, 600.0, 323.0, 40.0],
    patching_rect: [1723.0, 600.0, 323.0, 40.0],
    id: "obj_doc_btn_new",
    fontsize: 16.0,
    fontface: 1
  }
};

const newMsg = {
  box: {
    maxclass: "message",
    text: ";\rmax launchbrowser https://github.com/Alba-Triana-Studio/ATS_Sequencer/blob/main/Quick_Readme.md",
    hidden: 1,
    patching_rect: [1723.0, 650.0, 323.0, 22.0],
    id: "obj_doc_msg_new"
  }
};

const newLine = {
  patchline: {
    source: [ "obj_doc_btn_new", 0 ],
    destination: [ "obj_doc_msg_new", 0 ],
    hidden: 1
  }
};

if (data.patcher.boxes) {
  data.patcher.boxes.push(newButton);
  data.patcher.boxes.push(newMsg);
} else {
  data.patcher.box = Array.isArray(data.patcher.box) ? data.patcher.box : [data.patcher.box];
  data.patcher.box.push(newButton);
  data.patcher.box.push(newMsg);
}

if (!data.patcher.lines) data.patcher.lines = [];
data.patcher.lines.push(newLine);

fs.writeFileSync(file, JSON.stringify(data, null, 2), "utf8");
console.log("Button injected successfully.");
