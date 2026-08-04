{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 8,
   "minor": 2,
   "revision": 1,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   26,
   87,
   1380,
   960
  ],
  "bglocked": 0,
  "openinpresentation": 0,
  "default_fontsize": 12,
  "default_fontface": 0,
  "default_fontname": "Arial",
  "gridonopen": 1,
  "gridsize": [
   15,
   15
  ],
  "gridsnaponopen": 1,
  "objectsnaponopen": 1,
  "statusbarvisible": 2,
  "toolbarvisible": 1,
  "lefttoolbarpinned": 0,
  "toptoolbarpinned": 0,
  "righttoolbarpinned": 0,
  "bottomtoolbarpinned": 0,
  "toolbars_unpinned_last_save": 0,
  "tallnewobj": 0,
  "boxanimatetime": 200,
  "enablehscroll": 1,
  "enablevscroll": 1,
  "devicewidth": 0,
  "description": "",
  "digest": "",
  "tags": "",
  "style": "",
  "subpatcher_template": "",
  "assistshowspatchername": 0,
  "boxes": [
   {
    "box": {
     "id": "obj-24",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      248,
      208,
      50,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-42",
     "interpinlet": 1,
     "maxclass": "gain~",
     "multichannelvariant": 0,
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1012.064209,
      189,
      38,
      139
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1012.064209,
      489.136353,
      89,
      22
     ],
     "text": "send~ mixout4"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1060.064209,
      445.636353,
      115,
      23
     ],
     "text": "s from-lim-params"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-47",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1058.185547,
      385.136353,
      50,
      23
     ],
     "text": "r to-lim"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 4,
     "outlettype": [
      "signal",
      "signal",
      "list",
      "list"
     ],
     "patching_rect": [
      1043.0642090000001,
      416.136353,
      91,
      23
     ],
     "text": "omx.peaklim~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      933.564209,
      416.136353,
      72,
      23
     ],
     "text": "peakamp~"
    }
   },
   {
    "box": {
     "id": "obj-34",
     "interpinlet": 1,
     "maxclass": "gain~",
     "multichannelvariant": 0,
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      810.064209,
      189,
      38,
      139
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      810.064209,
      489.136353,
      89,
      22
     ],
     "text": "send~ mixout3"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      858.064209,
      445.636353,
      115,
      23
     ],
     "text": "s from-lim-params"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      856.185547,
      385.136353,
      50,
      23
     ],
     "text": "r to-lim"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 4,
     "outlettype": [
      "signal",
      "signal",
      "list",
      "list"
     ],
     "patching_rect": [
      831.064209,
      416.136353,
      91,
      23
     ],
     "text": "omx.peaklim~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      731.564209,
      416.136353,
      72,
      23
     ],
     "text": "peakamp~"
    }
   },
   {
    "box": {
     "id": "obj-28",
     "interpinlet": 1,
     "maxclass": "gain~",
     "multichannelvariant": 0,
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      602.064209,
      180,
      38,
      139
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      602.064209,
      489.136353,
      89,
      22
     ],
     "text": "send~ mixout2"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-30",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      650.064209,
      445.636353,
      115,
      23
     ],
     "text": "s from-lim-params"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-31",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      648.185547,
      385.136353,
      50,
      23
     ],
     "text": "r to-lim"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 4,
     "outlettype": [
      "signal",
      "signal",
      "list",
      "list"
     ],
     "patching_rect": [
      627.6855470000002,
      416.136353,
      91,
      23
     ],
     "text": "omx.peaklim~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      523.564209,
      416.136353,
      72,
      23
     ],
     "text": "peakamp~"
    }
   },
   {
    "box": {
     "bubble": 1,
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-21",
     "linecount": 5,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      196.212402,
      250,
      239,
      78
     ],
     "text": "Master volume. 0 = -inf dB\n0.5 = -0.62dB\n1 = 0dB\n\nSet to 127 by default"
    }
   },
   {
    "box": {
     "bubble": 1,
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-20",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      268,
      388.136353,
      239,
      24
     ],
     "text": "Peak limiter"
    }
   },
   {
    "box": {
     "bubble": 1,
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-19",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      401.064209,
      461.136353,
      239,
      24
     ],
     "text": "Limiter parameter controls."
    }
   },
   {
    "box": {
     "bubble": 1,
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-17",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      478.064209,
      110,
      239,
      24
     ],
     "text": "Sends synths signal to monitor."
    }
   },
   {
    "box": {
     "bubble": 1,
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-6",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      478.064209,
      77,
      239,
      24
     ],
     "text": "Mutes synthesizer signal."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      401.064209,
      110,
      65,
      22
     ],
     "text": "send~ 4lvl"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      401.064209,
      49,
      51,
      22
     ],
     "text": "r mute4"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      401.064209,
      77,
      41,
      22
     ],
     "text": "gate~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      397,
      22,
      57,
      22
     ],
     "text": "p4sound"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-5",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      324.155273,
      110,
      65,
      22
     ],
     "text": "send~ 3lvl"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      324.155273,
      49,
      51,
      22
     ],
     "text": "r mute3"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      324.155273,
      77,
      41,
      22
     ],
     "text": "gate~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      320.091064,
      22,
      57,
      22
     ],
     "text": "p3sound"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      22.182129,
      104,
      70,
      22
     ],
     "text": "r mastervol"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "interpinlet": 1,
     "maxclass": "gain~",
     "multichannelvariant": 0,
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      150.091064,
      161,
      38,
      139
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150.091064,
      461.136353,
      89,
      22
     ],
     "text": "send~ mixout1"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      239.155273,
      104,
      65,
      22
     ],
     "text": "send~ 2lvl"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-22",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      163.091064,
      110,
      65,
      22
     ],
     "text": "send~ 1lvl"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      239.155273,
      49,
      51,
      22
     ],
     "text": "r mute2"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      239.155273,
      77,
      41,
      22
     ],
     "text": "gate~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      150.091064,
      49,
      51,
      22
     ],
     "text": "r mute1"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      150.091064,
      77,
      41,
      22
     ],
     "text": "gate~"
    }
   },
   {
    "box": {
     "bubble": 1,
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-26",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1111,
      29,
      239,
      51
     ],
     "text": "en estos subpatchers se procesa la señal de cada parcial (abrir p1sound para más comentarios)"
    }
   },
   {
    "box": {
     "bubble": 1,
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-25",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      485,
      22,
      239,
      51
     ],
     "text": "Each synthesizer is a subpatch, CMD + double click on any box to access it. Explanation notes on p1sound."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-110",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      198.091064,
      417.636353,
      115,
      23
     ],
     "text": "s from-lim-params"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-57",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      320.091064,
      461.136353,
      79,
      22
     ],
     "text": "limitercontrol"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      196.212402,
      357.136353,
      50,
      23
     ],
     "text": "r to-lim"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 4,
     "outlettype": [
      "signal",
      "signal",
      "list",
      "list"
     ],
     "patching_rect": [
      175.71240199999997,
      388.136353,
      91,
      23
     ],
     "text": "omx.peaklim~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 13,
     "id": "obj-278",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      71.591064,
      388.136353,
      72,
      23
     ],
     "text": "peakamp~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      235.091064,
      22,
      57,
      22
     ],
     "text": "p2sound"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12,
     "id": "obj-1",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      142.091064,
      22,
      57,
      22
     ],
     "text": "p1sound"
    }
   },
   {
    "box": {
     "id": "obj-c5-note",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      530,
      320,
      24
     ],
     "text": "Canal 5 (sonido): mismo esquema que los canales 1-4."
    }
   },
   {
    "box": {
     "id": "obj-c5-syn",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      150,
      560,
      57,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "p5sound"
    }
   },
   {
    "box": {
     "id": "obj-c5-rmute",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      150,
      590,
      51,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "r mute5"
    }
   },
   {
    "box": {
     "id": "obj-c5-gate",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      150,
      620,
      41,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "gate~"
    }
   },
   {
    "box": {
     "id": "obj-c5-lvl",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      230,
      650,
      76,
      22
     ],
     "text": "send~ 5lvl"
    }
   },
   {
    "box": {
     "id": "obj-c5-gain",
     "maxclass": "gain~",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      150,
      680,
      38,
      139
     ],
     "outlettype": [
      "signal",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-c5-peak",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      230,
      840,
      72,
      23
     ],
     "outlettype": [
      ""
     ],
     "text": "peakamp~"
    }
   },
   {
    "box": {
     "id": "obj-c5-tolim",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      330,
      805,
      50,
      23
     ],
     "outlettype": [
      ""
     ],
     "text": "r to-lim"
    }
   },
   {
    "box": {
     "id": "obj-c5-lim",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 3,
     "patching_rect": [
      318,
      840,
      91,
      23
     ],
     "outlettype": [
      "signal",
      "signal",
      ""
     ],
     "text": "omx.peaklim~"
    }
   },
   {
    "box": {
     "id": "obj-c5-fromlim",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      318,
      875,
      115,
      23
     ],
     "text": "s from-lim-params"
    }
   },
   {
    "box": {
     "id": "obj-c5-mix",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      910,
      89,
      22
     ],
     "text": "send~ mixout5"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "obj-2",
      1
     ],
     "source": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-8",
      1
     ],
     "source": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "source": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-11",
      0
     ],
     "order": 1,
     "source": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-42",
      0
     ],
     "order": 0,
     "source": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      0
     ],
     "source": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-28",
      0
     ],
     "order": 0,
     "source": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-36",
      0
     ],
     "order": 1,
     "source": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      1
     ],
     "source": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      0
     ],
     "source": [
      "obj-18",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-278",
      0
     ],
     "order": 1,
     "source": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-45",
      0
     ],
     "order": 0,
     "source": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-18",
      0
     ],
     "order": 1,
     "source": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-22",
      0
     ],
     "order": 0,
     "source": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-29",
      0
     ],
     "order": 1,
     "source": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-32",
      0
     ],
     "order": 0,
     "source": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-33",
      0
     ],
     "order": 2,
     "source": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      1
     ],
     "source": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-32",
      0
     ],
     "source": [
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-30",
      0
     ],
     "source": [
      "obj-32",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-37",
      0
     ],
     "order": 1,
     "source": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-40",
      0
     ],
     "order": 0,
     "source": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-41",
      0
     ],
     "order": 2,
     "source": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-46",
      0
     ],
     "source": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-40",
      0
     ],
     "source": [
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-18",
      0
     ],
     "midpoints": [
      31.682129,
      146,
      159.591064,
      146
     ],
     "order": 3,
     "source": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-28",
      0
     ],
     "order": 2,
     "source": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-34",
      0
     ],
     "order": 1,
     "source": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-42",
      0
     ],
     "order": 0,
     "source": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-38",
      0
     ],
     "source": [
      "obj-40",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-43",
      0
     ],
     "order": 1,
     "source": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-48",
      0
     ],
     "order": 0,
     "source": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-49",
      0
     ],
     "order": 2,
     "source": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-110",
      0
     ],
     "source": [
      "obj-46",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-45",
      0
     ],
     "source": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-48",
      0
     ],
     "source": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-44",
      0
     ],
     "source": [
      "obj-48",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-8",
      0
     ],
     "source": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-34",
      0
     ],
     "order": 0,
     "source": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-5",
      0
     ],
     "order": 1,
     "source": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-2",
      0
     ],
     "source": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-gate",
      1
     ],
     "source": [
      "obj-c5-syn",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-gate",
      0
     ],
     "source": [
      "obj-c5-rmute",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-lvl",
      0
     ],
     "source": [
      "obj-c5-gate",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-gain",
      0
     ],
     "source": [
      "obj-c5-gate",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-gain",
      0
     ],
     "source": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-mix",
      0
     ],
     "source": [
      "obj-c5-gain",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-peak",
      0
     ],
     "source": [
      "obj-c5-gain",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-lim",
      0
     ],
     "source": [
      "obj-c5-gain",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-lim",
      0
     ],
     "source": [
      "obj-c5-tolim",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-c5-fromlim",
      0
     ],
     "source": [
      "obj-c5-lim",
      2
     ]
    }
   }
  ]
 }
}