{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		},
		"classnamespace" : "box",
		"rect" : [ 100.0, 100.0, 600.0, 500.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [
			{
				"box" : {
					"id" : "obj-1",
					"maxclass" : "textbutton",
					"text" : "1. Seleccionar archivo ANTIGUO",
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 20.0, 250.0, 30.0 ],
					"patching_rect" : [ 20.0, 20.0, 250.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ]
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "newobj",
					"text" : "opendialog",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 20.0, 60.0, 69.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-8",
					"maxclass" : "newobj",
					"text" : "prepend old_file",
					"patching_rect" : [ 20.0, 100.0, 100.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-4",
					"maxclass" : "textbutton",
					"text" : "2. Seleccionar archivo NUEVO",
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 60.0, 250.0, 30.0 ],
					"patching_rect" : [ 320.0, 20.0, 250.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ]
				}
			},
			{
				"box" : {
					"id" : "obj-5",
					"maxclass" : "newobj",
					"text" : "opendialog",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 320.0, 60.0, 69.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-15",
					"maxclass" : "newobj",
					"text" : "prepend new_file",
					"patching_rect" : [ 320.0, 100.0, 100.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-21",
					"maxclass" : "toggle",
					"presentation" : 1,
					"presentation_rect" : [ 40.0, 100.0, 24.0, 24.0 ],
					"patching_rect" : [ 20.0, 150.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}
			},
			{
				"box" : {
					"id" : "obj-22",
					"maxclass" : "toggle",
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 100.0, 24.0, 24.0 ],
					"patching_rect" : [ 100.0, 150.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}
			},
			{
				"box" : {
					"id" : "obj-23",
					"maxclass" : "toggle",
					"presentation" : 1,
					"presentation_rect" : [ 240.0, 100.0, 24.0, 24.0 ],
					"patching_rect" : [ 180.0, 150.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}
			},
			{
				"box" : {
					"id" : "obj-24",
					"maxclass" : "toggle",
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 100.0, 24.0, 24.0 ],
					"patching_rect" : [ 260.0, 150.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}
			},
			{
				"box" : {
					"id" : "obj-41",
					"maxclass" : "newobj",
					"text" : "prepend toggle 0",
					"patching_rect" : [ 20.0, 190.0, 60.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-42",
					"maxclass" : "newobj",
					"text" : "prepend toggle 1",
					"patching_rect" : [ 100.0, 190.0, 60.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-43",
					"maxclass" : "newobj",
					"text" : "prepend toggle 2",
					"patching_rect" : [ 180.0, 190.0, 60.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-44",
					"maxclass" : "newobj",
					"text" : "prepend toggle 3",
					"patching_rect" : [ 260.0, 190.0, 60.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-7",
					"maxclass" : "textbutton",
					"text" : "3. Migrar Seleccionados",
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 140.0, 250.0, 40.0 ],
					"patching_rect" : [ 350.0, 190.0, 120.0, 40.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ]
				}
			},
			{
				"box" : {
					"id" : "obj-10",
					"maxclass" : "message",
					"text" : "migrate",
					"patching_rect" : [ 350.0, 230.0, 50.0, 22.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-11",
					"maxclass" : "newobj",
					"text" : "node.script migrador_presets.js",
					"patching_rect" : [ 20.0, 280.0, 200.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-12",
					"maxclass" : "newobj",
					"text" : "route success error set_toggle",
					"patching_rect" : [ 20.0, 320.0, 200.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-31",
					"maxclass" : "newobj",
					"text" : "route 0 1 2 3",
					"patching_rect" : [ 350.0, 360.0, 100.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-13",
					"maxclass" : "message",
					"text" : "set $1",
					"patching_rect" : [ 20.0, 360.0, 50.0, 22.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}
			},
			{
				"box" : {
					"id" : "obj-14",
					"maxclass" : "comment",
					"text" : "Esperando acción...",
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 200.0, 560.0, 40.0 ],
					"patching_rect" : [ 20.0, 400.0, 300.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}
			},
			{
				"box" : {
					"id" : "obj-51",
					"maxclass" : "comment",
					"text" : "M1",
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 100.0, 24.0, 24.0 ],
					"patching_rect" : [ 20.0, 130.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}
			},
			{
				"box" : {
					"id" : "obj-52",
					"maxclass" : "comment",
					"text" : "M2",
					"presentation" : 1,
					"presentation_rect" : [ 115.0, 100.0, 24.0, 24.0 ],
					"patching_rect" : [ 100.0, 130.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}
			},
			{
				"box" : {
					"id" : "obj-53",
					"maxclass" : "comment",
					"text" : "M3",
					"presentation" : 1,
					"presentation_rect" : [ 215.0, 100.0, 24.0, 24.0 ],
					"patching_rect" : [ 180.0, 130.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}
			},
			{
				"box" : {
					"id" : "obj-54",
					"maxclass" : "comment",
					"text" : "M4",
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 100.0, 24.0, 24.0 ],
					"patching_rect" : [ 260.0, 130.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}
			}
		],
		"lines" : [
			{
				"patchline" : { "source" : [ "obj-1", 0 ], "destination" : [ "obj-2", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-2", 0 ], "destination" : [ "obj-8", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-8", 0 ], "destination" : [ "obj-11", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-4", 0 ], "destination" : [ "obj-5", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-5", 0 ], "destination" : [ "obj-15", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-15", 0 ], "destination" : [ "obj-11", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-21", 0 ], "destination" : [ "obj-41", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-22", 0 ], "destination" : [ "obj-42", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-23", 0 ], "destination" : [ "obj-43", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-24", 0 ], "destination" : [ "obj-44", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-41", 0 ], "destination" : [ "obj-11", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-42", 0 ], "destination" : [ "obj-11", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-43", 0 ], "destination" : [ "obj-11", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-44", 0 ], "destination" : [ "obj-11", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-7", 0 ], "destination" : [ "obj-10", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-10", 0 ], "destination" : [ "obj-11", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-11", 0 ], "destination" : [ "obj-12", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-12", 0 ], "destination" : [ "obj-13", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-12", 1 ], "destination" : [ "obj-13", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-12", 2 ], "destination" : [ "obj-31", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-31", 0 ], "destination" : [ "obj-21", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-31", 1 ], "destination" : [ "obj-22", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-31", 2 ], "destination" : [ "obj-23", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-31", 3 ], "destination" : [ "obj-24", 0 ] }
			},
			{
				"patchline" : { "source" : [ "obj-13", 0 ], "destination" : [ "obj-14", 0 ] }
			}
		]
	}
}
