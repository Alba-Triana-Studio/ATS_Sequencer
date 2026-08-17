{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 95.0, 925.0, 789.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 264.434981999999991, 336.440979000000027, 100.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 332.205024087731317, 771.0, 100.0, 19.0 ],
					"text" : "Freq. Dom (Hz)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.434981999999991, 321.440979000000027, 100.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 332.205024087731317, 389.0, 100.0, 19.0 ],
					"text" : "Freq. Dom (Hz)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 234.434981999999991, 306.440979000000027, 100.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 332.205024087731317, 194.0, 100.0, 19.0 ],
					"text" : "Freq. Dom (Hz)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 219.434981999999991, 291.440979000000027, 100.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 332.205024087731317, 2.0, 100.0, 19.0 ],
					"text" : "Freq. Dom (Hz)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-74",
					"linecount" : 29,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2891.550100482788366, 482.15008499999999, 252.0, 590.0 ],
					"presentation" : 1,
					"presentation_linecount" : 11,
					"presentation_rect" : [ 707.0, 1031.0, 726.0, 228.0 ],
					"text" : "PLAY\n- Play: Reproduce la fila desde la celda seleccionada.\n- Play all sequence: Reproduce la fila de la celda seleccionada DESDE EL PRINCIPIO\n- Play Full Piece: Reproduce la fila \"Play Full Piece\" desde el principio si no esta vacia.\n- Play bar: Al seleccionarlo se reproduce cada celda que clickeas.\n\nEDIT\n- Para editar, asegurate de seleccionar la curva que quieres editar haciendo click en \n  FR o    AMP en el boton azul/fuscia al lado derecho de cada curva.\n- Adjutst to time: Ajusta las graficas al time domine, grafica por grafica o todas a la vez.\n-Hz: Global / Hz: Own: Cambia del dominio de frecuencia global al local."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"format" : 6,
					"id" : "obj-45",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 350.868713000000014, 978.387755999999968, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.0, 175.0, 29.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-226",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 265.87063599999999, 445.940979000000027, 50.564338999999997, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 232.5, 192.5, 45.0, 22.0 ],
					"text" : "PLAY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 235.489039999999989, 741.386648300000047, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 606.0, 42.0, 20.0 ],
					"text" : "---",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-467",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1955.685917701827975, 1135.053711000000021, 94.0, 22.0 ],
					"text" : "scale 0. 1. -20 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-450",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1836.845336999999972, 1135.053711000000021, 94.0, 22.0 ],
					"text" : "scale 0. 1. -20 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-395",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1713.039999999999964, 759.419999999999959, 29.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-386",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1952.592573732711799, 1087.341757893562317, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-385",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1962.009033000000272, 772.151888608932495, 43.0, 22.0 ],
					"text" : "+~ 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-383",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1907.594911694526672, 772.151888608932495, 43.0, 22.0 ],
					"text" : "+~ 0.1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-350",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1900.41866025386048, 1087.341757893562317, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-345",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 2059.139245867729187, 819.000000000000114, 156.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_VST3:/MAnalyzer", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"text" : "vst~ C74_VST3:/MAnalyzer",
					"varname" : "vst~[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-343",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1584.84521500000028, 819.000000000000114, 250.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_VST3:/Youlean Loudness Meter 2", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"text" : "vst~ \"C74_VST3:/Youlean Loudness Meter 2\"",
					"varname" : "vst~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-361",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 74.666666984558105, 3834.666780948638916, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-372",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 75.666666984558105, 3910.666780948638916, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-384",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 10.666666984558105, 3952.666780948638916, 83.5, 23.0 ],
					"text" : "- 5.7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-333",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 99.607201000000003, 548.15002400000003, 49.0, 22.0 ],
					"text" : "r preset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-328",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 144.0, 3778.0, 57.0, 22.0 ],
					"text" : "s luz frec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-466",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.909091830253601, 2550.279745817184448, 76.0, 22.0 ],
					"text" : "s Mslide frec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-441",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.171546999999997, 463.369201999999973, 61.0, 22.0 ],
					"text" : "s clockms"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-476",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.607238999999993, 35.140952999999996, 145.690802274353018, 33.0 ],
					"text" : "click to open time counter\nand frec difference "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-464",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 577.0, 87.0, 816.0, 605.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 268.40625, 38.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 77.125, 244.720982691051631, 38.0, 18.0 ],
									"text" : "bar",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -28.663555324077606, 260.9375, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 30.0,
									"format" : 6,
									"id" : "obj-64",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 114.0, 251.1224065721035, 79.0, 42.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -23.194805324077606, 222.65625, 49.0, 22.0 ],
									"text" : "/ 28125"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-61",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 252.34375, 712.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.39482641886525, 581.25, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 241.39482641886525, 645.898413308601448, 73.0, 22.0 ],
									"text" : "counter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 495.431813418865204, 564.246558308601379, 47.0, 34.0 ],
									"text" : "Loop\n"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-647",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 545.931813418865204, 645.898413308601448, 80.334350999999998, 20.0 ],
									"text" : "Loop point"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-437",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 431.23857641886525, 595.246558308601379, 32.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-436",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 545.931813418865204, 769.052100308601439, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-434",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 509.931813418865204, 696.898413308601448, 32.5, 23.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-433",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 509.931813418865204, 645.898413308601448, 36.0, 22.0 ],
									"text" : "sel 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-321",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 431.23857641886525, 803.157325308601344, 69.0, 22.0 ],
									"text" : "s playbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-320",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 431.23857641886525, 757.25937530860142, 32.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-318",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 444.73857641886525, 781.500342308601375, 43.0, 22.0 ],
									"text" : "s next"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-301",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 431.23857641886525, 636.348609308601453, 32.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-299",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 431.23857641886525, 669.898413308601448, 53.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-300",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 431.23857641886525, 696.898413308601448, 45.0, 23.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-290",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 431.23857641886525, 727.861426308601381, 73.0, 22.0 ],
									"text" : "counter"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 635.766164418865287, 683.259986308601356, 41.0, 22.0 ],
									"text" : "r zero"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 593.766164418865287, 781.500342308601375, 32.5, 22.0 ],
									"text" : "sel"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 24.0,
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-17",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 593.766164418865287, 716.395362308601307, 105.0, 35.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 487.704436999999984, 57.676636000000002, 105.0, 35.0 ],
									"textcolor" : [ 0.0, 0.501961, 1.0, 1.0 ],
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 765.512075588107109, 325.60450538039413, 65.458934754133224, 20.0 ],
									"text" : "ms to time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 791.553140833973885, 83.864743053913116, 65.458934754133224, 20.0 ],
									"text" : "time to ms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 552.587714195251465, 435.227268576622009, 39.0, 22.0 ],
									"text" : "- 76.2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 499.431813418865204, 435.227268576622009, 39.0, 22.0 ],
									"text" : "- 38.1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-48",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 114.0, 430.022527515888214, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.805194675922394, 430.022527515888214, 60.194805324077606, 18.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 61.50000011920929, 430.022527515888214, 38.0, 29.0 ],
									"text" : "Luz ≠ 76.2",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 549.087714195251465, 121.59090793132782, 49.0, 22.0 ],
									"text" : "- 10000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 765.512075588107109, 368.817812999488979, 38.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 170.060601115226746, 617.7862866723558, 38.0, 18.0 ],
									"text" : "ms"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 945.542347475886345, 513.511010667087703, 25.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 350.060601115226746, 743.7862866723558, 25.0, 18.0 ],
									"text" : "ms"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-32",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 945.542347475886345, 493.511010667087703, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 350.060601115226746, 723.7862866723558, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 885.542347475886345, 513.511010667087703, 51.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 290.060601115226746, 743.7862866723558, 51.0, 18.0 ],
									"text" : "seconds"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-34",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 885.542347475886345, 493.511010667087703, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 290.060601115226746, 723.7862866723558, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 825.542347475886345, 513.511010667087703, 49.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 230.060601115226746, 743.7862866723558, 49.0, 18.0 ],
									"text" : "minutes"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-36",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 825.542347475886345, 493.511010667087703, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 230.060601115226746, 723.7862866723558, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 765.542347475886345, 513.511010667087703, 38.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 170.060601115226746, 743.7862866723558, 38.0, 18.0 ],
									"text" : "hours"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-38",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 765.542347475886345, 493.511010667087703, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 170.060601115226746, 723.7862866723558, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 765.512075588107109, 454.601914545299678, 199.0, 20.0 ],
									"text" : "unpack 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-40",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 765.512075588107109, 347.60450538039413, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 765.512075588107109, 424.601914545299678, 169.0, 20.0 ],
									"text" : "translate @in ms @out hh:mm:ss"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 796.782608211040497, 108.391307711601257, 55.0, 22.0 ],
									"text" : "00:09:22"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 838.782608211040497, 251.891307711601257, 102.0, 22.0 ],
									"text" : "562000."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 757.782608211040497, 167.995813091995387, 167.0, 20.0 ],
									"text" : "translate @in hh:mm:ss @out ms"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-18",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 761.782608211040497, 251.891307711601257, 67.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.805194675922394, 403.886164128780365, 60.194805324077606, 18.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 192.070174694061279, 393.859645366668701, 38.0, 29.0 ],
									"text" : "Luz ≠ 38.1",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 67.859649181365967, 371.421049118041992, 44.140350818634033, 18.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 32.513286499999978, 2197.568041600074594, 38.0, 29.0 ],
									"text" : "Mslide",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-12",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 114.0, 403.886164128780365, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 114.0, 368.421049118041992, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 535.087714195251465, 398.245610237121582, 55.0, 22.0 ],
									"text" : "r luz frec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 535.087714195251465, 364.912277221679688, 74.0, 22.0 ],
									"text" : "r Mslide frec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 173.627232691051631, 38.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.513286499999978, 2182.568041600074594, 38.0, 18.0 ],
									"text" : "ms",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-451",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 467.0, 57.217391133308411, 150.0, 20.0 ],
									"text" : "clock ms to h:m:s:ms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-395",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 467.0, 80.959137737751007, 59.0, 22.0 ],
									"text" : "r clockms"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-338",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 325.60450538039413, 25.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 182.513286499999964, 2167.568041600074594, 25.0, 18.0 ],
									"text" : "ms",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-343",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 294.0, 305.60450538039413, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 182.513286499999964, 2147.568041600074594, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-345",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 234.0, 325.60450538039413, 51.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 122.513286499999964, 2167.568041600074594, 51.0, 18.0 ],
									"text" : "seconds",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-347",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 234.0, 305.60450538039413, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 122.513286499999964, 2147.568041600074594, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-350",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 174.0, 325.60450538039413, 49.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.513286499999978, 2167.568041600074594, 49.0, 18.0 ],
									"text" : "minutes",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-359",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 174.0, 305.60450538039413, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.513286499999978, 2147.568041600074594, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-361",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 114.0, 325.60450538039413, 38.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.513286499999978, 2167.568041600074594, 38.0, 18.0 ],
									"text" : "hours",
									"textcolor" : [ 0.694117647058824, 0.690196078431373, 0.690196078431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-372",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 114.0, 305.60450538039413, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.513286499999978, 2147.568041600074594, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-382",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 467.0, 207.60450538039413, 199.0, 20.0 ],
									"text" : "unpack 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-383",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 114.0, 173.627232691051631, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 10.0,
									"id" : "obj-384",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 467.0, 177.60450538039413, 169.0, 20.0 ],
									"text" : "translate @in ms @out hh:mm:ss"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.255814015865326, 153.491631608009357, 383.80073082447052, 347.278534591197968 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 0.0, 128.0, 128.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-290", 0 ],
									"midpoints" : [ 603.266164418865287, 810.500342308601375, 514.002248418865292, 810.500342308601375, 514.002248418865292, 724.215064308601313, 440.73857641886525, 724.215064308601313 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-320", 0 ],
									"source" : [ "obj-290", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-300", 0 ],
									"source" : [ "obj-299", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-290", 0 ],
									"midpoints" : [ 440.73857641886525, 716.052100308601325, 440.73857641886525, 716.052100308601325 ],
									"source" : [ "obj-300", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-299", 0 ],
									"source" : [ "obj-301", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-318", 0 ],
									"source" : [ "obj-320", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-321", 0 ],
									"source" : [ "obj-320", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-343", 0 ],
									"source" : [ "obj-382", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-347", 0 ],
									"source" : [ "obj-382", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-359", 0 ],
									"source" : [ "obj-382", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-372", 0 ],
									"source" : [ "obj-382", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-384", 0 ],
									"order" : 0,
									"source" : [ "obj-383", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"order" : 1,
									"source" : [ "obj-383", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-382", 0 ],
									"source" : [ "obj-384", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-39", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-39", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-383", 0 ],
									"source" : [ "obj-395", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-434", 0 ],
									"source" : [ "obj-433", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-301", 0 ],
									"midpoints" : [ 519.431813418865204, 747.052100308601439, 579.931691418865285, 747.052100308601439, 579.931691418865285, 714.052100308601325, 579.931691418865285, 714.052100308601325, 579.931691418865285, 633.052100308601325, 440.73857641886525, 633.052100308601325 ],
									"source" : [ "obj-434", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-301", 0 ],
									"source" : [ "obj-437", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-433", 0 ],
									"midpoints" : [ 440.73857641886525, 622.052100308601325, 519.431813418865204, 622.052100308601325 ],
									"source" : [ "obj-437", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
 ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-38", "obj-35", "obj-36", "obj-37", "obj-33", "obj-34", "obj-31", "obj-32" ]
							}
, 							{
								"boxes" : [ "obj-361", "obj-372", "obj-359", "obj-347", "obj-343", "obj-338", "obj-345", "obj-350" ]
							}
, 							{
								"boxes" : [ "obj-30", "obj-40" ]
							}
 ]
					}
,
					"patching_rect" : [ 189.184981999999991, 63.353693445923, 75.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p prespopup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-336",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 214.434981999999991, 845.390088558197021, 58.0, 22.0 ],
					"text" : "s preset#"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-269",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 297.0, 1043.0, 69.0, 22.0 ],
					"text" : "s rectrigger"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-358",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3075.435370789001354, 1281.907104000000118, 60.0, 22.0 ],
					"text" : "s #exact4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-353",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3075.435370789001354, 1231.240417000000207, 60.0, 22.0 ],
					"text" : "s #exact3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-351",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3068.44928678900169, 1173.907104000000118, 60.0, 22.0 ],
					"text" : "s #exact2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-349",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3068.44928678900169, 1123.053711000000021, 60.0, 22.0 ],
					"text" : "s #exact1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-283",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.464508000000023, 3524.213378999999804, 55.0, 22.0 ],
					"text" : "r 4Fpitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-275",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.318726000000026, 2358.883788999999979, 55.0, 22.0 ],
					"text" : "r 3Fpitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-274",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.604522999999972, 1253.353759999999966, 55.0, 22.0 ],
					"text" : "r 2Fpitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 324.384978999999987, 108.468269000000006, 55.0, 22.0 ],
					"text" : "r 1Fpitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-250",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1518.333374000000049, 500.007323999999983, 102.0, 22.0 ],
					"text" : "send~ #rec_out_r"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1392.333374000000049, 500.007323999999983, 101.0, 22.0 ],
					"text" : "send~ #rec_out_l"
				}

			}
, 			{
				"box" : 				{
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-131",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 63.404465000000002, 456.440979000000027, 41.0, 41.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-260",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1522.632812000000058, 231.394222340644831, 102.0, 22.0 ],
					"text" : "receive~ mixout4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-259",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1477.442017000000078, 189.940978999999999, 102.0, 22.0 ],
					"text" : "receive~ mixout3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-258",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1439.632812000000058, 157.741028, 102.0, 22.0 ],
					"text" : "receive~ mixout2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-256",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 0,
					"patching_rect" : [ 1544.669799999999896, 456.440979000000027, 97.0, 22.0 ],
					"text" : "dac~ 1 2 3 4 5 6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-163",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 640.636229999999955, 1017.604979999999955, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-151",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 658.453979000000004, 1121.305053999999927, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 654.136229999999955, 1092.890625, 36.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 640.636229999999955, 1063.053711000000021, 32.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-146",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 604.923156999999946, 1121.305053999999927, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 604.923156999999946, 1093.890625, 36.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 591.423156999999946, 1064.053711000000021, 32.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-139",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 554.531006000000048, 1121.305053999999927, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 554.531006000000048, 1093.890625, 36.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 541.031006000000048, 1064.053711000000021, 32.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-136",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.138854999999978, 1121.305053999999927, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 504.138854999999978, 1093.890625, 36.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 490.638824, 1064.053711000000021, 32.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-135",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 389.854522999999972, 1017.604979999999955, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-132",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 453.746673999999985, 1121.305053999999927, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 453.746673999999985, 1093.890625, 36.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 440.246673999999985, 1064.053711000000021, 32.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-124",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 591.423156999999946, 1017.604979999999955, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-123",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.031006000000048, 1017.604979999999955, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-120",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 490.638824, 1017.604979999999955, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-119",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.246673999999985, 1017.604979999999955, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 403.354522999999972, 1121.305053999999927, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-640",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 403.354522999999972, 1093.890625, 36.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-639",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 389.854522999999972, 1064.053711000000021, 32.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-118",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3009.392454280700804, 228.595892722595238, 66.0, 22.0 ],
					"text" : "Tuning 2",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-117",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3010.723387280700535, 194.998358722595242, 66.0, 22.0 ],
					"text" : "Tuning 1",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-116",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 541.031006000000048, 1038.053711000000021, 20.0, 20.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-113",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 490.638824, 1038.053711000000021, 20.0, 20.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 4,
					"outlettype" : [ "int", "bang", "bang", "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 675.0, 84.0, 570.0, 633.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 654.803947153877402, 331.0, 81.0, 48.0 ],
									"text" : "conectar counter to tbi for loop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 735.0, 475.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 699.0, 521.0, 150.0, 48.0 ],
									"text" : "volver a 421 preset init y ti de la izq\n"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-93",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 843.664359653877227, 405.946808457374516, 80.334350999999998, 34.0 ],
									"text" : "paso preset manual"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-92",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 941.165886153877068, 289.656188158134512, 80.334350999999998, 34.0 ],
									"text" : "paso a preset final"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-91",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 941.165886153877068, 247.954060582260183, 80.334350999999998, 20.0 ],
									"text" : "preset inicial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1132.840424656867981, 301.021277904510498, 41.0, 20.0 ],
									"text" : "#reps"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1128.340424656867981, 269.659576416015625, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1124.638298153877258, 181.638299226760864, 54.0, 20.0 ],
									"text" : "reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1098.638298153877258, 179.638299226760864, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-83",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 909.665886153877068, 247.954060582260183, 29.5, 23.0 ],
									"text" : "421"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-82",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 843.664359653877227, 270.07108190451055, 30.33435099999997, 20.0 ],
									"text" : "143"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 909.665886153877068, 289.656188158134512, 29.5, 22.0 ],
									"text" : "440"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1056.638298153877258, 338.932044904510462, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1056.638298153877258, 307.638298869132996, 34.0, 22.0 ],
									"text" : "sel 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1056.638298153877258, 269.659576416015625, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 1056.638298153877258, 218.67313290451051, 69.0, 22.0 ],
									"text" : "counter 0 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 737.138298153877258, 120.276597023010254, 56.0, 22.0 ],
									"text" : "r preset#"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 732.882979035377502, 54.528529492954249, 47.0, 20.0 ],
									"text" : "Loop"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-647",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 858.831535153877212, 217.57108190451055, 80.334350999999998, 20.0 ],
									"text" : "Loop point"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-437",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 737.138298153877258, 161.021277904510498, 32.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-436",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 820.581535153877212, 405.946808457374516, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-434",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 815.831535153877212, 268.57108190451055, 29.5, 23.0 ],
									"text" : "421"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-433",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 815.831535153877212, 217.57108190451055, 41.0, 22.0 ],
									"text" : "sel 440"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-320",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 743.388298153877258, 357.5, 32.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-301",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 737.138298153877258, 208.021277904510555, 32.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-299",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 737.138298153877258, 241.57108190451055, 53.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-300",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 737.138298153877258, 268.57108190451055, 45.0, 23.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-290",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 737.138298153877258, 316.555371378509562, 73.0, 22.0 ],
									"text" : "counter"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 882.748710653877311, 338.932044904510462, 32.5, 22.0 ],
									"text" : "sel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 651.45159455625901, 76.357068578002924, 37.0, 22.0 ],
									"text" : "t i 187"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 651.45159455625901, -8.0, 23.0, 20.0 ],
									"text" : "T4"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-31",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 651.45159455625901, 14.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-25",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 589.206158778762756, 76.357068578002924, 35.0, 22.0 ],
									"text" : "t i 102"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-43",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 528.5, 76.357068578002924, 35.0, 22.0 ],
									"text" : "t i 181"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 471.535945556259094, 76.357068578002924, 35.0, 22.0 ],
									"text" : "t i 90"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-38",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.75, 380.5, 53.5, 34.0 ],
									"text" : "Toggle Play"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-37",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 32.0, 351.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-36",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, -4.0, 70.0, 20.0 ],
									"text" : "Clock"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 185.0, -4.0, 70.0, 20.0 ],
									"text" : "Time Sel"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 207.5, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 291.0, 385.5, 56.0, 34.0 ],
									"text" : "Preset select"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 192.0, 380.5, 56.0, 34.0 ],
									"text" : "Clock Reset"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 86.5, 380.5, 70.0, 20.0 ],
									"text" : "Playbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-358",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 32.0, 170.563599000000011, 35.0, 22.0 ],
									"text" : "t i b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 589.206158778762756, -8.0, 28.085106611251831, 20.0 ],
									"text" : "T3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 528.5, -8.0, 26.0, 20.0 ],
									"text" : "T2 "
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 589.206158778762756, 14.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 471.535945556259094, -8.0, 25.0, 20.0 ],
									"text" : "T1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 333.5, -4.0, 60.0, 20.0 ],
									"text" : "Full piece"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 264.5, -4.0, 70.0, 20.0 ],
									"text" : "Multimode"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 528.5, 14.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 471.535945556259094, 14.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 346.5, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 275.5, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 291.514038000000028, 356.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 197.514037999999999, 351.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 98.0, 351.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 0.0,
									"bgcolor" : [ 0.4, 0.4, 1, 0.3 ],
									"border" : 1,
									"id" : "obj-202",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 715.861702561378479, 54.528529492954249, 475.872337937355042, 399.276593804359436 ],
									"presentation" : 1,
									"presentation_rect" : [ 18.144573000000001, 771.91839600000003, 140.924376999999993, 490.843871999999976 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-seq-rstart",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 430.0, 250.0, 110.0, 22.0 ],
									"text" : "r seqrange_start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-seq-rend",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 560.0, 250.0, 110.0, 22.0 ],
									"text" : "r seqrange_end"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-seq-startmsg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 215.0, 40.0, 22.0 ],
									"text" : "421"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-stop-armdel",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 620.0, 330.0, 40.0, 22.0 ],
									"text" : "del 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-stop-arm",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 620.0, 360.0, 30.0, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-stop-gate",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 560.0, 400.0, 40.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-stop-disarm",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 360.0, 30.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-stop-ssend",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 560.0, 440.0, 120.0, 22.0 ],
									"text" : "s seqend_reached"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"midpoints" : [ 217.0, 190.966022452255231, 905.748710653877311, 190.966022452255231 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-437", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 614.706158778762756, 340.210448999999983, 301.014038000000028, 340.210448999999983 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 598.706158778762756, 341.710448999999983, 41.5, 341.710448999999983 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-290", 0 ],
									"midpoints" : [ 892.248710653877311, 382.173010904510534, 820.093459492752118, 382.173010904510534, 820.093459492752118, 306.526030998783142, 746.638298153877258, 306.526030998783142 ],
									"order" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-stop-gate", 1 ],
									"order" : 1,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-320", 0 ],
									"source" : [ "obj-290", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-300", 0 ],
									"source" : [ "obj-299", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-290", 0 ],
									"midpoints" : [ 746.638298153877258, 287.72476890451054, 746.638298153877258, 287.72476890451054 ],
									"source" : [ "obj-300", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-299", 0 ],
									"source" : [ "obj-301", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 752.888298153877258, 381.18303093775944, 441.0, 381.18303093775944, 441.0, 340.0, 107.5, 340.0 ],
									"order" : 1,
									"source" : [ "obj-320", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 0,
									"source" : [ "obj-320", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 752.888298153877258, 430.617022037506104, 258.0, 430.617022037506104, 258.0, 345.0, 207.014037999999999, 345.0 ],
									"order" : 0,
									"source" : [ "obj-320", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 766.388298153877258, 392.885158513633769, 455.007019000000014, 392.885158513633769, 455.007019000000014, 345.0, 301.014038000000028, 345.0 ],
									"order" : 1,
									"source" : [ "obj-320", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 678.95159455625901, 341.21044900000004, 301.014038000000028, 341.21044900000004 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 660.95159455625901, 333.0, 347.0, 333.0, 347.0, 346.0, 41.5, 346.0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"midpoints" : [ 130.5, 198.086505452255267, 892.248710653877311, 198.086505452255267 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-358", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-seq-startmsg", 0 ],
									"source" : [ "obj-358", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 285.0, 321.5, 41.5, 321.5 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 497.035945556259094, 334.71044900000004, 301.014038000000028, 334.71044900000004 ],
									"source" : [ "obj-42", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 481.035945556259094, 327.710448999999983, 41.5, 327.710448999999983 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 554.0, 340.71044900000004, 301.014038000000028, 340.71044900000004 ],
									"source" : [ "obj-43", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 538.0, 308.710448999999983, 41.5, 308.710448999999983 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-434", 0 ],
									"order" : 1,
									"source" : [ "obj-433", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"midpoints" : [ 825.331535153877212, 243.57108190451055, 945.734916653877235, 243.57108190451055, 945.734916653877235, 200.67313290451051, 1066.138298153877258, 200.67313290451051 ],
									"order" : 0,
									"source" : [ "obj-433", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-stop-armdel", 0 ],
									"order" : 2,
									"source" : [ "obj-433", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-301", 0 ],
									"midpoints" : [ 825.331535153877212, 299.249591318431897, 802.852687839736973, 299.249591318431897, 802.852687839736973, 285.72476890451054, 802.051269416084324, 285.72476890451054, 802.051269416084324, 204.72476890451054, 746.638298153877258, 204.72476890451054 ],
									"source" : [ "obj-434", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-290", 0 ],
									"midpoints" : [ 830.081535153877212, 428.499999999999943, 816.750873830562455, 428.499999999999943, 816.750873830562455, 305.555371378509562, 746.638298153877258, 305.555371378509562 ],
									"source" : [ "obj-436", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-301", 0 ],
									"source" : [ "obj-437", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-433", 0 ],
									"midpoints" : [ 746.638298153877258, 194.826819904510501, 825.331535153877212, 194.826819904510501 ],
									"source" : [ "obj-437", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"midpoints" : [ 356.0, 106.710448999999997, 41.5, 106.710448999999997 ],
									"order" : 3,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"midpoints" : [ 356.0, 145.477030291130092, 919.165886153877068, 145.477030291130092 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"midpoints" : [ 356.0, 111.319149613380432, 1108.138298153877258, 111.319149613380432 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-stop-disarm", 0 ],
									"order" : 2,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"midpoints" : [ 1066.138298153877258, 372.932044904510462, 1029.886134440750084, 372.932044904510462, 1029.886134440750084, 281.656188158134512, 919.165886153877068, 281.656188158134512 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-434", 1 ],
									"midpoints" : [ 919.165886153877068, 326.656188158134512, 877.498710653877197, 326.656188158134512, 877.498710653877197, 257.57108190451055, 835.831535153877212, 257.57108190451055 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-434", 1 ],
									"midpoints" : [ 919.165886153877068, 280.954060582260183, 877.498710653877197, 280.954060582260183, 877.498710653877197, 257.57108190451055, 835.831535153877212, 257.57108190451055 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 3 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 1 ],
									"midpoints" : [ 1137.840424656867981, 299.14893764257431, 1081.138298153877258, 299.14893764257431 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-433", 1 ],
									"order" : 1,
									"source" : [ "obj-seq-rend", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 1 ],
									"order" : 0,
									"source" : [ "obj-seq-rend", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 1 ],
									"order" : 0,
									"source" : [ "obj-seq-rstart", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-seq-startmsg", 1 ],
									"order" : 1,
									"source" : [ "obj-seq-rstart", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-seq-startmsg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-stop-gate", 0 ],
									"source" : [ "obj-stop-arm", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-stop-arm", 0 ],
									"source" : [ "obj-stop-armdel", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-stop-gate", 0 ],
									"source" : [ "obj-stop-disarm", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-stop-disarm", 0 ],
									"order" : 1,
									"source" : [ "obj-stop-gate", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-stop-ssend", 0 ],
									"order" : 0,
									"source" : [ "obj-stop-gate", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 327.304686999999944, 1156.553711000000021, 369.668273999999997, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p mastertoggles"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-110",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.953979000000004, 562.375977000000034, 259.0, 104.0 ],
					"text" : "Preset panel, First rows are organized as modes (cymbal resonating frecuencies). Columns organized as different versions of those modes.\n\nLast rows store full piece and tuning sequences."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-104",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1847.470702999999958, 573.15008499999999, 232.0, 64.0 ],
					"text" : "Sets patch to stereo mode. Stereo mode outputs same sequence in both channels. Default mode outputs signal in left channel only."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-102",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2072.409667999999783, 423.041016000000013, 222.0, 37.0 ],
					"text" : "Monitors each channel output, VU scale."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-101",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1544.669799999999896, 539.65002400000003, 222.0, 51.0 ],
					"text" : "All synthesizers are handled inside soundmachine. CMD + double click on box to access it."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-100",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 48.171546999999997, 367.440979000000027, 143.0, 74.0 ],
					"text" : "Master clock displays current time spent. Outputs data to different objects to activate loops or stop sequences."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-98",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 768.039460598411551, 1121.553711000000021, 127.0, 91.0 ],
					"text" : "Selects between different playing modes. CMD + Double click on [p mastertoggles] to access subpatcher"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-87",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1368.977783000000045, 745.052062999999976, 222.0, 37.0 ],
					"text" : "Amplitude secuencer. X = Time, Y = Amplitude."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-86",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1375.632812000000058, 316.140990999999985, 217.0, 37.0 ],
					"text" : "Frequency secuencer. X = Time, Y = Frequency."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 426.629974000000004, 316.140990999999985, 253.0, 91.0 ],
					"text" : "Next to each function there is are objects to monitor each synthesizer values as secuence is runing. Pitch displays current frecuency and approximate tempered note. Amplitude displays current volume value in a range between 0 and 1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 426.629974000000004, 179.541091999999992, 217.0, 78.0 ],
					"text" : "Within Setup panel different secuence parameters can be configured, such as Secuence duration (time domain) and frecuency domain"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1238.539917000000059, -16.501747000000002, 162.0, 78.0 ],
					"text" : "Drawing panel, values written in the number boxes set coordinates  to draw points into the sequence."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 334.334991000000002, 3.498253, 594.248962000000006, 53.0 ],
					"text" : "Patch is comprised of 4 sequencers, each handle Frequency and Amplitude of a synthesizer over time. All four share ONE preset matrix (Oscillator 1) and ONE play button: every preset stores the 4 channels and plays them together. Each channel keeps its own MUTE and SOLO."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-645",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.227783000000045, 3464.713378999999804, 74.0, 22.0 ],
					"text" : "minimum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-646",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.227783000000045, 3439.213378999999804, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-647",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.227783000000045, 3409.070800999999847, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-664",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 827.964600000000019, 4028.282227000000148, 53.0, 35.0 ],
					"text" : "xyc 0 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-668",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 974.964477999999986, 3952.782227000000148, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-669",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 910.214600000000019, 3952.782227000000148, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-670",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 858.964600000000019, 3994.782227000000148, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-676",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 834.160156000000029, 3497.213378999999804, 53.0, 35.0 ],
					"text" : "xyc 0 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-680",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 981.160033999999996, 3421.713378999999804, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-681",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 916.410156000000029, 3421.713378999999804, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-682",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 865.160156000000029, 3463.713378999999804, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-704",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.032684000000017, 3716.213378999999804, 57.0, 22.0 ],
					"text" : "r 4gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-707",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1393.819823999999926, 4526.983398000000307, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-708",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1489.842529000000013, 4529.983398000000307, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-709",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1489.842529000000013, 4560.983398000000307, 50.0, 22.0 ],
					"text" : "s 4amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-710",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1451.842529000000013, 4489.983398000000307, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-711",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1357.635375999999951, 4652.895996000000196, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-712",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1393.819823999999926, 4560.983398000000307, 59.0, 22.0 ],
					"text" : "s 4gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-713",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1522.863037000000077, 4454.983398000000307, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-714",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1424.363037000000077, 4455.983398000000307, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-716",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 179.264510999999999, 4285.834472999999889, 43.0, 22.0 ],
					"text" : "del 50"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-718",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.93267800000001, 3782.213378999999804, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-719",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 302.764525999999989, 3860.013672000000042, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-726",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 222.264510999999999, 4240.834472999999889, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-730",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.264525999999989, 4115.834960999999566, 53.0, 22.0 ],
					"text" : "s mute4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-732",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.700179999999989, 3834.513672000000042, 39.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.705025518242792, 912.789494276046753, 39.0, 18.0 ],
					"text" : "MUTE"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.4, 0.4, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-733",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 252.700179999999989, 3860.013672000000042, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.75765677720733, 932.00002646446228, 20.526316523551941, 20.526316523551941 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-737",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.032684000000017, 3742.013672000000042, 60.0, 22.0 ],
					"text" : "OSCnote"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-738",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.464508000000023, 3594.013672000000042, 57.0, 22.0 ],
					"text" : "r 4gpitch"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-744",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 356.332702999999981, 4067.826172000000042, 78.0, 22.0 ],
					"text" : "receive~ 4lvl"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-745",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 334.464508000000023, 3656.213378999999804, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-746",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 338.464508000000023, 3680.013672000000042, 32.5, 22.0 ],
					"text" : "-"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-747",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 338.464508000000023, 3782.213378999999804, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-763",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 302.764525999999989, 4254.198242000000391, 41.0, 22.0 ],
					"text" : "0 150"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-764",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 287.264525999999989, 4221.334960999999566, 34.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-765",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 287.264525999999989, 4193.335449000000153, 46.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-766",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 203.264510999999999, 3860.013672000000042, 41.0, 41.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-767",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 287.264525999999989, 4287.834472999999889, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-768",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.264525999999989, 4358.834472999999889, 50.0, 22.0 ],
					"text" : "s zero4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-770",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 209.264510999999999, 3778.013672000000042, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-771",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.264510999999999, 3748.013672000000042, 124.0, 22.0 ],
					"text" : "sprintf range %ld %ld"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-772",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.264525999999933, 3699.013672000000042, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.520815038983301, 793.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-773",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 258.264525999999989, 3696.013672000000042, 36.0, 19.0 ],
					"text" : "Max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-774",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 213.264510999999999, 3699.013672000000042, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 331.415550375287012, 793.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-775",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.264510999999999, 3697.013672000000042, 37.0, 19.0 ],
					"text" : "Min"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-777",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 287.264525999999989, 3798.813477000000148, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-778",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.264510999999999, 3748.013672000000042, 44.0, 20.0 ],
					"text" : "Clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-779",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.264525999999989, 3792.013672000000042, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"hidden" : 1,
					"id" : "obj-781",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 703.26451099999997, 3619.013672000000042, 83.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-786",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.264510999999999, 3648.013672000000042, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-492",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3021.392454280700804, 283.739691722595182, 66.0, 22.0 ],
					"text" : "Tuning 3",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-491",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 591.423156999999946, 1038.053711000000021, 20.0, 20.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-505",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.194561, 208.541091999999992, 65.0, 22.0 ],
					"text" : "round 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-490",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.264557000000025, 3070.024413999999979, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-486",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 239.203979000000004, 801.262695000000008, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-482",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.255858999999987, 2296.409180000000106, 74.0, 22.0 ],
					"text" : "minimum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-483",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.255858999999987, 2270.909180000000106, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-484",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.255858999999987, 2240.766602000000148, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-479",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 741.689118598411596, 1231.604980000000069, 74.0, 22.0 ],
					"text" : "minimum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-480",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 741.689118598411596, 1259.353759999999966, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-481",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 739.689118598411596, 1203.462279999999964, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-475",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 836.360901000000013, 87.831001000000001, 74.0, 22.0 ],
					"text" : "minimum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-474",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 836.360901000000013, 60.140953000000003, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-473",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 836.360901000000013, 29.998252999999998, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-457",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 791.163452000000007, 2875.242432000000008, 53.0, 35.0 ],
					"text" : "xyc 0 0. -0.8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-461",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 994.065307999999959, 2810.615233999999873, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-462",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 929.315429999999992, 2810.615233999999873, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-463",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 878.065429999999992, 2852.61547900000005, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-443",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 801.896300999999994, 2332.661376999999902, 53.0, 35.0 ],
					"text" : "xyc 0 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-447",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 948.896178999999961, 2257.161376999999902, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-448",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 884.146300999999994, 2257.161376999999902, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-449",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 832.896300999999994, 2299.161376999999902, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-430",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 866.126098999999954, 1790.109619000000066, 53.0, 35.0 ],
					"text" : "xyc 0 0. 0.38"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-434",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1016.837279999999964, 1694.644530999999915, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-435",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 952.087401999999997, 1694.644530999999915, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-436",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 900.837401999999997, 1736.644653000000062, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-406",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 822.146178999999961, 1156.553711000000021, 53.0, 35.0 ],
					"text" : "xyc 0 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-410",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 969.146057000000042, 1081.053589000000102, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-411",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 904.396178999999961, 1081.053589000000102, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-412",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 853.146178999999961, 1123.053711000000021, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-390",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 968.072631999999999, 623.65008499999999, 53.0, 35.0 ],
					"text" : "xyc 0 0. 0.85"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-398",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1115.072509999999966, 548.15002400000003, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-399",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1050.322632000000112, 548.15002400000003, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-400",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 999.072631999999999, 590.15008499999999, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-418",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 938.322509999999966, 121.589127000000005, 60.0, 35.0 ],
					"text" : "xyc 0 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-422",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1104.322388000000046, 40.640953000000003, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-423",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1039.572509999999966, 40.640953000000003, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-424",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 988.322509999999966, 82.641013999999998, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-232",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 389.854522999999972, 1038.053711000000021, 20.0, 20.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.133333333333333, 0.462745098039216, 0.07843137254902, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-109",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.246673999999985, 1038.053711000000021, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 301.0, 261.535005912368774, 23.443939, 23.443939 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-354",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3021.392454280700804, 311.882391722595173, 66.0, 38.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 190.0, 262.535005912368774, 107.556870000000004, 22.0 ],
					"text" : "Play Full Piece",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-235",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.032714999999996, 2559.225586000000021, 57.0, 22.0 ],
					"text" : "r 3gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-238",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1399.143798999999944, 3374.173339999999826, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1495.166504000000032, 3377.173339999999826, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-240",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1495.166504000000032, 3408.173339999999826, 50.0, 22.0 ],
					"text" : "s 3amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-241",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1457.166504000000032, 3337.173339999999826, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-242",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1362.143798999999944, 3337.173339999999826, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-243",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1399.143798999999944, 3408.173339999999826, 59.0, 22.0 ],
					"text" : "s 3gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-244",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1528.187012000000095, 3302.173339999999826, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-245",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1429.687012000000095, 3303.173339999999826, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-248",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.932708999999988, 2625.225586000000021, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-249",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 302.764525999999989, 2703.025634999999966, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-257",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 222.264542000000006, 3088.024413999999979, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-262",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.264525999999989, 2963.315430000000106, 53.0, 22.0 ],
					"text" : "s mute3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-264",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.700210999999996, 2677.525634999999966, 39.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.699928486649469, 530.382004141807556, 39.0, 18.0 ],
					"text" : "MUTE"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.4, 0.4, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-265",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 252.700210999999996, 2703.025634999999966, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.916517818276361, 549.73684173822403, 20.526316523551941, 20.526316523551941 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-270",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.032714999999996, 2585.025634999999966, 60.0, 22.0 ],
					"text" : "OSCnote"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-271",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.464539000000002, 2437.025634999999966, 57.0, 22.0 ],
					"text" : "r 3gpitch"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-277",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 356.332733000000019, 2862.899902000000111, 78.0, 22.0 ],
					"text" : "receive~ 3lvl"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-278",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 334.464539000000002, 2499.225586000000021, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-279",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.464539000000002, 2531.025634999999966, 32.5, 22.0 ],
					"text" : "-"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-280",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 338.464539000000002, 2625.225586000000021, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-296",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 302.764525999999989, 3101.38818399999991, 41.0, 22.0 ],
					"text" : "0 150"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-297",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 642.641479000000004, 2844.916503999999804, 34.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-298",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 565.44348100000002, 2790.296386999999868, 46.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-299",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 203.264542000000006, 2703.025634999999966, 41.0, 41.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-300",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 287.264525999999989, 3135.024413999999979, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-301",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.264525999999989, 3206.024413999999979, 50.0, 22.0 ],
					"text" : "s zero3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-303",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 209.264542000000006, 2621.025634999999966, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-305",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.264542000000006, 2591.025634999999966, 124.0, 22.0 ],
					"text" : "sprintf range %ld %ld"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-306",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.264525999999933, 2542.025634999999966, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.783972943131403, 409.677395790815353, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-307",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 258.264525999999989, 2539.025634999999966, 36.0, 19.0 ],
					"text" : "Max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-308",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 213.264542000000006, 2542.025634999999966, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 331.848491484229044, 409.677395790815353, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-309",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.264542000000006, 2540.025634999999966, 37.0, 19.0 ],
					"text" : "Min"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-311",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 287.264525999999989, 2641.825439000000188, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-312",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.264542000000006, 2591.025634999999966, 44.0, 20.0 ],
					"text" : "Clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-313",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.264525999999989, 2635.025634999999966, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"hidden" : 1,
					"id" : "obj-315",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 703.264542000000006, 2462.025634999999966, 83.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-320",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.264542000000006, 2491.025634999999966, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 337.018707000000006, 1375.553711000000021, 57.0, 22.0 ],
					"text" : "r 2gpitch"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.903167999999994, 316.140990999999985, 57.0, 22.0 ],
					"text" : "r 1gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-208",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1401.770751999999902, 2276.832030999999915, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1497.793456999999989, 2279.832030999999915, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-210",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1497.793456999999989, 2310.832030999999915, 50.0, 22.0 ],
					"text" : "s 2amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-211",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1459.793456999999989, 2239.832030999999915, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-214",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1356.269287000000077, 2353.383788999999979, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1401.770751999999902, 2310.832030999999915, 59.0, 22.0 ],
					"text" : "s 2gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-220",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1530.813965000000053, 2204.832030999999915, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-221",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1432.313965000000053, 2205.832030999999915, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-121",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 371.918700999999999, 1441.553711000000021, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 290.750548999999978, 1519.353759999999966, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.250548999999978, 1889.932373000000098, 53.0, 22.0 ],
					"text" : "s mute2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-142",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 237.686187999999987, 1493.853759999999966, 39.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.193526864051819, 335.023022204637527, 39.0, 18.0 ],
					"text" : "MUTE"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.4, 0.4, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-143",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.686187999999987, 1519.353759999999966, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.027627795934677, 353.917030334472656, 22.105263948440552, 22.105263948440552 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 337.018707000000006, 1401.353759999999966, 60.0, 22.0 ],
					"text" : "OSCnote"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.450531000000012, 1253.353759999999966, 57.0, 22.0 ],
					"text" : "r 2gpitch"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 344.318726000000026, 1841.632323999999926, 78.0, 22.0 ],
					"text" : "receive~ 2lvl"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 322.450531000000012, 1315.553711000000021, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-157",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.450531000000012, 1347.353759999999966, 32.5, 22.0 ],
					"text" : "-"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-158",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 326.450531000000012, 1441.553711000000021, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-176",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.750548999999978, 2028.005126999999902, 41.0, 22.0 ],
					"text" : "0 150"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 275.250548999999978, 1995.141356999999971, 34.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 275.250548999999978, 1967.14147899999989, 46.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-180",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 133.991561999999988, 1508.853759999999966, 41.0, 41.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-181",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.250548999999978, 2061.641356999999971, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.250548999999978, 2132.641602000000148, 50.0, 22.0 ],
					"text" : "s zero2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 197.250533999999988, 1437.353759999999966, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 197.250533999999988, 1407.353759999999966, 124.0, 22.0 ],
					"text" : "sprintf range %ld %ld"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-186",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 250.250534000000016, 1358.353759999999966, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.987751925293878, 214.256975412368774, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-187",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 246.250533999999988, 1355.353759999999966, 36.0, 19.0 ],
					"text" : "Max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-188",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 201.250533999999988, 1358.353759999999966, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 332.205024087731317, 214.256975412368774, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-189",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 197.250533999999988, 1356.353759999999966, 37.0, 19.0 ],
					"text" : "Min"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-191",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.250548999999978, 1458.153686999999991, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-192",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 197.250533999999988, 1407.353759999999966, 44.0, 20.0 ],
					"text" : "Clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 250.250533999999988, 1451.353759999999966, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"hidden" : 1,
					"id" : "obj-195",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 691.250534000000016, 1278.353759999999966, 83.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 191.250533999999988, 1307.353759999999966, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 32.194561, 57.498252999999998, 43.0, 22.0 ],
					"text" : "del 50"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1830.331055000000106, 97.741020000000006, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-114",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1830.331055000000106, 137.741013000000009, 31.0, 22.0 ],
					"text" : "127"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1780.483887000000095, 269.741027999999972, 72.0, 22.0 ],
					"text" : "s mastervol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1798.379394999999931, 633.876281999999946, 32.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1798.379394999999931, 562.741028000000028, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1798.379394999999931, 532.741028000000028, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1798.379394999999931, 667.450072999999975, 86.0, 22.0 ],
					"text" : "s stereotoggle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 379.803161999999986, 383.640961000000004, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 1439.632812000000058, 548.15002400000003, 89.0, 22.0 ],
					"text" : "soundmachine"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 303.934998000000007, 456.440979000000027, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 146.607238999999993, 183.725539999999995, 48.0, 22.0 ],
					"text" : "+ 1000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 79.171547000000004, 57.498252999999998, 46.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.154465000000002, 141.089126999999991, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 164.607238999999993, 228.725539999999995, 30.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 114.607201000000003, 264.725554999999986, 36.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 114.607201000000003, 232.725539999999995, 29.5, 22.0 ],
					"text" : "=="
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 79.171547000000004, 12.498253, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.861227, 141.089126999999991, 37.0, 23.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 35.654460999999998, 179.541091999999992, 77.0, 23.0 ],
					"text" : "clocker 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.694571999999994, 141.089126999999991, 42.0, 23.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 289.250548999999978, 712.553649999999948, 53.0, 22.0 ],
					"text" : "s mute1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.87063599999999, 430.940979000000027, 40.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.231341326538995, 145.0, 37.0, 18.0 ],
					"text" : "MUTE"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.4, 0.4, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 253.87063599999999, 456.440979000000027, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.231340968911127, 164.210532188415527, 22.105263948440552, 22.105263948440552 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1894.585327000000007, 239.940993999999989, 51.0, 22.0 ],
					"text" : "gate~ 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1671.845215000000053, 246.858138999999994, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.477783000000045, 115.110086222709654, 102.0, 22.0 ],
					"text" : "receive~ mixout1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1786.345215000000053, 239.940993999999989, 33.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-129",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1836.845336999999972, 239.940993999999989, 34.0, 22.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "bang" ],
					"patching_rect" : [ 1711.845215000000053, 189.940978999999999, 46.0, 22.0 ],
					"text" : "t i b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1711.845215000000053, 154.440978999999999, 84.0, 22.0 ],
					"text" : "r stereotoggle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1671.845215000000053, 291.841003000000001, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.903167999999994, 351.440979000000027, 60.0, 22.0 ],
					"text" : "OSCnote"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.634978999999987, 190.440978999999999, 57.0, 22.0 ],
					"text" : "r 1gpitch"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 370.318726000000026, 645.909362999999985, 78.0, 22.0 ],
					"text" : "receive~ 1lvl"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 335.634978999999987, 256.640990999999985, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.634978999999987, 288.440979000000027, 32.5, 22.0 ],
					"text" : "-"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-94",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.334991000000002, 383.640961000000004, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 256.434998000000007, 367.440979000000027, 45.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.5, 303.0, 70.5, 19.0 ],
					"text" : "Clear Graph"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-78",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.750548999999978, 850.62634300000002, 41.0, 22.0 ],
					"text" : "0 150"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1908.509033000000045, 97.741020000000006, 150.0, 91.0 ],
					"text" : "Amplitude set in linear (0. to 1.)\n\n0 = -inf dB\n0.5 = -0.62dB\n1 = 0dB"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 289.250548999999978, 817.762695000000008, 34.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 304.750548999999978, 779.762755999999968, 46.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-59",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 159.107238999999993, 448.369201999999973, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.5, 184.0, 39.0, 39.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1407.419311999999991, 1135.053711000000021, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1503.442017000000078, 1138.053711000000021, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 289.250548999999978, 884.262695000000008, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 289.250548999999978, 955.262695000000008, 50.0, 22.0 ],
					"text" : "s zero1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1503.442017000000078, 1169.053711000000021, 50.0, 22.0 ],
					"text" : "s 1amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1465.442017000000078, 1098.053711000000021, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1370.419311999999991, 1098.053711000000021, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1407.419311999999991, 1169.053711000000021, 59.0, 22.0 ],
					"text" : "s 1gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1536.46252400000003, 1063.053711000000021, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1437.96252400000003, 1064.053711000000021, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 210.434981999999991, 374.440979000000027, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.434981999999991, 344.441010000000006, 124.0, 22.0 ],
					"text" : "sprintf range %ld %ld"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-6",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 263.43499799999995, 295.440979000000027, 46.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.5, 272.0, 46.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 259.434998000000007, 292.440979000000027, 36.0, 19.0 ],
					"text" : "Max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-5",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 214.434981999999991, 295.440979000000027, 46.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.5, 272.0, 46.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.434981999999991, 293.440979000000027, 37.0, 19.0 ],
					"text" : "Min"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.434981999999991, 276.440979000000027, 100.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.5, 253.0, 100.0, 19.0 ],
					"text" : "Freq. Domain (Hz)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 289.250548999999978, 395.240967000000012, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.434981999999991, 344.440979000000027, 44.0, 20.0 ],
					"text" : "Clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 263.434998000000007, 388.440979000000027, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 103.5, 303.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"hidden" : 1,
					"id" : "obj-12",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.434981999999991, 215.440978999999999, 83.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.434981999999991, 244.440978999999999, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.434981999999991, 196.440978999999999, 102.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.5, 174.0, 102.0, 19.0 ],
					"text" : "Time Domain (s)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-451",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1942.447646111824042, 1194.588135600090027, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-465",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1890.273732632972724, 1194.588135600090027, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-359",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1952.41866025386048, 819.000000000000114, 36.666666746139526, 261.000007390975838 ],
					"presentation" : 1,
					"presentation_rect" : [ 1256.0, 384.0, 165.389014881051935, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1900.41866025386048, 819.000000000000114, 36.666666746139526, 261.000007390975838 ],
					"presentation" : 1,
					"presentation_rect" : [ 1259.0, 172.0, 163.0, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.087828367352586,
					"format" : 6,
					"id" : "obj-346",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2973.62897378900152, 1226.997986000000083, 54.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-344",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2973.62897378900152, 1173.907104000000118, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-342",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2973.62897378900152, 1123.053711000000021, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-268",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2876.550100482788366, 838.843955591720714, 224.0, 127.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 707.0, 1435.0, 615.0, 67.0 ],
					"text" : "                   Configuración para Max 8\n\nalt+click en el control del volumen de la derecha para que llegue a 0."
				}

			}
, 			{
				"box" : 				{
					"elementcolor" : [ 0.905882352941176, 0.87843137254902, 0.87843137254902, 1.0 ],
					"id" : "obj-204",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1457.477783000000045, 433.937072999999998, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1279.0, 595.0, 88.557556000000005, 88.557556000000005 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-67",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 640.636229999999955, 1038.053711000000021, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2010.400029957294464, 1176.000017523765564, 23.443939, 23.443939 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-659",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1050.214478000000099, 3904.639647999999852, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-660",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 997.464477999999986, 3904.639647999999852, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-661",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 935.464477999999986, 3904.639647999999852, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 848.0, 63.0, 20.0 ],
					"text" : "Amplitude",
					"varname" : "rowAl4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-662",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 848.214477999999986, 3904.639647999999852, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"hidden" : 1,
					"id" : "obj-663",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1056.214478000000099, 3924.639647999999852, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1216.969439868282279, 917.0, 20.0, 20.0 ],
					"varname" : "rowAd4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-665",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 998.464477999999986, 3924.639647999999852, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 917.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-665",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-665",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-666",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 935.464477999999986, 3924.639647999999852, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 868.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-666",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-666",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-667",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1348.214477999999872, 3924.639647999999852, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 10000 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-667",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-667",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-679",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1354.410033999999996, 3393.570557000000008, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-679",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-679",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[5]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"format" : 6,
					"id" : "obj-706",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 349.032684000000017, 4382.834472999999889, 44.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.8555600088348, 944.0, 29.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-743",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 356.332702999999981, 4102.698730000000069, 42.099975999999998, 272.272704999999974 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.8555600088348, 785.0, 27.932959794998169, 163.128485202789307 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-748",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.032684000000017, 3823.713378999999804, 34.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.520815038983301, 856.827540636062622, 41.0, 27.0 ],
					"text" : "-",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-782",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.032684000000017, 3860.013672000000042, 31.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.8555600088348, 773.0, 28.0, 15.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"gridcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"gridstep_x" : 1000.0,
					"gridstep_y" : 0.01,
					"id" : "obj-785",
					"ignoreclick" : 1,
					"linecolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.714539000000002, 4086.926269999999931, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 440.8555600088348, 773.0, 709.0, 188.39474356174469 ],
					"snap2grid" : 3,
					"textcolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"varname" : "fnAmp4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-452",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1069.315307999999959, 2762.472655999999915, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-453",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1016.565307999999959, 2762.472655999999915, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-454",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 954.565307999999959, 2762.472655999999915, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.423078499999974, 464.0, 63.0, 20.0 ],
					"text" : "Amplitude",
					"varname" : "rowAl3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-455",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 867.315307999999959, 2762.472655999999915, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"hidden" : 1,
					"id" : "obj-456",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1075.315307999999959, 2782.472655999999915, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1216.423078499999974, 533.0, 20.0, 20.0 ],
					"varname" : "rowAd3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-458",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1017.565307999999959, 2782.472655999999915, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.423078499999974, 533.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -0.8 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-458",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-458",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[6]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-459",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 954.565307999999959, 2782.472655999999915, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.423078499999974, 484.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-459",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-459",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[7]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-460",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1367.315307999999959, 2782.472655999999915, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 10000 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-460",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-460",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[8]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-437",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1024.146240000000034, 2209.018555000000106, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1210.423078499999974, 513.0, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-438",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 971.396178999999961, 2209.018555000000106, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.423078499999974, 513.0, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-439",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 909.396178999999961, 2209.018555000000106, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.423078499999974, 464.0, 63.0, 20.0 ],
					"text" : "Freq.",
					"varname" : "rowFl3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-440",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 822.146178999999961, 2209.018555000000106, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.423078499999974, 416.0, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"id" : "obj-442",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1030.146240000000034, 2229.018555000000106, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1216.423078499999974, 533.0, 20.0, 20.0 ],
					"varname" : "rowFd3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-444",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 972.396178999999961, 2229.018555000000106, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.423078499999974, 533.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-444",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-444",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[9]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-445",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 909.396178999999961, 2229.018555000000106, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.423078499999974, 484.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 667.799999999999955 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-445",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-445",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[10]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-446",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1322.146178999999847, 2229.018555000000106, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-446",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-446",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[11]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-425",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1092.087279999999964, 1646.501831000000038, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-426",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1039.337279999999964, 1646.501831000000038, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-427",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 977.337279999999964, 1646.501831000000038, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 266.0, 63.0, 20.0 ],
					"text" : "Amplitude",
					"varname" : "rowAl2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-428",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 890.087279999999964, 1646.501831000000038, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"hidden" : 1,
					"id" : "obj-429",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1098.087279999999964, 1666.501831000000038, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1215.0, 330.0, 20.0, 20.0 ],
					"varname" : "rowAd2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-431",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1040.337279999999964, 1666.501831000000038, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 330.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.38 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-431",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-431",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[12]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-432",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 977.337279999999964, 1666.501831000000038, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 286.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-432",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-432",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[13]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-433",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1390.087279999999964, 1666.501831000000038, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 10000 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-433",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-433",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[14]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-401",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1044.396117999999888, 1032.910888999999997, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1209.0, 310.0, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-402",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 991.646057000000042, 1032.910888999999997, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 310.0, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-403",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.646057000000042, 1032.910888999999997, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 266.0, 63.0, 20.0 ],
					"text" : "Freq.",
					"varname" : "rowFl2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-404",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 842.396057000000042, 1032.910888999999997, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 222.0, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"id" : "obj-405",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1050.396117999999888, 1052.910888999999997, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1215.0, 330.0, 20.0, 20.0 ],
					"varname" : "rowFd2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-407",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 992.646057000000042, 1052.910888999999997, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 330.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-407",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-407",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[15]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-408",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 929.646057000000042, 1052.910888999999997, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 286.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 167 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-408",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-408",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[16]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-409",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1342.396056999999928, 1052.910888999999997, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-409",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-409",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[17]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-375",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1190.322509999999966, 500.007323999999983, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-379",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1137.572509999999966, 500.007323999999983, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-387",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1075.572509999999966, 500.007323999999983, 68.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 78.0, 68.0, 20.0 ],
					"text" : "Amplitude",
					"varname" : "rowAl1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-388",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 988.322509999999966, 500.007323999999983, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"hidden" : 1,
					"id" : "obj-389",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1196.322509999999966, 520.00732400000004, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1212.0, 142.0, 20.0, 20.0 ],
					"varname" : "rowAd1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-391",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1138.572509999999966, 520.00732400000004, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 142.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.85 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-391",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-391",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[18]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-396",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1075.572509999999966, 520.00732400000004, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 98.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-396",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-396",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[19]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-397",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1488.322509999999966, 520.00732400000004, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 10000 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-397",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-397",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[20]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-413",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1179.572388000000046, -7.501748, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1206.0, 122.0, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-414",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1126.822388000000046, -7.501748, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 122.0, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-415",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1064.822388000000046, -7.501748, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 78.0, 63.0, 20.0 ],
					"text" : "Freq.",
					"varname" : "rowFl1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-416",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 977.572388000000046, -7.501748, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 32.0, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"id" : "obj-417",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1185.572388000000046, 12.498253, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1212.0, 142.0, 20.0, 20.0 ],
					"varname" : "rowFd1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-419",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1127.822388000000046, 12.498253, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 142.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-419",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-419",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[21]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-420",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1064.822388000000046, 12.498253, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 98.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 80 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-420",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-420",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[22]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-421",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1477.572388000000046, 12.498253, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-421",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-421",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[23]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-374",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2876.550100482788366, 467.15008499999999, 224.0, 328.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 707.0, 1281.0, 1014.0, 147.0 ],
					"text" : "HOTKEYS\n- Borrar puntos en tablas: Hold Shift y click en punto deseado\n- Curvas con mouse en tablas: Hold ALT, click sobre línea y mover mouse arriba o abajo.\n- Save preset: Hold Shift y click en preset deseado.\n-  Zoom in & zoom out: CMD + '+' / '-'\n\nTo see full patch notes leave presentation mode: CMD + Option (alt) + E"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"format" : 6,
					"id" : "obj-236",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.464539000000002, 2467.025634999999966, 66.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 335.813920969073251, 502.271406680345535, 73.223681569099426, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"format" : 6,
					"id" : "obj-237",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 349.032714999999996, 3230.024413999999979, 44.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.969439868282279, 560.0, 24.57626961171627, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-276",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 356.332733000000019, 2949.88818399999991, 42.099975999999998, 272.272704999999974 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.969439868282279, 400.0, 24.999998331069946, 160.810800075531006 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-281",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.032714999999996, 2666.725586000000021, 34.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.542585650388673, 470.689622908830643, 37.157342836260796, 27.0 ],
					"text" : "-",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 1, 1, 1, 0 ],
					"border" : 2,
					"bordercolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"id" : "obj-282",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.032714999999996, 2659.825439000000188, 42.099975999999998, 40.000008000000001 ],
					"presentation" : 1,
					"presentation_rect" : [ 379.999973952770233, 470.689622908830643, 29.695447919960543, 30.982755571603775 ],
					"proportion" : 0.39,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-316",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.032714999999996, 2703.025634999999966, 31.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.969439868282279, 388.0, 26.86206616461277, 15.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-317",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 334.464539000000002, 2410.225586000000021, 54.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 335.813920969073251, 478.635216146707535, 53.0, 21.0 ],
					"text" : "PITCH"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"gridcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"gridstep_x" : 1000.0,
					"gridstep_y" : 0.01,
					"id" : "obj-319",
					"ignoreclick" : 1,
					"linecolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.714539000000002, 2934.11547900000005, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 439.969439868282279, 389.0, 709.124934293064143, 187.89474356174469 ],
					"snap2grid" : 3,
					"textcolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"varname" : "fnAmp3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 358.318726000000026, 698.614319000000023, 42.099975999999998, 272.272704999999974 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.0, 18.0, 24.074073672294617, 159.259256601333618 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"format" : 6,
					"id" : "obj-61",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 322.450531000000012, 1283.353759999999966, 66.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.055300468508676, 306.912424743175507, 76.754985675215721, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"format" : 6,
					"id" : "obj-58",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 335.634978999999987, 222.640991000000014, 66.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.705024087731317, 114.47368311882019, 73.922869443893433, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"format" : 6,
					"id" : "obj-22",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 337.018707000000006, 2156.641602000000148, 44.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 416.423078499999974, 367.0, 27.777777314186096, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 344.318726000000026, 1876.505126999999902, 42.099975999999998, 272.272704999999974 ],
					"presentation" : 1,
					"presentation_rect" : [ 416.423078499999974, 208.0, 23.611110717058182, 162.962960243225098 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-159",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.018707000000006, 1483.053711000000021, 34.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 378.246152065694332, 278.461147263646126, 34.139676176011562, 27.0 ],
					"text" : "-",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 1, 1, 1, 0 ],
					"border" : 2,
					"bordercolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"id" : "obj-160",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 333.018707000000006, 1476.153686999999991, 42.099975999999998, 40.000008000000001 ],
					"presentation" : 1,
					"presentation_rect" : [ 380.303489983081818, 277.761147052049637, 30.025000341236591, 28.400000423192978 ],
					"proportion" : 0.39,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-196",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.018707000000006, 1519.353759999999966, 31.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 416.423078499999974, 196.0, 25.61874097616294, 15.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-197",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 322.450531000000012, 1226.553711000000021, 54.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.420815700594858, 281.461147263646126, 49.0, 21.0 ],
					"text" : "PITCH"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"gridcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"gridstep_x" : 1000.0,
					"gridstep_y" : 0.01,
					"id" : "obj-199",
					"ignoreclick" : 1,
					"linecolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 398.700531000000012, 1860.732422000000042, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 438.423078499999974, 196.0, 709.0, 188.0 ],
					"snap2grid" : 3,
					"textcolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"varname" : "fnAmp2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-89",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1769.331055000000106, 154.358138999999994, 121.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1259.0, 31.0, 160.0, 27.0 ],
					"text" : "MASTER VOL",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.4, 1.0, 0.8, 1.0 ],
					"floatoutput" : 1,
					"id" : "obj-88",
					"knobcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1775.845215000000053, 82.641013999999998, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1255.0, 63.0, 167.0, 29.0 ],
					"size" : 127.0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1974.845336999999972, 482.541016000000013, 121.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1283.0, 538.0, 87.0, 27.0 ],
					"text" : "STEREO",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 1.0, 1.0, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1798.379394999999931, 593.741028000000028, 29.467682, 29.467682 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"format" : 6,
					"id" : "obj-218",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1880.085327000000007, 482.541016000000013, 80.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1274.0, 486.0, 71.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-219",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1931.085327000000007, 482.541016000000013, 36.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1352.0, 486.0, 36.0, 29.0 ],
					"text" : "dB",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"format" : 6,
					"id" : "obj-217",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1738.845215000000053, 482.541016000000013, 79.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1274.0, 277.0, 71.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-215",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1789.845215000000053, 482.541016000000013, 36.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1352.0, 277.0, 36.0, 29.0 ],
					"text" : "dB",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"id" : "obj-213",
					"markercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"markers" : [ -60, -48, -36, -24, -12, -6, 0, 6 ],
					"markersused" : 8,
					"maxclass" : "levelmeter~",
					"needlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1880.085327000000007, 409.541016000000013, 128.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1274.0, 415.0, 114.0, 57.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"id" : "obj-212",
					"markercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"markers" : [ -60, -48, -36, -24, -12, -6, 0, 6 ],
					"markersused" : 8,
					"maxclass" : "levelmeter~",
					"needlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1738.845215000000053, 409.541016000000013, 128.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1274.0, 209.0, 114.0, 57.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 22.0,
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1836.845336999999972, 482.541016000000013, 39.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1259.0, 346.0, 28.0, 31.0 ],
					"text" : "R",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 22.0,
					"id" : "obj-106",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1692.085448999999926, 477.971007999999983, 41.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1259.0, 137.0, 29.0, 31.0 ],
					"text" : "L",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"id" : "obj-103",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 411.884978999999987, 126.641013999999998, 63.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 88.0, 107.0, 24.0 ],
					"text" : "Bar Time S"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-92",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 344.903167999999994, 425.140930000000026, 34.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.883137883548216, 85.991831600666046, 35.489510849118233, 27.0 ],
					"text" : "-",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 1, 1, 1, 0 ],
					"border" : 2,
					"bordercolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"id" : "obj-90",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.903167999999994, 418.240967000000012, 42.099975999999998, 40.000008000000001 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.627893084589914, 85.241831287741661, 30.000000447034836, 28.50000062584877 ],
					"proportion" : 0.39,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 28.0,
					"hidden" : 1,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-85",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.607201000000032, 307.140990999999985, 112.0, 40.0 ],
					"textcolor" : [ 0.25098, 0.501961, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 350.203155999999979, 456.440979000000027, 36.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.0, 4.0, 25.0, 15.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.634978999999987, 163.640991000000014, 54.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.705024087731317, 89.276313975453377, 48.0, 21.0 ],
					"text" : "PITCH"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"gridcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"gridstep_x" : 1000.0,
					"gridstep_y" : 0.01,
					"id" : "obj-2",
					"ignoreclick" : 1,
					"linecolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 412.700531000000012, 683.353638000000046, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 437.0, 4.0, 710.20406448841095, 188.046642690896988 ],
					"snap2grid" : 3,
					"textcolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"varname" : "fnAmp1"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0, 0, 0, 1 ],
					"border" : 1,
					"id" : "obj-133",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1671.845215000000053, 395.240967000000012, 391.999969000000021, 133.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 1253.0, 2.0, 174.0, 765.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-838",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 265.489039999999989, 460.00732400000004, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 69.0, 334.0, 100.0, 20.0 ],
					"text" : "Clear all presets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-839",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 265.489039999999989, 490.00732400000004, 50.0, 22.0 ],
					"text" : "clearall"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-852",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 165.489039999999989, 460.00732400000004, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 188.0, 744.0, 59.0, 20.0 ],
					"text" : "Guardar"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-853",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.489039999999989, 490.00732400000004, 40.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-854",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 65.489039999999989, 460.00732400000004, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 251.0, 744.0, 66.0, 20.0 ],
					"text" : "Cargar"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-855",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.489039999999989, 490.00732400000004, 40.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-autoplay-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1200.0, 50.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 300.0, 292.535005912368774, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-autoplay-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1200.0, 80.0, 100.0, 22.0 ],
					"text" : "s autoplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-autoplay-label",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1230.0, 50.0, 100.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 170.0, 287.535005912368774, 126.0, 33.0 ],
					"text" : "Play Bar\n(click in the preset)",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-r-autoplay-0",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1200.0, 150.0, 80.0, 22.0 ],
					"text" : "r autoplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gate-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1200.0, 180.0, 50.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tbbb-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1200.0, 210.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-zero-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1140.0, 240.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-start-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1200.0, 240.0, 61.0, 22.0 ],
					"text" : "delay 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-one-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1200.0, 270.0, 30.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-add1000-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1300.0, 240.0, 60.0, 22.0 ],
					"text" : "+ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-stop-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1260.0, 270.0, 60.0, 22.0 ],
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-fade-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1320.0, 300.0, 50.0, 22.0 ],
					"text" : "0. 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-r-autoplay-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1450.0, 150.0, 80.0, 22.0 ],
					"text" : "r autoplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gate-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1450.0, 180.0, 50.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tbbb-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1450.0, 210.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-zero-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1390.0, 240.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-start-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1450.0, 240.0, 61.0, 22.0 ],
					"text" : "delay 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-one-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1450.0, 270.0, 30.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-add1000-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1550.0, 240.0, 60.0, 22.0 ],
					"text" : "+ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-stop-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1510.0, 270.0, 60.0, 22.0 ],
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-fade-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1570.0, 300.0, 50.0, 22.0 ],
					"text" : "0. 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-r-autoplay-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 150.0, 80.0, 22.0 ],
					"text" : "r autoplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gate-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 180.0, 50.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tbbb-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1700.0, 210.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-zero-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1640.0, 240.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-start-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1700.0, 240.0, 61.0, 22.0 ],
					"text" : "delay 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-one-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 270.0, 30.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-add1000-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1800.0, 240.0, 60.0, 22.0 ],
					"text" : "+ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-stop-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1760.0, 270.0, 60.0, 22.0 ],
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-fade-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1820.0, 300.0, 50.0, 22.0 ],
					"text" : "0. 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-r-autoplay-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1950.0, 150.0, 80.0, 22.0 ],
					"text" : "r autoplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gate-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1950.0, 180.0, 50.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tbbb-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1950.0, 210.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-zero-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1890.0, 240.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-start-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1950.0, 240.0, 61.0, 22.0 ],
					"text" : "delay 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-one-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1950.0, 270.0, 30.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-add1000-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 2050.0, 240.0, 60.0, 22.0 ],
					"text" : "+ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-stop-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2010.0, 270.0, 60.0, 22.0 ],
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-fade-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2070.0, 300.0, 50.0, 22.0 ],
					"text" : "0. 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-r-autoplay-stop",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1200.0, 350.0, 80.0, 22.0 ],
					"text" : "r autoplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-sel-zero",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1200.0, 380.0, 50.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-global-stop",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1200.0, 410.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-global-fade",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1250.0, 410.0, 50.0, 22.0 ],
					"text" : "0. 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-mute",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 300.0, 650.0, 50.0, 22.0 ],
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10000",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 65.489039999999989, 520.00732400000004, 30.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10001",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 65.489039999999989, 550.00732400000004, 70.0, 22.0 ],
					"text" : "opendialog"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10002",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.489039999999989, 580.00732400000004, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "smart_load.js",
						"parameter_enable" : 0
					}
,
					"text" : "js smart_load.js 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-inv",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 700.0, 1028.0, 35.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-block-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 1056.0, 70.0, 22.0 ],
					"text" : "s fp_block"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-lb",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 780.0, 1056.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-lb-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 1084.0, 25.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-r-0",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1220.0, 120.0, 65.0, 22.0 ],
					"text" : "r fp_block"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-r-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1470.0, 120.0, 65.0, 22.0 ],
					"text" : "r fp_block"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-pre-gate-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1220.0, 148.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-pre-gate-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1470.0, 148.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-r-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 120.0, 65.0, 22.0 ],
					"text" : "r fp_block"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-pre-gate-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 148.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-r-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 360.0, 65.0, 22.0 ],
					"text" : "r fp_block"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-pre-gate-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 388.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-engate-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 1300.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzsel-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 880.0, 1328.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzmsg-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 880.0, 1356.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-engate-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 1370.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzsel-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 880.0, 1398.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzmsg-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 880.0, 1426.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-engate-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 1440.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzsel-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 880.0, 1468.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzmsg-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 880.0, 1496.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-engate-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 1510.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzsel-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 880.0, 1538.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzmsg-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 880.0, 1566.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-ractive",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2100.0, 1000.0, 90.0, 22.0 ],
					"text" : "r playactive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-plus1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 2100.0, 1030.0, 40.0, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-lb",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2300.0, 1000.0, 70.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-lb0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2300.0, 1030.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-fpsel",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 2400.0, 1000.0, 40.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-fp0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2400.0, 1030.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-rfp",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2500.0, 1000.0, 75.0, 22.0 ],
					"text" : "r fp_block"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-spa-lb",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2300.0, 1060.0, 90.0, 22.0 ],
					"text" : "s playactive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-spa-fp",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2400.0, 1060.0, 90.0, 22.0 ],
					"text" : "s playactive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-psswitch",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1900.0, 1100.0, 70.0, 22.0 ],
					"text" : "switch 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-domswitch",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1900.0, 1140.0, 70.0, 22.0 ],
					"text" : "switch 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storeps-0",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 1200.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storedom-0",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1680.0, 1200.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-tbbb-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1400.0, 1200.0, 60.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-gact-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 1228.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-msg-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 1256.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-spa-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1400.0, 1284.0, 90.0, 22.0 ],
					"text" : "s playactive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storeps-1",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 1290.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storedom-1",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1680.0, 1290.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-tbbb-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1400.0, 1290.0, 60.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-gact-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 1318.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-msg-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 1346.0, 30.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-spa-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1400.0, 1374.0, 90.0, 22.0 ],
					"text" : "s playactive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storeps-2",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 1380.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storedom-2",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1680.0, 1380.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-tbbb-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1400.0, 1380.0, 60.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-gact-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 1408.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-msg-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 1436.0, 30.0, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-spa-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1400.0, 1464.0, 90.0, 22.0 ],
					"text" : "s playactive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storeps-3",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 1470.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storedom-3",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1680.0, 1470.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-tbbb-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1400.0, 1470.0, 60.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-gact-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 1498.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-msg-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 1526.0, 30.0, 22.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-spa-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1400.0, 1554.0, 90.0, 22.0 ],
					"text" : "s playactive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3ph-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 1700.0, 90.0, 22.0 ],
					"text" : "s setphase0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3ph-comment",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 860.0, 1700.0, 415.0, 20.0 ],
					"text" : "Phase-lock: resetea los 4 phasor~ al arrancar (sin clicks, suma determinista)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-3afs9g9yx",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 203.264510999999999, 3619.013672000000042, 83.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mx5tzq6di",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 703.26451099999997, 3589.013672000000042, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1t3h3j83z",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 753.26451099999997, 3649.013672000000042, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-i7zy4n5jg",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 753.26451099999997, 3679.013672000000042, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-hvlho7th0",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 203.264542000000006, 2462.025634999999966, 83.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2t3ccds1y",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 703.264542000000006, 2432.025634999999966, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-dnsqopshf",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 753.264542000000006, 2492.025634999999966, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4hflnnlkl",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 753.264542000000006, 2522.025634999999966, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-d5j3ero9y",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 191.250533999999988, 1278.353759999999966, 83.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7sbcivixq",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 691.250534000000016, 1248.353759999999966, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-m7yi42pvd",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 741.250534000000016, 1308.353759999999966, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4t5h0d4ok",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 741.250534000000016, 1338.353759999999966, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-tdtibs8vg",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.434981999999991, 215.440978999999999, 83.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.5, 193.0, 104.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gjt7l5zdl",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 704.434981999999991, 185.440978999999999, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-u3i72wnv7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 754.434981999999991, 245.440978999999999, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-v60osaa87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 754.434981999999991, 275.44097899999997, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-u8jkizm94",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 848.214477999999986, 3924.639647999999852, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 822.0, 77.0, 22.0 ],
					"varname" : "rowAt4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59dzgzjpe",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1348.214477999999872, 3894.639647999999852, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1kwldhzhc",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1398.214477999999872, 3954.639647999999852, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70t15q9im",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1398.214477999999872, 3984.639647999999852, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-esodd5bpi",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1354.410033999999996, 3363.570557000000008, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tdz1qcmgu",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1404.410033999999996, 3423.570557000000008, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-pt2y9ylm7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1404.410033999999996, 3453.570557000000008, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-3hxgrvvq7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 867.315307999999959, 2782.472655999999915, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.423078499999974, 436.0, 77.0, 22.0 ],
					"varname" : "rowAt3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-j74anr8kb",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1367.315307999999959, 2752.472655999999915, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3h1ea2ims",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1417.315307999999959, 2812.472655999999915, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6vetkogrm",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1417.315307999999959, 2842.472655999999915, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-wgrmzda3b",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 822.146178999999961, 2229.018555000000106, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.423078499999974, 436.0, 77.0, 22.0 ],
					"varname" : "rowFt3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-g16xfd1wi",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1322.146178999999847, 2199.018555000000106, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2mdj21p73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1372.146178999999847, 2259.018555000000106, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mvz96otzd",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1372.146178999999847, 2289.018555000000106, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-vz66rk2iu",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.087279999999964, 1666.501831000000038, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 242.0, 77.0, 22.0 ],
					"varname" : "rowAt2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tyrssdfl5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1390.087279999999964, 1636.501831000000038, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-m09utl895",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1440.087279999999964, 1696.501831000000038, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ktek75n02",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1440.087279999999964, 1726.501831000000038, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-7bdffdhlv",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 842.396057000000042, 1052.910888999999997, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 242.0, 77.0, 22.0 ],
					"varname" : "rowFt2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tqugz621u",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1342.396056999999928, 1022.910888999999997, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ohqcid1yr",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1392.396056999999928, 1082.910888999999997, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7b3fmv8dz",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1392.396056999999928, 1112.910888999999997, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-n5auwlees",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 988.322509999999966, 520.00732400000004, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 52.0, 77.0, 22.0 ],
					"varname" : "rowAt1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-oclp783qz",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1488.322509999999966, 490.00732400000004, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ny61s7jhx",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1538.322509999999966, 550.00732400000004, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-v8kldzpti",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1538.322509999999966, 580.00732400000004, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-6qokentgx",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 977.572388000000046, 12.498253, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.0, 52.0, 77.0, 22.0 ],
					"varname" : "rowFt1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ngqifyhl5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1477.572388000000046, -17.501747000000002, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-pcgt85p41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1527.572388000000046, 42.498252999999998, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-jx8nc1z5j",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1527.572388000000046, 72.498253000000005, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 36.0,
					"format" : 6,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-iek1sdwhj",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 38.607201000000003, 307.140990999999985, 112.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 114.0, 107.25, 49.0 ],
					"textcolor" : [ 0.25098, 0.501961, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5b1onwccc",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 538.607201000000032, 277.140990999999985, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-xe2aqygkh",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 588.607201000000032, 337.140990999999985, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-h5wvk71m2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.607201000000032, 367.140990999999985, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj_doc_btn_new",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1723.0, 600.0, 323.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 707.0, 980.0, 303.121965604070738, 40.0 ],
					"text" : "📖 Link Documentación / Quick Start"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj_doc_msg_new",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1723.0, 650.0, 323.0, 62.0 ],
					"text" : ";\rmax launchbrowser https://github.com/Alba-Triana-Studio/ATS_Sequencer/blob/main/Quick_Readme.md"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-0",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 520.00732400000004, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 369.0, 42.0, 20.0 ],
					"text" : "M1",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 530.869393700000046, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 380.0, 42.0, 20.0 ],
					"text" : "M2",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 541.731463400000052, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 392.0, 42.0, 20.0 ],
					"text" : "M2b",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 552.593533100000059, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 404.0, 42.0, 20.0 ],
					"text" : "M2c",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 563.455602800000065, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 415.0, 42.0, 20.0 ],
					"text" : "M3",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 574.317672500000072, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 427.0, 42.0, 20.0 ],
					"text" : "M3b",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 585.179742200000078, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 440.0, 42.0, 20.0 ],
					"text" : "M4",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 596.041811900000084, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 452.0, 42.0, 20.0 ],
					"text" : "M5",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 606.903881600000091, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 465.0, 42.0, 20.0 ],
					"text" : "M5b",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 617.765951300000097, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 476.0, 42.0, 20.0 ],
					"text" : "M5c",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 628.62802099999999, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 487.0, 42.0, 20.0 ],
					"text" : "M6",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 639.49009070000011, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 499.0, 42.0, 20.0 ],
					"text" : "M6b",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 650.352160400000002, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 511.0, 42.0, 20.0 ],
					"text" : "M6c",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 661.214230100000123, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 523.0, 42.0, 20.0 ],
					"text" : "M7",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 672.076299800000015, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 537.0, 42.0, 20.0 ],
					"text" : "M7b",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 682.938369500000022, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 550.0, 42.0, 20.0 ],
					"text" : "M7c",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 693.800439200000028, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 562.0, 42.0, 20.0 ],
					"text" : "M8",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 704.662508900000034, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 574.0, 42.0, 20.0 ],
					"text" : "M9",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 715.524578600000041, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 584.0, 42.0, 20.0 ],
					"text" : "M10",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 726.386648300000047, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 596.0, 42.0, 20.0 ],
					"text" : "M11",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 748.11078770000006, 61.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 620.0, 61.0, 20.0 ],
					"text" : "Full Piece",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 758.972857400000066, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 631.0, 42.0, 20.0 ],
					"text" : "E1",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 769.834927100000073, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 643.0, 42.0, 20.0 ],
					"text" : "E2",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 780.696996800000079, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 655.0, 42.0, 20.0 ],
					"text" : "E3",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 791.559066500000085, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 667.0, 42.0, 20.0 ],
					"text" : "E4",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 802.421136200000092, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 680.0, 42.0, 20.0 ],
					"text" : "E5",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 813.283205899999984, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 690.0, 44.0, 20.0 ],
					"text" : "Eraser",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 824.145275600000105, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 704.0, 42.0, 20.0 ],
					"text" : "T1",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-newlabel-0-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.489039999999989, 835.007345299999997, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 716.0, 42.0, 20.0 ],
					"text" : "T2",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 265.489039999999989, 520.00732400000004, 275.076726666666616, 325.862091000000021 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 371.0, 252.0, 368.432571000000053 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 1, 1, 1, 0 ],
					"border" : 2,
					"bordercolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"id" : "obj-749",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.032684000000017, 3816.813477000000148, 42.099975999999998, 40.000008000000001 ],
					"presentation" : 1,
					"presentation_rect" : [ 379.999973952770233, 857.172368198633194, 28.372092008590698, 26.976743221282959 ],
					"proportion" : 0.39,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-382",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.666666984558105, 3989.666780948638916, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.708456668892095,
					"format" : 6,
					"id" : "obj-348",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2973.62897378900152, 1276.407042999999931, 52.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-671",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1056.410033999999996, 3373.570557000000008, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1210.969439868282279, 897.0, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-672",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1003.660033999999996, 3373.570557000000008, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 897.0, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-673",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 941.660033999999996, 3373.570557000000008, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 848.0, 63.0, 20.0 ],
					"text" : "Freq.",
					"varname" : "rowFl4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-674",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 854.410033999999996, 3373.570557000000008, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 802.0, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"id" : "obj-675",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1062.410033999999996, 3393.570557000000008, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1216.969439868282279, 917.0, 20.0, 20.0 ],
					"varname" : "rowFd4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-677",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1004.660033999999996, 3393.570557000000008, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 917.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-677",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-677",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-678",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 941.660033999999996, 3393.570557000000008, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 868.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 41.950000000000003 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-678",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-678",
							"parameter_type" : 0
						}

					}
,
					"varname" : "number[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"format" : 6,
					"id" : "obj-705",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.464508000000023, 3624.013672000000042, 66.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 337.912287378613428, 885.947388052940369, 69.913505136966705, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-783",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 334.464508000000023, 3567.213378999999804, 54.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 336.336603129212335, 859.988390207290649, 53.0, 21.0 ],
					"text" : "PITCH"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-yo8ur7y8c",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 854.410033999999996, 3393.570557000000008, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 822.0, 77.0, 22.0 ],
					"varname" : "rowFt4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 251.365958166666672, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 64.0, 356.0, 17.0, 18.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 265.119794500000012, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.0, 356.0, 17.0, 18.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.873630833333323, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.0, 356.0, 17.0, 18.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 292.627467166666634, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 356.0, 17.0, 18.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 306.381303500000001, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 113.0, 356.0, 17.0, 18.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 320.135139833333312, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 356.0, 17.0, 18.0 ],
					"text" : "6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 333.888976166666623, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.0, 356.0, 17.0, 18.0 ],
					"text" : "7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 347.642812499999991, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 149.0, 356.0, 17.0, 18.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 361.396648833333302, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 161.0, 356.0, 17.0, 18.0 ],
					"text" : "9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.150485166666613, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 356.0, 20.0, 18.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 388.904321499999924, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 185.0, 356.0, 20.0, 18.0 ],
					"text" : "11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 402.658157833333235, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 197.0, 356.0, 20.0, 18.0 ],
					"text" : "12"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 416.411994166666602, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 209.0, 356.0, 20.0, 18.0 ],
					"text" : "13"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 430.165830499999913, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 221.0, 356.0, 20.0, 18.0 ],
					"text" : "14"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.919666833333281, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 233.0, 356.0, 20.0, 18.0 ],
					"text" : "15"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 457.673503166666592, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 245.0, 356.0, 20.0, 18.0 ],
					"text" : "16"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 471.427339499999903, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 257.0, 356.0, 20.0, 18.0 ],
					"text" : "17"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 485.181175833333214, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 269.0, 356.0, 20.0, 18.0 ],
					"text" : "18"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 498.935012166666525, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 281.0, 356.0, 20.0, 18.0 ],
					"text" : "19"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-col-m1-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 512.688848499999949, 497.069124000000045, 42.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 293.0, 356.0, 20.0, 18.0 ],
					"text" : "20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-append-mat-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 365.489039999999989, 490.00732400000004, 150.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "append_matrix_size.js",
						"parameter_enable" : 0
					}
,
					"text" : "js append_matrix_size.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-pre",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1300.0, 1250.0, 40.0, 22.0 ],
					"text" : "t i b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-mstart",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 1290.0, 40.0, 22.0 ],
					"text" : "421"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-mend",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1350.0, 1290.0, 40.0, 22.0 ],
					"text" : "440"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-pipe",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 1330.0, 41.0, 22.0 ],
					"text" : "pipe 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1500.0, 1250.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 301.0, 231.535005912368774, 23.443939, 23.443939 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-seq-comment",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1530.0, 1250.0, 130.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 157.0, 232.535005912368774, 140.0, 22.0 ],
					"text" : "Play all sequence",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-route",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1500.0, 1290.0, 40.0, 22.0 ],
					"text" : "t i b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-selstore",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1700.0, 1250.0, 40.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 1290.0, 70.0, 22.0 ],
					"text" : "clip 1 600"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-sub",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1700.0, 1320.0, 40.0, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-div",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1700.0, 1350.0, 40.0, 22.0 ],
					"text" : "/ 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-mul",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1700.0, 1380.0, 40.0, 22.0 ],
					"text" : "* 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-add",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1700.0, 1410.0, 40.0, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-sstart",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1700.0, 1440.0, 120.0, 22.0 ],
					"text" : "s seqrange_start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-add2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1830.0, 1410.0, 45.0, 22.0 ],
					"text" : "+ 19"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1830.0, 1440.0, 120.0, 22.0 ],
					"text" : "s seqrange_end"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-pipe",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1500.0, 1330.0, 41.0, 22.0 ],
					"text" : "pipe 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-scap",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1420.0, 1290.0, 110.0, 22.0 ],
					"text" : "s captureblock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-lb",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1980.0, 1250.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-lb0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1980.0, 1290.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-rcap",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1960.0, 1330.0, 110.0, 22.0 ],
					"text" : "r captureblock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-capinv",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1960.0, 1360.0, 45.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-seq-capgate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1960.0, 1390.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-stop-rrecv",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 1430.0, 120.0, 22.0 ],
					"text" : "r seqend_reached"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-stop-zero",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 1460.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-sel",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3160.0, 430.0, 52.0, 22.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-stop",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3240.0, 470.0, 35.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-clocker",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3160.0, 510.0, 82.0, 22.0 ],
					"text" : "clocker 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-trig",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 3160.0, 550.0, 60.0, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-min",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3160.0, 590.0, 55.0, 22.0 ],
					"text" : "/ 60000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-smod",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3240.0, 590.0, 58.0, 22.0 ],
					"text" : "% 60000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-sdiv",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3240.0, 620.0, 48.0, 22.0 ],
					"text" : "/ 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-tmod",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3320.0, 590.0, 51.0, 22.0 ],
					"text" : "% 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-tdiv",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3320.0, 620.0, 41.0, 22.0 ],
					"text" : "/ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tt-sprintf",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3160.0, 660.0, 130.0, 22.0 ],
					"text" : "sprintf set %i:%02i.%i"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 1, 1, 1, 1 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "color",
					"fontname" : "Arial",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-tt-display",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3160.0, 700.0, 190.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 28.0, 109.0, 49.0 ],
					"text" : "0:00.0",
					"textcolor" : [ 0.25098, 0.501961, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.803922, 0.156863, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-ms-solo-1",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 739.250548999999978, 562.553649999999948, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.652392113511041, 164.210532188415527, 22.105263948440552, 22.105263948440552 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-ms-lbl-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 739.250548999999978, 537.553649999999948, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.705024087731317, 145.0, 36.0, 18.0 ],
					"text" : "SOLO"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sel-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 739.250548999999978, 612.553649999999948, 50.0, 22.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbb-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 739.250548999999978, 642.553649999999948, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-on-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 739.250548999999978, 672.553649999999948, 32.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-off-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 784.250548999999978, 672.553649999999948, 32.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-ssend-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 739.250548999999978, 702.553649999999948, 70.0, 22.0 ],
					"text" : "s solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-clr-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 829.250548999999978, 642.553649999999948, 50.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.803922, 0.156863, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-ms-solo-2",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 725.250548999999978, 1739.932373000000098, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 341.013805270195007, 355.29951873421669, 21.052632331848145, 21.052632331848145 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-ms-lbl-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 725.250548999999978, 1714.932373000000098, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.179704338312149, 335.023022204637527, 37.616822138428688, 18.0 ],
					"text" : "SOLO"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sel-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 725.250548999999978, 1789.932373000000098, 50.0, 22.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbb-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 725.250548999999978, 1819.932373000000098, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-on-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 725.250548999999978, 1849.932373000000098, 32.0, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-off-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 770.250548999999978, 1849.932373000000098, 32.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-ssend-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 725.250548999999978, 1879.932373000000098, 70.0, 22.0 ],
					"text" : "s solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-clr-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 815.250548999999978, 1819.932373000000098, 50.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.803922, 0.156863, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-ms-solo-3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 737.264525999999933, 2813.315430000000106, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 341.441865825955347, 549.73684173822403, 20.526316523551941, 20.526316523551941 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-ms-lbl-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 737.264525999999933, 2788.315430000000106, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 335.911912226979211, 530.382004141807556, 36.0, 18.0 ],
					"text" : "SOLO"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sel-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 737.264525999999933, 2863.315430000000106, 50.0, 22.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbb-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 737.264525999999933, 2893.315430000000106, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-on-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 737.264525999999933, 2923.315430000000106, 32.0, 22.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-off-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 782.264525999999933, 2923.315430000000106, 32.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-ssend-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 737.264525999999933, 2953.315430000000106, 70.0, 22.0 ],
					"text" : "s solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-clr-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 827.264525999999933, 2893.315430000000106, 50.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.803922, 0.156863, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-ms-solo-4",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 737.264525999999933, 3965.834960999999566, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 342.231339538399652, 932.00002646446228, 21.052632331848145, 21.052632331848145 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-ms-lbl-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 737.264525999999933, 3940.834960999999566, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 336.336603129212335, 912.789494276046753, 36.0, 18.0 ],
					"text" : "SOLO"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sel-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 737.264525999999933, 4015.834960999999566, 50.0, 22.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbb-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 737.264525999999933, 4045.834960999999566, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-on-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 737.264525999999933, 4075.834960999999566, 32.0, 22.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-off-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 782.264525999999933, 4075.834960999999566, 32.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-ssend-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 737.264525999999933, 4105.834960999999566, 70.0, 22.0 ],
					"text" : "s solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-clr-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 827.264525999999933, 4045.834960999999566, 50.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-lb",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1700.0, 60.0, 62.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-lb0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 90.0, 32.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-lbsend",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1700.0, 120.0, 70.0, 22.0 ],
					"text" : "s solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-rsolo-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.250548999999978, 502.553649999999948, 70.0, 22.0 ],
					"text" : "r solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sstore-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 439.250548999999978, 532.553649999999948, 32.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tii-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 439.250548999999978, 562.553649999999948, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eq0-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 439.250548999999978, 602.553649999999948, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eqn-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 559.250548999999978, 602.553649999999948, 40.0, 22.0 ],
					"text" : "== 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbi-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 639.250548999999978, 532.553649999999948, 40.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-nm-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 639.250548999999978, 572.553649999999948, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-and-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 439.250548999999978, 642.553649999999948, 40.0, 22.0 ],
					"text" : "&& 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-or-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 439.250548999999978, 677.553649999999948, 40.0, 22.0 ],
					"text" : "|| 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-rsolo-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.250548999999978, 1679.932373000000098, 70.0, 22.0 ],
					"text" : "r solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sstore-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 425.250548999999978, 1709.932373000000098, 32.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tii-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 425.250548999999978, 1739.932373000000098, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eq0-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 425.250548999999978, 1779.932373000000098, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eqn-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 545.250548999999978, 1779.932373000000098, 40.0, 22.0 ],
					"text" : "== 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbi-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 625.250548999999978, 1709.932373000000098, 40.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-nm-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 625.250548999999978, 1749.932373000000098, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-and-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 425.250548999999978, 1819.932373000000098, 40.0, 22.0 ],
					"text" : "&& 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-or-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 425.250548999999978, 1854.932373000000098, 40.0, 22.0 ],
					"text" : "|| 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-rsolo-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 437.264525999999989, 2753.315430000000106, 70.0, 22.0 ],
					"text" : "r solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sstore-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 2783.315430000000106, 32.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tii-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 437.264525999999989, 2813.315430000000106, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eq0-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 2853.315430000000106, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eqn-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 557.264525999999933, 2853.315430000000106, 40.0, 22.0 ],
					"text" : "== 3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbi-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 637.264525999999933, 2783.315430000000106, 40.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-nm-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 637.264525999999933, 2823.315430000000106, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-and-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 2893.315430000000106, 40.0, 22.0 ],
					"text" : "&& 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-or-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 2928.315430000000106, 40.0, 22.0 ],
					"text" : "|| 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-rsolo-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 437.264525999999989, 3905.834960999999566, 70.0, 22.0 ],
					"text" : "r solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sstore-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 3935.834960999999566, 32.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tii-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 437.264525999999989, 3965.834960999999566, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eq0-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 4005.834960999999566, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eqn-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 557.264525999999933, 4005.834960999999566, 40.0, 22.0 ],
					"text" : "== 4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbi-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 637.264525999999933, 3935.834960999999566, 40.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-nm-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 637.264525999999933, 3975.834960999999566, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-and-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 4045.834960999999566, 40.0, 22.0 ],
					"text" : "&& 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-or-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 4080.834960999999566, 40.0, 22.0 ],
					"text" : "|| 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-vw-lbl-v-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3200.0, 60.0, 100.0, 20.0 ],
					"text" : "Ver curvas"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-vw-bfreq-1",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3200.0, 90.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "FR",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "FR",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-vw-bamp-1",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3270.0, 90.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "AMP",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bedit-1",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3340.0, 90.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1155.0, 4.0, 94.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "Edit: FR",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Edit: AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-vw-lbl-v-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3200.0, 580.0, 100.0, 20.0 ],
					"text" : "Ver curvas"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bfreq-2",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3200.0, 610.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "FREQ",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "FREQ",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bamp-2",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3270.0, 610.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "AMP",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bedit-2",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3340.0, 610.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 196.0, 92.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "Edit: FR",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Edit: AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-vw-lbl-v-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3200.0, 1100.0, 100.0, 20.0 ],
					"text" : "Ver curvas"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bfreq-3",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3200.0, 1130.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "FREQ",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "FREQ",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bamp-3",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3270.0, 1130.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "AMP",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bedit-3",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3340.0, 1130.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.423078499999974, 389.0, 92.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "Edit: FR",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Edit: AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-vw-lbl-v-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3200.0, 1620.0, 100.0, 20.0 ],
					"text" : "Ver curvas"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bfreq-4",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3200.0, 1650.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "FREQ",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "FREQ",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bamp-4",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3270.0, 1650.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "AMP",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bedit-4",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3340.0, 1650.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 773.0, 92.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "Edit: FR",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Edit: AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tp",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 3200.0, 40.0, 90.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selF-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 130.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFh-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 160.0, 200.0, 22.0 ],
					"text" : "script hide fnFreq1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFs-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3410.0, 160.0, 200.0, 22.0 ],
					"text" : "script show fnFreq1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tauto-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3630.0, 160.0, 60.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoset-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3700.0, 190.0, 60.0, 22.0 ],
					"text" : "set 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoval-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3630.0, 190.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tA-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3200.0, 220.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selA-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3280.0, 250.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAh-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3280.0, 280.0, 200.0, 22.0 ],
					"text" : "script hide fnAmp1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAs-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3490.0, 280.0, 200.0, 22.0 ],
					"text" : "script show fnAmp1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tAl-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 3200.0, 250.0, 60.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tE-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3630.0, 250.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-iE-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 280.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-and-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 320.0, 50.0, 22.0 ],
					"text" : "&&"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selC-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 350.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mIgn-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 380.0, 200.0, 22.0 ],
					"text" : "script ignoreclick fnAmp1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mRes-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3440.0, 380.0, 200.0, 22.0 ],
					"text" : "script respondtoclick fnAmp1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-lb-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 130.0, 70.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-del-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 160.0, 70.0, 22.0 ],
					"text" : "del 1200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tinit-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 3820.0, 190.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi0-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3820.0, 220.0, 40.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi1-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3880.0, 220.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi2-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3940.0, 220.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selF-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 650.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFh-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 680.0, 200.0, 22.0 ],
					"text" : "script hide fnFreq2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFs-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3410.0, 680.0, 200.0, 22.0 ],
					"text" : "script show fnFreq2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tauto-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3630.0, 680.0, 60.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoset-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3700.0, 710.0, 60.0, 22.0 ],
					"text" : "set 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoval-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3630.0, 710.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tA-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3200.0, 740.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selA-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3280.0, 770.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAh-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3280.0, 800.0, 200.0, 22.0 ],
					"text" : "script hide fnAmp2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAs-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3490.0, 800.0, 200.0, 22.0 ],
					"text" : "script show fnAmp2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tAl-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 3200.0, 770.0, 60.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tE-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3630.0, 770.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-iE-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 800.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-and-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 840.0, 50.0, 22.0 ],
					"text" : "&&"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selC-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 870.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mIgn-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 900.0, 200.0, 22.0 ],
					"text" : "script ignoreclick fnAmp2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mRes-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3440.0, 900.0, 200.0, 22.0 ],
					"text" : "script respondtoclick fnAmp2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-lb-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 650.0, 70.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-del-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 680.0, 70.0, 22.0 ],
					"text" : "del 1200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tinit-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 3820.0, 710.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi0-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3820.0, 740.0, 40.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi1-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3880.0, 740.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi2-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3940.0, 740.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selF-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 1170.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFh-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 1200.0, 200.0, 22.0 ],
					"text" : "script hide fnFreq3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFs-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3410.0, 1200.0, 200.0, 22.0 ],
					"text" : "script show fnFreq3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tauto-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3630.0, 1200.0, 60.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoset-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3700.0, 1230.0, 60.0, 22.0 ],
					"text" : "set 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoval-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3630.0, 1230.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tA-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3200.0, 1260.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selA-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3280.0, 1290.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAh-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3280.0, 1320.0, 200.0, 22.0 ],
					"text" : "script hide fnAmp3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAs-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3490.0, 1320.0, 200.0, 22.0 ],
					"text" : "script show fnAmp3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tAl-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 3200.0, 1290.0, 60.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tE-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3630.0, 1290.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-iE-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 1320.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-and-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 1360.0, 50.0, 22.0 ],
					"text" : "&&"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selC-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 1390.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mIgn-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 1420.0, 200.0, 22.0 ],
					"text" : "script ignoreclick fnAmp3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mRes-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3440.0, 1420.0, 200.0, 22.0 ],
					"text" : "script respondtoclick fnAmp3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-lb-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 1170.0, 70.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-del-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 1200.0, 70.0, 22.0 ],
					"text" : "del 1200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tinit-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 3820.0, 1230.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi0-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3820.0, 1260.0, 40.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi1-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3880.0, 1260.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi2-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3940.0, 1260.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selF-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 1690.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFh-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 1720.0, 200.0, 22.0 ],
					"text" : "script hide fnFreq4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFs-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3410.0, 1720.0, 200.0, 22.0 ],
					"text" : "script show fnFreq4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tauto-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3630.0, 1720.0, 60.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoset-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3700.0, 1750.0, 60.0, 22.0 ],
					"text" : "set 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoval-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3630.0, 1750.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tA-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3200.0, 1780.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selA-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3280.0, 1810.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAh-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3280.0, 1840.0, 200.0, 22.0 ],
					"text" : "script hide fnAmp4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAs-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3490.0, 1840.0, 200.0, 22.0 ],
					"text" : "script show fnAmp4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tAl-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 3200.0, 1810.0, 60.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tE-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3630.0, 1810.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-iE-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 1840.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-and-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 1880.0, 50.0, 22.0 ],
					"text" : "&&"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selC-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 1910.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mIgn-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 1940.0, 200.0, 22.0 ],
					"text" : "script ignoreclick fnAmp4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mRes-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3440.0, 1940.0, 200.0, 22.0 ],
					"text" : "script respondtoclick fnAmp4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-lb-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 1690.0, 70.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-del-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 1720.0, 70.0, 22.0 ],
					"text" : "del 1200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tinit-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 3820.0, 1750.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi0-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3820.0, 1780.0, 40.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi1-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3880.0, 1780.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi2-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3940.0, 1780.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-lb-clean",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 4100.0, 40.0, 70.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-del-clean",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 4100.0, 70.0, 70.0, 22.0 ],
					"text" : "del 2000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mclean",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4100.0, 100.0, 60.0, 22.0 ],
					"text" : "clean"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selR-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 4300.0, 400.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowF-1",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 430.0, 620.0, 35.0 ],
					"text" : "script show rowFt1, script show number[22], script show number[21], script show rowFd1, script show rowFl1, script hide rowAt1, script hide number[19], script hide number[18], script hide rowAd1, script hide rowAl1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowA-1",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 460.0, 620.0, 35.0 ],
					"text" : "script show rowAt1, script show number[19], script show number[18], script show rowAd1, script show rowAl1, script hide rowFt1, script hide number[22], script hide number[21], script hide rowFd1, script hide rowFl1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selR-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 4300.0, 520.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowF-2",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 550.0, 620.0, 35.0 ],
					"text" : "script show rowFt2, script show number[16], script show number[15], script show rowFd2, script show rowFl2, script hide rowAt2, script hide number[13], script hide number[12], script hide rowAd2, script hide rowAl2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowA-2",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 580.0, 620.0, 35.0 ],
					"text" : "script show rowAt2, script show number[13], script show number[12], script show rowAd2, script show rowAl2, script hide rowFt2, script hide number[16], script hide number[15], script hide rowFd2, script hide rowFl2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selR-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 4300.0, 640.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowF-3",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 670.0, 620.0, 35.0 ],
					"text" : "script show rowFt3, script show number[10], script show number[9], script show rowFd3, script show rowFl3, script hide rowAt3, script hide number[7], script hide number[6], script hide rowAd3, script hide rowAl3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowA-3",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 700.0, 620.0, 35.0 ],
					"text" : "script show rowAt3, script show number[7], script show number[6], script show rowAd3, script show rowAl3, script hide rowFt3, script hide number[10], script hide number[9], script hide rowFd3, script hide rowFl3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selR-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 4300.0, 760.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowF-4",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 790.0, 620.0, 35.0 ],
					"text" : "script show rowFt4, script show number[4], script show number[3], script show rowFd4, script show rowFl4, script hide rowAt4, script hide number[1], script hide number, script hide rowAd4, script hide rowAl4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowA-4",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 820.0, 620.0, 35.0 ],
					"text" : "script show rowAt4, script show number[1], script show number, script show rowAd4, script show rowAl4, script hide rowFt4, script hide number[4], script hide number[3], script hide rowFd4, script hide rowFl4"
				}

			}
, 			{
				"box" : 				{
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"grid" : 3,
					"gridcolor" : [ 0.5, 0.5, 0.5, 0.35 ],
					"gridstep_x" : 1000.0,
					"id" : "obj-77",
					"linecolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 411.884978999999987, 169.440978999999999, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 4.0, 711.0, 188.046642690896988 ],
					"range" : [ 0.0, 50.0 ],
					"snap2grid" : 3,
					"varname" : "fnFreq1"
				}

			}
, 			{
				"box" : 				{
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"grid" : 3,
					"gridcolor" : [ 0.5, 0.5, 0.5, 0.35 ],
					"gridstep_x" : 1000.0,
					"id" : "obj-194",
					"linecolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 422.126128999999992, 1304.653686999999991, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 438.423078499999974, 196.0, 709.0, 188.0 ],
					"range" : [ -1.0, 0.0 ],
					"snap2grid" : 3,
					"varname" : "fnFreq2"
				}

			}
, 			{
				"box" : 				{
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"grid" : 3,
					"gridcolor" : [ 0.5, 0.5, 0.5, 0.35 ],
					"gridstep_x" : 1000.0,
					"id" : "obj-314",
					"linecolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.714539000000002, 2416.025634999999966, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 438.969439868282279, 389.0, 710.0, 188.0 ],
					"range" : [ 0.0, 50.0 ],
					"snap2grid" : 3,
					"varname" : "fnFreq3"
				}

			}
, 			{
				"box" : 				{
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"grid" : 3,
					"gridcolor" : [ 0.5, 0.5, 0.5, 0.35 ],
					"gridstep_x" : 1000.0,
					"id" : "obj-780",
					"linecolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.714539000000002, 3573.013428000000204, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 440.8555600088348, 773.0, 709.0, 188.39474356174469 ],
					"range" : [ 0.0, 50.0 ],
					"snap2grid" : 3,
					"varname" : "fnFreq4"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"id" : "obj-ttx-lbl-totms",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3200.0, 430.0, 88.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 129.0, 7.0, 88.0, 24.0 ],
					"text" : "TOTAL ms",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-tot-i",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3420.0, 470.0, 30.0, 22.0 ],
					"text" : "t i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-tot-set",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3420.0, 500.0, 80.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 1, 1, 1, 1 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "color",
					"fontname" : "Arial",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-ttx-disp-totms",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3280.0, 430.0, 195.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 28.0, 124.0, 49.0 ],
					"text" : "0",
					"textcolor" : [ 0.25098, 0.501961, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-tot-zero",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3550.0, 500.0, 45.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-tot-zero-ms",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3610.0, 500.0, 80.0, 22.0 ],
					"text" : "set 0:00.0"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"id" : "obj-ttx-lbl-prems",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3200.0, 550.0, 100.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 90.0, 117.0, 24.0 ],
					"text" : "Bar Time ms"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-pre-i",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3420.0, 590.0, 30.0, 22.0 ],
					"text" : "t i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-pre-set",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3420.0, 620.0, 80.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 1, 1, 1, 1 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "color",
					"fontname" : "Arial",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-ttx-disp-prems",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3280.0, 550.0, 195.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 114.0, 124.0, 49.0 ],
					"text" : "0",
					"textcolor" : [ 0.25098, 0.501961, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"id" : "obj-ttx-lbl-col",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3200.0, 670.0, 83.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 266.0, 90.0, 57.0, 24.0 ],
					"text" : "Bar #"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-col-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3420.0, 710.0, 70.0, 22.0 ],
					"text" : "clip 1 600"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-col-sub",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3420.0, 740.0, 32.0, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-col-mod",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3420.0, 770.0, 40.0, 22.0 ],
					"text" : "% 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-col-add",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3420.0, 800.0, 32.0, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ttx-col-set",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3420.0, 830.0, 80.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 1, 1, 1, 1 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "color",
					"fontname" : "Arial",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-ttx-disp-col",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3280.0, 670.0, 195.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 266.0, 114.0, 57.0, 49.0 ],
					"text" : "1",
					"textcolor" : [ 0.25098, 0.501961, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"id" : "obj-tt-label",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3160.0, 685.0, 66.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 7.0, 109.0, 42.0 ],
					"text" : "TOTAL m:s\n"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.211764705882353, 0.223529411764706, 0.223529411764706, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-at-btn-0",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 4760.0, 140.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.547129237954096, 65.526312947273254, 81.0, 15.0 ],
					"rounded" : 4.0,
					"text" : "Adjust to time",
					"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-fcur-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3600.0, 4790.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selzd-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 4820.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-tgo-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 3600.0, 4850.0, 40.0, 22.0 ],
					"text" : "t f b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-seq-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 3600.0, 4880.0, 70.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mzero-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4000.0, 4910.0, 24.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpf-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 4910.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpa-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3950.0, 4910.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpf-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 3900.0, 4940.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpa-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 4030.0, 4940.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lastf-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3900.0, 4970.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lasta-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4030.0, 4970.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-max-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 3900.0, 5000.0, 74.0, 22.0 ],
					"text" : "maximum 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selz-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3750.0, 4970.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdom-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 5000.0, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-msetdom-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3600.0, 5030.0, 115.0, 22.0 ],
					"text" : "prepend setdomain"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.169638499617577, 0.179220646619797, 0.178957134485245, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-at-btn-1",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 5060.0, 140.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.420815700594858, 257.0, 81.0, 15.0 ],
					"rounded" : 4.0,
					"text" : "Adjust to time",
					"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-fcur-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3600.0, 5090.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selzd-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 5120.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-tgo-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 3600.0, 5150.0, 40.0, 22.0 ],
					"text" : "t f b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-seq-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 3600.0, 5180.0, 70.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mzero-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4000.0, 5210.0, 24.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpf-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 5210.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpa-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3950.0, 5210.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpf-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 3900.0, 5240.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpa-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 4030.0, 5240.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lastf-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3900.0, 5270.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lasta-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4030.0, 5270.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-max-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 3900.0, 5300.0, 74.0, 22.0 ],
					"text" : "maximum 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selz-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3750.0, 5270.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdom-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 5300.0, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-msetdom-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3600.0, 5330.0, 115.0, 22.0 ],
					"text" : "prepend setdomain"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.225904375314713, 0.235901802778244, 0.235749781131744, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-at-btn-2",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 5360.0, 140.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.381958628003076, 452.501824289560318, 81.0, 15.161919623613358 ],
					"rounded" : 4.0,
					"text" : "Adjust to time",
					"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"textoncolor" : [ 1.0, 0.996078431372549, 0.996078431372549, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-fcur-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3600.0, 5390.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selzd-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 5420.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-tgo-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 3600.0, 5450.0, 40.0, 22.0 ],
					"text" : "t f b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-seq-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 3600.0, 5480.0, 70.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mzero-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4000.0, 5510.0, 24.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpf-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 5510.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpa-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3950.0, 5510.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpf-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 3900.0, 5540.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpa-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 4030.0, 5540.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lastf-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3900.0, 5570.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lasta-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4030.0, 5570.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-max-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 3900.0, 5600.0, 74.0, 22.0 ],
					"text" : "maximum 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selz-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3750.0, 5570.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdom-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 5600.0, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-msetdom-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3600.0, 5630.0, 115.0, 22.0 ],
					"text" : "prepend setdomain"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.242952138185501, 0.249816998839378, 0.249544262886047, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-at-btn-3",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 5660.0, 140.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.547129237954096, 834.368438839912415, 81.0, 15.261919623613494 ],
					"rounded" : 4.0,
					"text" : "Adjust to time",
					"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"textoncolor" : [ 1.0, 0.988235294117647, 0.988235294117647, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-fcur-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3600.0, 5690.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selzd-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 5720.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-tgo-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 3600.0, 5750.0, 40.0, 22.0 ],
					"text" : "t f b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-seq-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 3600.0, 5780.0, 70.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mzero-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4000.0, 5810.0, 24.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpf-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 5810.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpa-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3950.0, 5810.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpf-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 3900.0, 5840.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpa-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 4030.0, 5840.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lastf-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3900.0, 5870.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lasta-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4030.0, 5870.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-max-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 3900.0, 5900.0, 74.0, 22.0 ],
					"text" : "maximum 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selz-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3750.0, 5870.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdom-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 5900.0, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-msetdom-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3600.0, 5930.0, 115.0, 22.0 ],
					"text" : "prepend setdomain"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.286274509803922, 0.290196078431373, 0.298039215686275, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-at-all-btn",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 5960.0, 140.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.5, 217.0, 104.0, 21.0 ],
					"rounded" : 4.0,
					"text" : "Adjust all to time",
					"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-tall",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 3600.0, 6000.0, 62.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.4, 0.8, 1, 0.36 ],
					"border" : 1,
					"id" : "obj-84",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.434981999999991, 190.440978999999999, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 168.756975412368774, 325.0, 600.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-fd-min-0",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3800.0, 6700.0, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 332.205024087731317, 22.480620503425598, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-fd-max-0",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3860.0, 6700.0, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.840683663193659, 22.480620503425598, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-fd-btn-0",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 6400.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 331.520815038983301, 45.5, 81.0, 14.0 ],
					"rounded" : 4.0,
					"text" : "Hz: Global",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "Hz: Own",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-ovr-0",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 6460.0, 46.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-t-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 3600.0, 6490.0, 54.0, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setbtn-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 6520.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-inv-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3750.0, 6520.0, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tbtn-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3600.0, 6430.0, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-sel0-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 6520.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tg-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3600.0, 6550.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-rgate-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 6580.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-trec-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4050.0, 6610.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmin-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 6580.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmax-0",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 6580.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmin-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 6640.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmax-0",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 6640.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-one-0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 6460.0, 24.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-fd-btn-1",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 6740.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.420815700594858, 236.256975412368774, 81.0, 14.0 ],
					"rounded" : 4.0,
					"text" : "Hz: Global",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "Hz: Own",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-ovr-1",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 6800.0, 46.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-t-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 3600.0, 6830.0, 54.0, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setbtn-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 6860.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-inv-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3750.0, 6860.0, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tbtn-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3600.0, 6770.0, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-sel0-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 6860.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tg-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3600.0, 6890.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-rgate-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 6920.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-trec-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4050.0, 6950.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmin-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 6920.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmax-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 6920.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmin-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 6980.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmax-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 6980.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-one-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 6800.0, 24.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-fd-btn-2",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 7080.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.926832551066354, 431.33638072013855, 81.0, 14.0 ],
					"rounded" : 4.0,
					"text" : "Hz: Global",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "Hz: Own",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-ovr-2",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 7140.0, 46.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-t-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 3600.0, 7170.0, 54.0, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setbtn-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 7200.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-inv-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3750.0, 7200.0, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tbtn-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3600.0, 7110.0, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-sel0-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 7200.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tg-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3600.0, 7230.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-rgate-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 7260.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-trec-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4050.0, 7290.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmin-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 7260.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmax-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 7260.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmin-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 7320.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmax-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 7320.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-one-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 7140.0, 24.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-fd-btn-3",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 7420.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 331.520815038983301, 815.0, 81.0, 14.0 ],
					"rounded" : 4.0,
					"text" : "Hz: Global",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "Hz: Own",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-ovr-3",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 7480.0, 46.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-t-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 3600.0, 7510.0, 54.0, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setbtn-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 7540.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-inv-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3750.0, 7540.0, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tbtn-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3600.0, 7450.0, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-sel0-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 7540.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tg-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3600.0, 7570.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-rgate-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 7600.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-trec-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4050.0, 7630.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmin-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 7600.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmax-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 7600.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmin-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 7660.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmax-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 7660.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-one-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 7480.0, 24.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-rseq",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 3600.0, 7760.0, 52.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tref",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 3800.0, 7800.0, 62.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-trg",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 3600.0, 7800.0, 62.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-lb",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 4000.0, 7760.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-del",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 4000.0, 7800.0, 50.0, 22.0 ],
					"text" : "del 600"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tinit",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4000.0, 7840.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-zero",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4000.0, 7880.0, 24.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tgi",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4100.0, 7880.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.814215242862701, 0.858486652374268, 0.920997381210327, 1 ],
					"id" : "obj-70",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 599.0, 398.5, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 329.520815038983301, 4.0, 85.0, 188.0 ],
					"proportion" : 0.5,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.693735420703888, 0.791479468345642, 0.896844148635864, 1 ],
					"id" : "obj-71",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 614.0, 413.5, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 329.520815038983301, 195.481480121612549, 88.800001323223114, 188.000002801418304 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.761389136314392, 0.828850388526917, 0.911479353904724, 1 ],
					"id" : "obj-72",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 629.0, 428.5, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 329.520815038983301, 389.0, 88.800001323223114, 187.931021600961685 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.693735420703888, 0.791479468345642, 0.896844148635864, 1 ],
					"id" : "obj-73",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 644.0, 443.5, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 329.520815038983301, 772.564242601394653, 85.0, 188.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3600.0, 8020.0, 460.0, 20.0 ],
					"text" : "TOTAL acumulado: Time Domain de las celdas anteriores de la MISMA FILA"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-rcap",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 3600.0, 8060.0, 40.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-scap",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 3660.0, 8060.0, 40.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-del",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3600.0, 8090.0, 50.0, 22.0 ],
					"text" : "del 50"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-cellstore",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3860.0, 8090.0, 40.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-domstore",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3930.0, 8090.0, 40.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-tbb",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3600.0, 8120.0, 45.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-pack",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3860.0, 8150.0, 65.0, 22.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-learn",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3860.0, 8180.0, 90.0, 22.0 ],
					"text" : "prepend learn"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-qry",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4000.0, 8180.0, 90.0, 22.0 ],
					"text" : "prepend query"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-mzero",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4120.0, 8180.0, 40.0, 22.0 ],
					"text" : "zero"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-js",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3600.0, 8220.0, 110.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "cell_times.js",
						"parameter_enable" : 0
					}
,
					"text" : "js cell_times.js"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-i",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3600.0, 8250.0, 40.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-val",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3660.0, 8250.0, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-tofs",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3600.0, 8280.0, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-notplay",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3750.0, 8280.0, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-dgate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3600.0, 8310.0, 60.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-latch",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3860.0, 8310.0, 40.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-tlat",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3860.0, 8340.0, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-add",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 4000.0, 8370.0, 40.0, 22.0 ],
					"text" : "+ 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-out",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3600.0, 8400.0, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ct-start",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4120.0, 8310.0, 45.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 24.0,
					"id" : "obj-c5-header",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 11026.025634999999966, 1000.0, 33.0 ],
					"text" : "CANAL 5 (sonido) - copia estructural del canal 3. La luz sigue siendo el canal 4."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-c5-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.434981999999991, 9021.44097900000088, 100.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 332.205024087731317, 581.0, 100.0, 19.0 ],
					"text" : "Freq. Dom (Hz)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-73",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.318726000000026, 11058.883788999999524, 55.0, 22.0 ],
					"text" : "r 5Fpitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-86",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.264557000000025, 11770.024413999999524, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.255858999999987, 10996.409180000000561, 74.0, 22.0 ],
					"text" : "minimum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.255858999999987, 10970.909180000000561, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.255858999999987, 10940.766601999999693, 78.0, 22.0 ],
					"text" : "maximum $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-84",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 791.163452000000007, 11575.242431999999098, 53.0, 35.0 ],
					"text" : "xyc 0 0. -0.8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 994.065307999999959, 11510.615234000000783, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 929.315429999999992, 11510.615234000000783, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-22",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 878.065429999999992, 11552.61547900000005, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-24",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 801.896300999999994, 11032.661377000000357, 53.0, 35.0 ],
					"text" : "xyc 0 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 948.896178999999961, 10957.161377000000357, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 884.146300999999994, 10957.161377000000357, 32.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-30",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 832.896300999999994, 10999.161377000000357, 143.0, 22.0 ],
					"text" : "sprintf xyc %ld %.2f %.2f"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-40",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.032714999999996, 11259.225586000000476, 57.0, 22.0 ],
					"text" : "r 5gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1399.143798999999944, 12074.173339999999371, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 1495.166504000000032, 12077.173339999999371, 63.0, 22.0 ],
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1495.166504000000032, 12108.173339999999371, 50.0, 22.0 ],
					"text" : "s 5amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-13",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1457.166504000000032, 12037.173339999999371, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-12",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 1362.143798999999944, 12037.173339999999371, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1399.143798999999944, 12108.173339999999371, 59.0, 22.0 ],
					"text" : "s 5gpitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-c5-10",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1528.187012000000095, 12002.173339999999371, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-c5-9",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1429.687012000000095, 12003.173339999999371, 46.0, 21.0 ],
					"text" : "curve~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.932708999999988, 11325.225586000000476, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 302.764525999999989, 11403.025634999999966, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 222.264542000000006, 11788.024413999999524, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.264525999999989, 11663.315430000000561, 53.0, 22.0 ],
					"text" : "s mute5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-c5-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.700210999999996, 11377.525634999999966, 39.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.699928486649469, 722.382004141807556, 39.0, 18.0 ],
					"text" : "MUTE"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.4, 0.4, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-c5-8",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 252.700210999999996, 11403.025634999999966, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.916517818276361, 741.73684173822403, 20.526316523551941, 20.526316523551941 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.032714999999996, 11285.025634999999966, 60.0, 22.0 ],
					"text" : "OSCnote"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-72",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.464539000000002, 11137.025634999999966, 57.0, 22.0 ],
					"text" : "r 5gpitch"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 356.332733000000019, 11562.89990200000102, 78.0, 22.0 ],
					"text" : "receive~ 5lvl"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 334.464539000000002, 11199.225586000000476, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.464539000000002, 11231.025634999999966, 32.5, 22.0 ],
					"text" : "-"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 338.464539000000002, 11325.225586000000476, 43.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 302.764525999999989, 11801.388183999999455, 41.0, 22.0 ],
					"text" : "0 150"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 642.641479000000004, 11544.916504000000714, 34.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-38",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 565.44348100000002, 11490.296387000000323, 46.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-c5-37",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 203.264542000000006, 11403.025634999999966, 41.0, 41.0 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 287.264525999999989, 11835.024413999999524, 32.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.264525999999989, 11906.024413999999524, 50.0, 22.0 ],
					"text" : "s zero5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 209.264542000000006, 11321.025634999999966, 32.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.264542000000006, 11291.025634999999966, 124.0, 22.0 ],
					"text" : "sprintf range %ld %ld"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-c5-50",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.264525999999933, 11242.025634999999966, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.783972943131403, 601.677395790815353, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-c5-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 258.264525999999989, 11239.025634999999966, 36.0, 19.0 ],
					"text" : "Max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-c5-51",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 213.264542000000006, 11242.025634999999966, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 331.848491484229044, 601.677395790815353, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-c5-88",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.264542000000006, 11240.025634999999966, 37.0, 19.0 ],
					"text" : "Min"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 287.264525999999989, 11341.825439000000188, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.264542000000006, 11291.025634999999966, 44.0, 20.0 ],
					"text" : "Clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-85",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.264525999999989, 11335.025634999999966, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"hidden" : 1,
					"id" : "obj-c5-2",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 703.264542000000006, 11162.025634999999966, 83.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.264542000000006, 11191.025634999999966, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1069.315307999999959, 11462.472655999999915, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1016.565307999999959, 11462.472655999999915, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-c5-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 954.565307999999959, 11462.472655999999915, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 656.0, 63.0, 20.0 ],
					"text" : "Amplitude",
					"varname" : "rowAl5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 867.315307999999959, 11462.472655999999915, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"hidden" : 1,
					"id" : "obj-c5-83",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1075.315307999999959, 11482.472655999999915, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1216.969439868282279, 725.0, 20.0, 20.0 ],
					"varname" : "rowAd5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-c5-17",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1017.565307999999959, 11482.472655999999915, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 725.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -0.8 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-c5-17",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-c5-17",
							"parameter_type" : 0
						}

					}
,
					"varname" : "rowAc5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-c5-18",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 954.565307999999959, 11482.472655999999915, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 676.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-c5-18",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-c5-18",
							"parameter_type" : 0
						}

					}
,
					"varname" : "rowAv5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-c5-19",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1367.315307999999959, 11482.472655999999915, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 10000 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-c5-19",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-c5-19",
							"parameter_type" : 0
						}

					}
,
					"varname" : "rowAms5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1024.146240000000034, 10909.018555000000561, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1210.969439868282279, 705.0, 44.0, 20.0 ],
					"text" : "Draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 971.396178999999961, 10909.018555000000561, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 705.0, 44.0, 20.0 ],
					"text" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 909.396178999999961, 10909.018555000000561, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 656.0, 63.0, 20.0 ],
					"text" : "Freq.",
					"varname" : "rowFl5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-c5-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 822.146178999999961, 10909.018555000000561, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 608.0, 65.0, 20.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913, 0.913, 0.913, 0.75 ],
					"blinkcolor" : [ 1.0, 0.89, 0.09, 1.0 ],
					"id" : "obj-c5-23",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1030.146240000000034, 10929.018555000000561, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1216.969439868282279, 725.0, 20.0, 20.0 ],
					"varname" : "rowFd5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-c5-25",
					"maxclass" : "flonum",
					"maximum" : 0.995,
					"minimum" : -0.995,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 972.396178999999961, 10929.018555000000561, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 725.0, 46.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-c5-25",
							"parameter_mmax" : 0.995,
							"parameter_mmin" : -0.995,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-c5-25",
							"parameter_type" : 0
						}

					}
,
					"varname" : "rowFc5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-c5-26",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 909.396178999999961, 10929.018555000000561, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.969439868282279, 676.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 667.799999999999955 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-c5-26",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-c5-26",
							"parameter_type" : 0
						}

					}
,
					"varname" : "rowFv5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-c5-27",
					"maxclass" : "flonum",
					"maximum" : 0.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1322.146178999999847, 10929.018555000000561, 77.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "obj-c5-27",
							"parameter_mmax" : 0.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "obj-c5-27",
							"parameter_type" : 0
						}

					}
,
					"varname" : "rowFms5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"format" : 6,
					"id" : "obj-c5-71",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.464539000000002, 11167.025634999999966, 66.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 335.813920969073251, 694.271406680345535, 73.223681569099426, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"format" : 6,
					"id" : "obj-c5-68",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 349.032714999999996, 11930.024413999999524, 44.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.969439868282279, 752.0, 24.57626961171627, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-66",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 356.332733000000019, 11649.888183999999455, 42.099975999999998, 272.272704999999974 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.969439868282279, 592.0, 24.999998331069946, 160.810800075531006 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-c5-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.032714999999996, 11366.725586000000476, 34.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.389720140991471, 664.68100069463253, 38.915955543518066, 27.0 ],
					"text" : "-",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 1, 1, 1, 0 ],
					"border" : 2,
					"bordercolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"id" : "obj-c5-69",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.032714999999996, 11359.825439000000188, 42.099975999999998, 40.000008000000001 ],
					"presentation" : 1,
					"presentation_rect" : [ 379.999973952770233, 662.689622908830643, 29.695447919960543, 30.982755571603775 ],
					"proportion" : 0.39,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-c5-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.032714999999996, 11403.025634999999966, 31.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 415.969439868282279, 580.0, 26.86206616461277, 15.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-c5-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 334.464539000000002, 11110.225586000000476, 54.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 335.813920969073251, 670.635216146707535, 53.0, 21.0 ],
					"text" : "PITCH"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"gridcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"gridstep_x" : 1000.0,
					"gridstep_y" : 0.01,
					"id" : "obj-c5-7",
					"ignoreclick" : 1,
					"linecolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.714539000000002, 11634.11547900000005, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 439.969439868282279, 581.0, 709.124934293064143, 187.89474356174469 ],
					"snap2grid" : 3,
					"textcolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"varname" : "fnAmp5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-r-autoplay-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 8850.0, 80.0, 22.0 ],
					"text" : "r autoplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gate-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 8880.0, 50.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tbbb-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1700.0, 8910.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-zero-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1640.0, 8940.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-start-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1700.0, 8940.0, 61.0, 22.0 ],
					"text" : "delay 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-one-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 8970.0, 30.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-add1000-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1800.0, 8940.0, 60.0, 22.0 ],
					"text" : "+ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-delay-stop-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1760.0, 8970.0, 60.0, 22.0 ],
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-msg-fade-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1820.0, 9000.0, 50.0, 22.0 ],
					"text" : "0. 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-r-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 8820.0, 65.0, 22.0 ],
					"text" : "r fp_block"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fp-guard-pre-gate-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 8848.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-engate-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 10140.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzsel-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 880.0, 10168.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-enzmsg-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 880.0, 10196.0, 30.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storeps-4",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 10080.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-storedom-4",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1680.0, 10080.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-tbbb-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1400.0, 10080.0, 60.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-gact-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 10108.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-msg-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1400.0, 10136.0, 30.0, 22.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2b-spa-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1400.0, 10164.0, 90.0, 22.0 ],
					"text" : "s playactive"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-c5-59",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 203.264542000000006, 11162.025634999999966, 83.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 703.264542000000006, 11132.025634999999966, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 753.264542000000006, 11192.025634999999966, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 753.264542000000006, 11222.025634999999966, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-c5-54",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 867.315307999999959, 11482.472655999999915, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 628.0, 77.0, 22.0 ],
					"varname" : "rowAt5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1367.315307999999959, 11452.472655999999915, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1417.315307999999959, 11512.472655999999915, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1417.315307999999959, 11542.472655999999915, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-c5-41",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 822.146178999999961, 10929.018555000000561, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 628.0, 77.0, 22.0 ],
					"varname" : "rowFt5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1322.146178999999847, 10899.018555000000561, 50.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1372.146178999999847, 10959.018555000000561, 50.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1372.146178999999847, 10989.018555000000561, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.803922, 0.156863, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-ms-solo-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 737.264525999999933, 11513.315430000000561, 41.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 341.441865825955347, 741.73684173822403, 20.526316523551941, 20.526316523551941 ],
					"uncheckedcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-ms-lbl-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 737.264525999999933, 11488.315430000000561, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 335.911912226979211, 722.382004141807556, 36.0, 18.0 ],
					"text" : "SOLO"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sel-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 737.264525999999933, 11563.315430000000561, 50.0, 22.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbb-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 737.264525999999933, 11593.315430000000561, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-on-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 737.264525999999933, 11623.315430000000561, 32.0, 22.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-off-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 782.264525999999933, 11623.315430000000561, 32.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-ssend-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 737.264525999999933, 11653.315430000000561, 70.0, 22.0 ],
					"text" : "s solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-clr-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 827.264525999999933, 11593.315430000000561, 50.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-rsolo-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 437.264525999999989, 11453.315430000000561, 70.0, 22.0 ],
					"text" : "r solostate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-sstore-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 11483.315430000000561, 32.0, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tii-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 437.264525999999989, 11513.315430000000561, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eq0-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 11553.315430000000561, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-eqn-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 557.264525999999933, 11553.315430000000561, 40.0, 22.0 ],
					"text" : "== 5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-tbi-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 637.264525999999933, 11483.315430000000561, 40.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-nm-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 637.264525999999933, 11523.315430000000561, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-and-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 11593.315430000000561, 40.0, 22.0 ],
					"text" : "&& 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-ms-or-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 437.264525999999989, 11628.315430000000561, 40.0, 22.0 ],
					"text" : "|| 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-vw-lbl-v-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3200.0, 9800.0, 100.0, 20.0 ],
					"text" : "Ver curvas"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bfreq-5",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3200.0, 9830.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "FREQ",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "FREQ",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bamp-5",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3270.0, 9830.0, 62.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "AMP",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"bgoncolor" : [ 1.0, 0.15, 0.8, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-vw-bedit-5",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3340.0, 9830.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.969439868282279, 581.0, 92.0, 22.0 ],
					"rounded" : 4.0,
					"text" : "Edit: FR",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Edit: AMP",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selF-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 9870.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFh-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 9900.0, 200.0, 22.0 ],
					"text" : "script hide fnFreq5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mFs-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3410.0, 9900.0, 200.0, 22.0 ],
					"text" : "script show fnFreq5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tauto-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3630.0, 9900.0, 60.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoset-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3700.0, 9930.0, 60.0, 22.0 ],
					"text" : "set 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mautoval-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3630.0, 9930.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tA-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3200.0, 9960.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selA-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3280.0, 9990.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAh-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3280.0, 10020.0, 200.0, 22.0 ],
					"text" : "script hide fnAmp5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mAs-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3490.0, 10020.0, 200.0, 22.0 ],
					"text" : "script show fnAmp5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tAl-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 3200.0, 9990.0, 60.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tE-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3630.0, 9990.0, 60.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-iE-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 10020.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-and-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3200.0, 10060.0, 50.0, 22.0 ],
					"text" : "&&"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selC-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3200.0, 10090.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mIgn-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3200.0, 10120.0, 200.0, 22.0 ],
					"text" : "script ignoreclick fnAmp5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mRes-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3440.0, 10120.0, 200.0, 22.0 ],
					"text" : "script respondtoclick fnAmp5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-lb-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 9870.0, 70.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-del-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3820.0, 9900.0, 70.0, 22.0 ],
					"text" : "del 1200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-tinit-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 3820.0, 9930.0, 80.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi0-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3820.0, 9960.0, 40.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi1-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3880.0, 9960.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mi2-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3940.0, 9960.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-selR-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 4300.0, 9340.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowF-5",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 9370.0, 620.0, 35.0 ],
					"text" : "script show rowFt5, script show rowFv5, script show rowFc5, script show rowFd5, script show rowFl5, script hide rowAt5, script hide rowAv5, script hide rowAc5, script hide rowAd5, script hide rowAl5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vw-mrowA-5",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4300.0, 9400.0, 620.0, 35.0 ],
					"text" : "script show rowAt5, script show rowAv5, script show rowAc5, script show rowAd5, script show rowAl5, script hide rowFt5, script hide rowFv5, script hide rowFc5, script hide rowFd5, script hide rowFl5"
				}

			}
, 			{
				"box" : 				{
					"classic_curve" : 1,
					"domain" : 0.009999999776483,
					"grid" : 3,
					"gridcolor" : [ 0.5, 0.5, 0.5, 0.35 ],
					"gridstep_x" : 1000.0,
					"id" : "obj-c5-42",
					"linecolor" : [ 0.0, 0.85, 1.0, 1.0 ],
					"linethickness" : 2.0,
					"maxclass" : "function",
					"mode" : 1,
					"mousemode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.714539000000002, 11116.025634999999966, 940.0, 325.0 ],
					"pointsize" : 3.5,
					"presentation" : 1,
					"presentation_rect" : [ 438.969439868282279, 581.0, 710.0, 188.0 ],
					"range" : [ 0.0, 50.0 ],
					"snap2grid" : 3,
					"varname" : "fnFreq5"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.225904375314713, 0.235901802778244, 0.235749781131744, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-at-btn-4",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 14060.0, 140.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.381958628003076, 644.501824289560318, 81.0, 15.161919623613358 ],
					"rounded" : 4.0,
					"text" : "Adjust to time",
					"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"textoncolor" : [ 1.0, 0.996078431372549, 0.996078431372549, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-fcur-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3600.0, 14090.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selzd-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 14120.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-tgo-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 3600.0, 14150.0, 40.0, 22.0 ],
					"text" : "t f b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-seq-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 3600.0, 14180.0, 70.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mzero-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4000.0, 14210.0, 24.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpf-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 14210.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdumpa-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3950.0, 14210.0, 42.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpf-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 3900.0, 14240.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-unpa-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 4030.0, 14240.0, 105.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lastf-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3900.0, 14270.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-lasta-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4030.0, 14270.0, 30.0, 22.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-max-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 3900.0, 14300.0, 74.0, 22.0 ],
					"text" : "maximum 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-selz-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3750.0, 14270.0, 44.0, 22.0 ],
					"text" : "sel 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-mdom-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 14300.0, 97.0, 22.0 ],
					"text" : "prepend domain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-at-msetdom-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3600.0, 14330.0, 115.0, 22.0 ],
					"text" : "prepend setdomain"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.85, 0.88, 0.9, 1.0 ],
					"bgoncolor" : [ 1.0, 0.62, 0.1, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-fd-btn-4",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 15780.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.926832551066354, 623.33638072013855, 81.0, 14.0 ],
					"rounded" : 4.0,
					"text" : "Hz: Global",
					"textcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"texton" : "Hz: Own",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-ovr-4",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 15840.0, 46.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-t-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 3600.0, 15870.0, 54.0, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setbtn-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 15900.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-inv-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3750.0, 15900.0, 40.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tbtn-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 3600.0, 15810.0, 40.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-sel0-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 3600.0, 15900.0, 40.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-tg-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3600.0, 15930.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-rgate-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 15960.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-trec-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4050.0, 15990.0, 40.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmin-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 15960.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-gmax-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 15960.0, 40.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmin-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3750.0, 16020.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-setmax-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 16020.0, 78.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-fd-one-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4050.0, 15840.0, 24.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.761389136314392, 0.828850388526917, 0.911479353904724, 1 ],
					"id" : "obj-c5-63",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 629.0, 9128.5, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 329.520815038983301, 581.0, 88.800001323223114, 187.931021600961685 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-mixin",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1523.442017000000078, 439.94097899999997, 102.0, 22.0 ],
					"text" : "receive~ mixout5"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-c5-exactnum",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2973.62897378900152, 1326.407042999999931, 52.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c5-exactsend",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3075.435370789001354, 1331.907104000000118, 60.0, 22.0 ],
					"text" : "s #exact5"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.850980392156863, 0.517647058823529, 0.223529411764706, 1.0 ],
					"bgoncolor" : [ 1.0, 0.35, 0.35, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-cl-btn-1",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5100.0, 100.0, 120.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1155.0, 168.0, 94.0, 18.0 ],
					"rounded" : 4.0,
					"text" : "Clear curve",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-i-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 5100.0, 140.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-sel-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 5100.0, 170.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mF-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5100.0, 200.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mA-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5180.0, 200.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.850980392156863, 0.517647058823529, 0.223529411764706, 1.0 ],
					"bgoncolor" : [ 1.0, 0.35, 0.35, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-cl-btn-2",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5100.0, 300.0, 120.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1156.0, 358.0, 92.0, 18.0 ],
					"rounded" : 4.0,
					"text" : "Clear curve",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-i-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 5100.0, 340.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-sel-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 5100.0, 370.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mF-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5100.0, 400.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mA-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5180.0, 400.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.850980392156863, 0.517647058823529, 0.223529411764706, 1.0 ],
					"bgoncolor" : [ 1.0, 0.35, 0.35, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-cl-btn-3",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5100.0, 500.0, 120.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1157.400000000000091, 559.0, 92.0, 18.0 ],
					"rounded" : 4.0,
					"text" : "Clear curve",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-i-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 5100.0, 540.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-sel-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 5100.0, 570.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mF-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5100.0, 600.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mA-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5180.0, 600.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.850980392156863, 0.517647058823529, 0.223529411764706, 1.0 ],
					"bgoncolor" : [ 1.0, 0.35, 0.35, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-cl-btn-4",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5100.0, 700.0, 120.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.0, 943.0, 92.0, 18.0 ],
					"rounded" : 4.0,
					"text" : "Clear curve",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-i-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 5100.0, 740.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-sel-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 5100.0, 770.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mF-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5100.0, 800.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mA-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5180.0, 800.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.850980392156863, 0.517647058823529, 0.223529411764706, 1.0 ],
					"bgoncolor" : [ 1.0, 0.35, 0.35, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-cl-btn-5",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5100.0, 900.0, 120.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1158.0, 751.0, 92.0, 18.0 ],
					"rounded" : 4.0,
					"text" : "Clear curve",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-i-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 5100.0, 940.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-sel-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 5100.0, 970.0, 70.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mF-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5100.0, 1000.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-mA-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5180.0, 1000.0, 45.0, 22.0 ],
					"text" : "clear"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10001", 0 ],
					"source" : [ "obj-10000", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10002", 0 ],
					"source" : [ "obj-10001", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-10002", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-js", 0 ],
					"order" : 0,
					"source" : [ "obj-10002", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 354.403167999999994, 377.041076999999973, 343.834991000000002, 377.041076999999973 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-269", 0 ],
					"order" : 4,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-fpsel", 0 ],
					"order" : 0,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-inv", 0 ],
					"order" : 3,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-pre", 0 ],
					"order" : 2,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-scap", 0 ],
					"order" : 1,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"midpoints" : [ 1839.831055000000106, 127.241135, 1839.831055000000106, 127.241135 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"midpoints" : [ 453.694111666666629, 1240.103759999999966, 431.626128999999992, 1240.103759999999966 ],
					"order" : 0,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 453.694111666666629, 1495.910155999999915, 408.200531000000012, 1495.910155999999915 ],
					"order" : 9,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 453.694111666666629, 1186.283638003383658, 392.780333999999982, 1186.283638003383658, 392.780333999999982, 673.353638000000046, 422.200531000000012, 673.353638000000046 ],
					"order" : 2,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 687.472960999999941, 1189.93327302030184, 369.23577899999998, 1189.93327302030184, 369.23577899999998, 566.64196800000002, 274.989039999999989, 566.64196800000002 ],
					"source" : [ "obj-112", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"midpoints" : [ 453.694111666666629, 1212.0, 408.0, 1212.0, 408.0, 1827.0, 270.0, 1827.0, 270.0, 1848.0, 261.0, 1848.0, 261.0, 2397.0, 420.214539000000002, 2397.0 ],
					"order" : 8,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"midpoints" : [ 453.694111666666629, 2054.834717000000182, 420.214539000000002, 2054.834717000000182 ],
					"order" : 7,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 570.583536333333313, 1192.123054030452749, 265.473418999999978, 1192.123054030452749, 265.473418999999978, 131.089126999999991, 117.194571999999994, 131.089126999999991 ],
					"source" : [ "obj-112", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 336.804686999999944, 1201.521120681060893, 125.902275000000003, 1201.521120681060893, 125.902275000000003, 446.440979000000027, 168.607238999999993, 446.440979000000027 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 453.694111666666629, 1181.904075983081839, 392.372559000000024, 1181.904075983081839, 392.372559000000024, 159.440978999999999, 421.384978999999987, 159.440978999999999 ],
					"order" : 1,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"midpoints" : [ 453.694111666666629, 2374.283446999999796, 420.214539000000002, 2374.283446999999796 ],
					"order" : 6,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-785", 0 ],
					"midpoints" : [ 453.694111666666629, 2631.239990000000034, 420.214539000000002, 2631.239990000000034 ],
					"order" : 5,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"order" : 4,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"order" : 3,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 1839.831055000000106, 164.741135000000014, 1814.907470999999987, 164.741135000000014, 1814.907470999999987, 87.741135, 1785.345215000000053, 87.741135 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 41.694561, 78.0, 33.0, 78.0, 33.0, 42.0, 88.671547000000004, 42.0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"order" : 9,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-0", 0 ],
					"order" : 2,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-315", 0 ],
					"order" : 8,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-473", 0 ],
					"midpoints" : [ 713.934981999999991, 237.0, 297.0, 237.0, 297.0, 225.0, 321.0, 225.0, 321.0, -5.640998, 845.860901000000013, -5.640998 ],
					"order" : 4,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-781", 0 ],
					"order" : 7,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 713.934981999999991, 240.441101000000003, 213.934981999999991, 240.441101000000003 ],
					"order" : 11,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-add1000-0", 0 ],
					"order" : 3,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-0", 1 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-2", 0 ],
					"order" : 6,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-domstore", 1 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-mute", 1 ],
					"order" : 10,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-u3i72wnv7", 0 ],
					"order" : 5,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"midpoints" : [ 381.418700999999999, 1488.953856999999971, 250.186187999999987, 1488.953856999999971 ],
					"order" : 1,
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"midpoints" : [ 381.418700999999999, 1468.553832999999941, 291.084594999999979, 1468.553832999999941, 291.084594999999979, 1268.353882000000112, 700.750534000000016, 1268.353882000000112 ],
					"order" : 0,
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-179", 0 ],
					"midpoints" : [ 313.750548999999978, 1848.0, 261.0, 1848.0, 261.0, 1953.0, 284.750548999999978, 1953.0 ],
					"source" : [ "obj-122", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-491", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 3 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-125", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 0 ],
					"midpoints" : [ 1936.085327000000007, 334.241150000000005, 1889.585327000000007, 334.241150000000005 ],
					"source" : [ "obj-126", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"midpoints" : [ 1681.345215000000053, 285.441131999999982, 1681.345215000000053, 285.441131999999982 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 1 ],
					"midpoints" : [ 1409.977783000000045, 185.741104000000007, 1936.085327000000007, 185.741104000000007 ],
					"order" : 0,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1409.977783000000045, 231.0, 1635.0, 231.0, 1635.0, 388.0, 1466.977783000000045, 388.0 ],
					"order" : 6,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"midpoints" : [ 1409.977783000000045, 309.671573109138478, 1748.345215000000053, 309.671573109138478 ],
					"order" : 2,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"midpoints" : [ 1409.977783000000045, 231.0, 1635.0, 231.0, 1635.0, 368.0, 1401.833374000000049, 368.0 ],
					"order" : 7,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-343", 0 ],
					"order" : 5,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-383", 0 ],
					"order" : 1,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-395", 0 ],
					"order" : 3,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"order" : 4,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 219.934981999999991, 373.441131999999982, 320.659942999999998, 373.441131999999982, 320.659942999999998, 159.441101000000003, 421.384978999999987, 159.441101000000003 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 3,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 2,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 1,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"order" : 4,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"order" : 0,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"order" : 3,
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 2,
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 1,
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"order" : 4,
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"order" : 0,
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 4 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-138", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"order" : 3,
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 2,
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 1,
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"order" : 4,
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"order" : 0,
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbi-2", 0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 5 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-145", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"order" : 3,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 2,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 1,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"order" : 4,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"order" : 0,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"midpoints" : [ 346.518707000000006, 1430.953856999999971, 335.950531000000012, 1430.953856999999971 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"midpoints" : [ 331.950531000000012, 1277.853882000000112, 331.950531000000012, 1277.853882000000112 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 6 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-150", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"order" : 3,
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 2,
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 1,
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 0,
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"order" : 4,
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 7 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"source" : [ "obj-153", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 353.818726000000026, 2152.209961000000021, 346.518707000000006, 2152.209961000000021 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 353.818726000000026, 1868.568970000000036, 353.818726000000026, 1868.568970000000036 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"midpoints" : [ 331.950531000000012, 1388.053832999999941, 381.418700999999999, 1388.053832999999941 ],
					"order" : 0,
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 331.950531000000012, 1340.953856999999971, 331.950531000000012, 1340.953856999999971 ],
					"order" : 1,
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"midpoints" : [ 331.950531000000012, 1396.353759999999966, 284.750548999999978, 1396.353759999999966 ],
					"order" : 2,
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"midpoints" : [ 331.950531000000012, 1402.953856999999971, 335.950531000000012, 1402.953856999999971 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"midpoints" : [ 335.950531000000012, 1470.803832999999941, 346.518707000000006, 1470.803832999999941 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 389.303161999999986, 410.641082999999981, 301.619049000000018, 410.641082999999981, 301.619049000000018, 205.441101000000003, 713.934981999999991, 205.441101000000003 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 389.303161999999986, 428.541076999999973, 263.37063599999999, 428.541076999999973 ],
					"order" : 2,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 389.303161999999986, 410.641082999999981, 306.619049000000018, 410.641082999999981, 306.619049000000018, 285.441101000000003, 223.934981999999991, 285.441101000000003 ],
					"order" : 3,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 389.303161999999986, 410.641082999999981, 331.119049000000018, 410.641082999999981, 331.119049000000018, 285.441101000000003, 272.93499799999995, 285.441101000000003 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 345.134978999999987, 216.041107000000011, 345.134978999999987, 216.041107000000011 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"midpoints" : [ 300.250548999999978, 2058.0, 330.0, 2058.0, 330.0, 2196.0, 1419.0, 2196.0, 1419.0, 2190.0, 1540.313965000000053, 2190.0 ],
					"order" : 0,
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-221", 0 ],
					"midpoints" : [ 300.250548999999978, 2058.0, 330.0, 2058.0, 330.0, 2196.0, 1419.0, 2196.0, 1419.0, 2202.0, 1441.813965000000053, 2202.0 ],
					"order" : 1,
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"midpoints" : [ 299.750548999999978, 2021.073486000000003, 300.250548999999978, 2021.073486000000003 ],
					"source" : [ "obj-178", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-181", 0 ],
					"midpoints" : [ 284.750548999999978, 2037.891601999999921, 284.750548999999978, 2037.891601999999921 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 284.750548999999978, 1989.0, 261.0, 1989.0, 261.0, 1845.0, 324.0, 1845.0, 324.0, 1461.0, 321.0, 1461.0, 321.0, 1365.0, 318.0, 1365.0, 318.0, 1344.0, 331.950531000000012, 1344.0 ],
					"order" : 0,
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.501961, 0.25098, 0.0, 1.0 ],
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 284.750548999999978, 1990.641601999999921, 284.750548999999978, 1990.641601999999921 ],
					"order" : 1,
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-194", 0 ],
					"midpoints" : [ 298.250548999999978, 1881.675658999999996, 353.225525000000005, 1881.675658999999996, 353.225525000000005, 1222.353882000000112, 431.626128999999992, 1222.353882000000112 ],
					"order" : 1,
					"source" : [ "obj-179", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 298.250548999999978, 1996.141724000000067, 353.225525000000005, 1996.141724000000067, 353.225525000000005, 1850.732666000000108, 408.200531000000012, 1850.732666000000108 ],
					"order" : 2,
					"source" : [ "obj-179", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3ph-send", 0 ],
					"order" : 0,
					"source" : [ "obj-179", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-122", 0 ],
					"midpoints" : [ 143.491561999999988, 1569.353882000000112, 250.500504000000006, 1569.353882000000112, 250.500504000000006, 1509.353882000000112, 300.250548999999978, 1509.353882000000112 ],
					"order" : 2,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-1", 0 ],
					"order" : 1,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzsel-1", 0 ],
					"order" : 0,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-182", 0 ],
					"midpoints" : [ 284.750548999999978, 2105.641602000000148, 284.750548999999978, 2105.641602000000148 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 1 ],
					"midpoints" : [ 220.250533999999988, 1466.353882000000112, 266.000518999999997, 1466.353882000000112, 266.000518999999997, 1397.353882000000112, 311.750534000000016, 1397.353882000000112 ],
					"source" : [ "obj-184", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"midpoints" : [ 206.750533999999988, 1466.353882000000112, 206.750518999999997, 1466.353882000000112, 206.750518999999997, 1397.353882000000112, 206.750533999999988, 1397.353882000000112 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"midpoints" : [ 206.750533999999988, 1436.353882000000112, 307.475494000000026, 1436.353882000000112, 307.475494000000026, 1222.353882000000112, 431.626128999999992, 1222.353882000000112 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"midpoints" : [ 259.750534000000016, 1408.353882000000112, 206.750533999999988, 1408.353882000000112 ],
					"order" : 2,
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-480", 0 ],
					"midpoints" : [ 259.750534000000016, 1392.0, 309.0, 1392.0, 309.0, 1212.0, 675.0, 1212.0, 675.0, 1236.0, 751.189118598411596, 1236.0 ],
					"order" : 1,
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-1", 0 ],
					"order" : 0,
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"midpoints" : [ 210.750533999999988, 1393.353882000000112, 206.750533999999988, 1393.353882000000112 ],
					"order" : 2,
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-479", 0 ],
					"midpoints" : [ 210.750533999999988, 1392.0, 309.0, 1392.0, 309.0, 1233.113475680351257, 751.189118598411596, 1233.113475680351257 ],
					"order" : 1,
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-1", 0 ],
					"order" : 0,
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"midpoints" : [ 233.434981999999991, 403.441101000000003, 279.184966999999972, 403.441101000000003, 279.184966999999972, 334.441131999999982, 324.934981999999991, 334.441131999999982 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 219.934981999999991, 403.441101000000003, 219.93495200000001, 403.441101000000003, 219.93495200000001, 334.441131999999982, 219.934981999999991, 334.441131999999982 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"midpoints" : [ 284.750548999999978, 1485.15380899999991, 346.475525000000005, 1485.15380899999991, 346.475525000000005, 1222.353882000000112, 431.626128999999992, 1222.353882000000112 ],
					"order" : 0,
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 284.750548999999978, 1488.0, 318.0, 1488.0, 318.0, 1515.0, 324.0, 1515.0, 324.0, 1827.0, 408.200531000000012, 1827.0 ],
					"order" : 1,
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"midpoints" : [ 259.750534000000016, 1480.353882000000112, 272.250518999999997, 1480.353882000000112, 272.250518999999997, 1448.15380899999991, 284.750548999999978, 1448.15380899999991 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-221", 0 ],
					"midpoints" : [ 738.626128999999992, 1845.0, 1441.813965000000053, 1845.0 ],
					"source" : [ "obj-194", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpf-1", 0 ],
					"source" : [ "obj-194", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-200", 0 ],
					"midpoints" : [ 700.750534000000016, 1303.353882000000112, 200.750533999999988, 1303.353882000000112 ],
					"order" : 5,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-1", 0 ],
					"order" : 1,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-481", 0 ],
					"midpoints" : [ 700.750534000000016, 1302.0, 177.0, 1302.0, 177.0, 1202.598540067672729, 672.0, 1202.598540067672729, 672.0, 1222.262412250041962, 749.189118598411596, 1222.262412250041962 ],
					"order" : 4,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-add1000-1", 0 ],
					"order" : 2,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-1", 1 ],
					"order" : 0,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-m7yi42pvd", 0 ],
					"order" : 3,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-220", 0 ],
					"midpoints" : [ 715.200530999999955, 2196.0, 1419.0, 2196.0, 1419.0, 2190.0, 1540.313965000000053, 2190.0 ],
					"source" : [ "obj-199", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpa-1", 0 ],
					"source" : [ "obj-199", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70t15q9im", 0 ],
					"source" : [ "obj-1kwldhzhc", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-i7zy4n5jg", 0 ],
					"source" : [ "obj-1t3h3j83z", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 729.200530999999955, 1038.0, 828.0, 1038.0, 828.0, 1101.0, 1356.0, 1101.0, 1356.0, 1050.0, 1545.96252400000003, 1050.0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpa-0", 0 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbi-1", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-194", 0 ],
					"midpoints" : [ 200.750533999999988, 1336.353882000000112, 304.475494000000026, 1336.353882000000112, 304.475494000000026, 1222.353882000000112, 431.626128999999992, 1222.353882000000112 ],
					"order" : 0,
					"source" : [ "obj-200", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 200.750533999999988, 1508.492432000000008, 408.200531000000012, 1508.492432000000008 ],
					"order" : 1,
					"source" : [ "obj-200", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 0 ],
					"midpoints" : [ 1411.270751999999902, 2298.0, 1411.270751999999902, 2298.0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-1", 1 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"midpoints" : [ 1506.293456999999989, 2259.0, 1507.293456999999989, 2259.0 ],
					"source" : [ "obj-211", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"midpoints" : [ 1748.345215000000053, 477.541137999999989, 1748.345215000000053, 477.541137999999989 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 1889.585327000000007, 477.541137999999989, 1889.585327000000007, 477.541137999999989 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"midpoints" : [ 1402.769287000000077, 2373.0, 1422.0, 2373.0, 1422.0, 2340.0, 1386.0, 2340.0, 1386.0, 2271.0, 1411.270751999999902, 2271.0 ],
					"source" : [ "obj-214", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 0 ],
					"midpoints" : [ 1540.313965000000053, 2223.0, 1479.0, 2223.0, 1479.0, 2232.0, 1469.293456999999989, 2232.0 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 0 ],
					"midpoints" : [ 1441.813965000000053, 2262.0, 1365.769287000000077, 2262.0 ],
					"source" : [ "obj-221", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 1447.46252400000003, 1090.053832999999941, 1379.919311999999991, 1090.053832999999941 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-639", 0 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-270", 0 ],
					"midpoints" : [ 358.532714999999996, 2581.625731999999971, 358.532714999999996, 2581.625731999999971 ],
					"source" : [ "obj-235", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-466", 0 ],
					"source" : [ "obj-236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-243", 0 ],
					"midpoints" : [ 1408.643798999999944, 3400.673339999999826, 1408.643798999999944, 3400.673339999999826 ],
					"source" : [ "obj-238", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-2", 1 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 1545.96252400000003, 1089.553832999999941, 1474.942017000000078, 1089.553832999999941 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 0 ],
					"midpoints" : [ 1503.666504000000032, 3366.673339999999826, 1504.666504000000032, 3366.673339999999826 ],
					"source" : [ "obj-241", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-238", 0 ],
					"midpoints" : [ 1408.643798999999944, 3365.173339999999826, 1408.643798999999944, 3365.173339999999826 ],
					"source" : [ "obj-242", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"midpoints" : [ 1537.687012000000095, 3328.673339999999826, 1466.666504000000032, 3328.673339999999826 ],
					"source" : [ "obj-244", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-242", 0 ],
					"midpoints" : [ 1439.187012000000095, 3329.173339999999826, 1371.643798999999944, 3329.173339999999826 ],
					"source" : [ "obj-245", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"midpoints" : [ 393.432708999999988, 2672.625731999999971, 262.200210999999967, 2672.625731999999971 ],
					"order" : 1,
					"source" : [ "obj-248", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-315", 0 ],
					"midpoints" : [ 393.432708999999988, 2652.225586000000021, 303.098602000000028, 2652.225586000000021, 303.098602000000028, 2452.025634999999966, 712.764542000000006, 2452.025634999999966 ],
					"order" : 0,
					"source" : [ "obj-248", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-298", 0 ],
					"midpoints" : [ 325.764525999999989, 2756.160889000000225, 574.94348100000002, 2756.160889000000225 ],
					"source" : [ "obj-249", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1449.132812000000058, 303.0, 1602.0, 303.0, 1602.0, 408.0, 1466.977783000000045, 408.0 ],
					"order" : 4,
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"order" : 1,
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"midpoints" : [ 1449.132812000000058, 303.0, 1362.0, 303.0, 1362.0, 486.0, 1401.833374000000049, 486.0 ],
					"order" : 5,
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-343", 0 ],
					"order" : 3,
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-383", 0 ],
					"order" : 0,
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-395", 1 ],
					"order" : 2,
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1486.942017000000078, 303.0, 1602.0, 303.0, 1602.0, 380.0, 1466.977783000000045, 380.0 ],
					"order" : 4,
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"order" : 1,
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"midpoints" : [ 1486.942017000000078, 303.0, 1362.0, 303.0, 1362.0, 486.0, 1401.833374000000049, 486.0 ],
					"order" : 5,
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-343", 0 ],
					"order" : 3,
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-383", 0 ],
					"order" : 0,
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-395", 0 ],
					"order" : 2,
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 1807.879394999999931, 586.741149999999948, 1807.879394999999931, 586.741149999999948 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 1 ],
					"midpoints" : [ 1532.132812000000058, 303.0, 1602.0, 303.0, 1602.0, 396.0, 1492.977783000000045, 396.0 ],
					"order" : 3,
					"source" : [ "obj-260", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 0 ],
					"order" : 1,
					"source" : [ "obj-260", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"midpoints" : [ 1532.132812000000058, 303.0, 1602.0, 303.0, 1602.0, 438.666655999999989, 1536.0, 438.666655999999989, 1536.0, 485.0, 1527.833374000000049, 485.0 ],
					"order" : 2,
					"source" : [ "obj-260", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-385", 0 ],
					"order" : 0,
					"source" : [ "obj-260", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbi-3", 0 ],
					"source" : [ "obj-265", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 1416.919311999999991, 1126.053832999999941, 1416.919311999999991, 1126.053832999999941 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 0 ],
					"midpoints" : [ 358.532714999999996, 2614.625731999999971, 347.964539000000002, 2614.625731999999971 ],
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"midpoints" : [ 343.964539000000002, 2461.525634999999966, 343.964539000000002, 2461.525634999999966 ],
					"source" : [ "obj-271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-274", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"source" : [ "obj-275", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"midpoints" : [ 365.832733000000019, 3225.592529000000013, 358.532714999999996, 3225.592529000000013 ],
					"source" : [ "obj-276", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-276", 0 ],
					"midpoints" : [ 365.832733000000019, 2915.894042999999783, 365.832733000000019, 2915.894042999999783 ],
					"source" : [ "obj-277", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-248", 0 ],
					"midpoints" : [ 343.964539000000002, 2571.725586000000021, 393.432708999999988, 2571.725586000000021 ],
					"order" : 0,
					"source" : [ "obj-278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-279", 0 ],
					"midpoints" : [ 343.964539000000002, 2524.625731999999971, 343.964539000000002, 2524.625731999999971 ],
					"order" : 1,
					"source" : [ "obj-278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-311", 0 ],
					"midpoints" : [ 343.964539000000002, 2580.025634999999966, 296.764525999999989, 2580.025634999999966 ],
					"order" : 2,
					"source" : [ "obj-278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 0 ],
					"midpoints" : [ 343.964539000000002, 2586.625731999999971, 347.964539000000002, 2586.625731999999971 ],
					"source" : [ "obj-279", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 1511.942017000000078, 1127.553832999999941, 1512.942017000000078, 1127.553832999999941 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-281", 0 ],
					"midpoints" : [ 347.964539000000002, 2654.475586000000021, 358.532714999999996, 2654.475586000000021 ],
					"source" : [ "obj-280", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-705", 0 ],
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-244", 0 ],
					"midpoints" : [ 312.264525999999989, 3129.0, 342.0, 3129.0, 342.0, 3288.0, 1537.687012000000095, 3288.0 ],
					"order" : 0,
					"source" : [ "obj-296", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"midpoints" : [ 312.264525999999989, 3129.0, 342.0, 3129.0, 342.0, 3288.0, 1439.187012000000095, 3288.0 ],
					"order" : 1,
					"source" : [ "obj-296", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-296", 0 ],
					"midpoints" : [ 667.141479000000004, 2982.652344000000085, 312.264525999999989, 2982.652344000000085 ],
					"source" : [ "obj-297", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-300", 0 ],
					"midpoints" : [ 652.141479000000004, 2999.470459000000119, 296.764525999999989, 2999.470459000000119 ],
					"source" : [ "obj-297", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-279", 0 ],
					"midpoints" : [ 574.94348100000002, 2819.296386999999868, 459.454009999999982, 2819.296386999999868, 459.454009999999982, 2521.025634999999966, 343.964539000000002, 2521.025634999999966 ],
					"order" : 1,
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.501961, 0.25098, 0.0, 1.0 ],
					"destination" : [ "obj-297", 0 ],
					"midpoints" : [ 574.94348100000002, 2827.106444999999894, 652.141479000000004, 2827.106444999999894 ],
					"order" : 0,
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-314", 0 ],
					"midpoints" : [ 588.44348100000002, 2819.296386999999868, 504.329009999999982, 2819.296386999999868, 504.329009999999982, 2406.025634999999966, 420.214539000000002, 2406.025634999999966 ],
					"order" : 2,
					"source" : [ "obj-298", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-319", 0 ],
					"midpoints" : [ 588.44348100000002, 2871.705810999999812, 420.214539000000002, 2871.705810999999812 ],
					"order" : 1,
					"source" : [ "obj-298", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3ph-send", 0 ],
					"order" : 0,
					"source" : [ "obj-298", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-249", 0 ],
					"midpoints" : [ 212.764542000000006, 2753.025634999999966, 262.514496000000008, 2753.025634999999966, 262.514496000000008, 2693.025634999999966, 312.264525999999989, 2693.025634999999966 ],
					"order" : 2,
					"source" : [ "obj-299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-2", 0 ],
					"order" : 1,
					"source" : [ "obj-299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzsel-2", 0 ],
					"order" : 0,
					"source" : [ "obj-299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 1 ],
					"order" : 0,
					"source" : [ "obj-2b-domswitch", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 1,
					"source" : [ "obj-2b-domswitch", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-spa-fp", 0 ],
					"source" : [ "obj-2b-fp0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-fp0", 0 ],
					"source" : [ "obj-2b-fpsel", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-msg-0", 0 ],
					"source" : [ "obj-2b-gact-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-msg-1", 0 ],
					"source" : [ "obj-2b-gact-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-msg-2", 0 ],
					"source" : [ "obj-2b-gact-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-msg-3", 0 ],
					"source" : [ "obj-2b-gact-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-msg-4", 0 ],
					"source" : [ "obj-2b-gact-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-lb0", 0 ],
					"source" : [ "obj-2b-lb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-spa-lb", 0 ],
					"source" : [ "obj-2b-lb0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-spa-0", 0 ],
					"source" : [ "obj-2b-msg-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-spa-1", 0 ],
					"source" : [ "obj-2b-msg-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-spa-2", 0 ],
					"source" : [ "obj-2b-msg-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-spa-3", 0 ],
					"source" : [ "obj-2b-msg-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-spa-4", 0 ],
					"source" : [ "obj-2b-msg-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-domswitch", 0 ],
					"order" : 0,
					"source" : [ "obj-2b-plus1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-psswitch", 0 ],
					"order" : 1,
					"source" : [ "obj-2b-plus1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-336", 0 ],
					"source" : [ "obj-2b-psswitch", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-plus1", 0 ],
					"source" : [ "obj-2b-ractive", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-0", 0 ],
					"order" : 4,
					"source" : [ "obj-2b-rfp", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-1", 0 ],
					"order" : 3,
					"source" : [ "obj-2b-rfp", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-2", 0 ],
					"order" : 2,
					"source" : [ "obj-2b-rfp", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-3", 0 ],
					"order" : 1,
					"source" : [ "obj-2b-rfp", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-4", 0 ],
					"order" : 0,
					"source" : [ "obj-2b-rfp", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-domswitch", 1 ],
					"source" : [ "obj-2b-storedom-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-domswitch", 2 ],
					"source" : [ "obj-2b-storedom-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-domswitch", 3 ],
					"source" : [ "obj-2b-storedom-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-domswitch", 4 ],
					"source" : [ "obj-2b-storedom-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-domswitch", 5 ],
					"source" : [ "obj-2b-storedom-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-psswitch", 1 ],
					"source" : [ "obj-2b-storeps-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-psswitch", 2 ],
					"source" : [ "obj-2b-storeps-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-psswitch", 3 ],
					"source" : [ "obj-2b-storeps-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-psswitch", 4 ],
					"source" : [ "obj-2b-storeps-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-psswitch", 5 ],
					"source" : [ "obj-2b-storeps-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-0", 1 ],
					"source" : [ "obj-2b-tbbb-0", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-0", 0 ],
					"source" : [ "obj-2b-tbbb-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storeps-0", 0 ],
					"source" : [ "obj-2b-tbbb-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-1", 1 ],
					"source" : [ "obj-2b-tbbb-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-1", 0 ],
					"source" : [ "obj-2b-tbbb-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storeps-1", 0 ],
					"source" : [ "obj-2b-tbbb-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-2", 1 ],
					"source" : [ "obj-2b-tbbb-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-2", 0 ],
					"source" : [ "obj-2b-tbbb-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storeps-2", 0 ],
					"source" : [ "obj-2b-tbbb-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-3", 1 ],
					"source" : [ "obj-2b-tbbb-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-3", 0 ],
					"source" : [ "obj-2b-tbbb-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storeps-3", 0 ],
					"source" : [ "obj-2b-tbbb-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-gact-4", 1 ],
					"source" : [ "obj-2b-tbbb-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-4", 0 ],
					"source" : [ "obj-2b-tbbb-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storeps-4", 0 ],
					"source" : [ "obj-2b-tbbb-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mvz96otzd", 0 ],
					"source" : [ "obj-2mdj21p73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-315", 0 ],
					"source" : [ "obj-2t3ccds1y", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 274.989039999999989, 802.883362000000034, 200.889870820648184, 802.883362000000034, 200.889870820648184, 205.440978999999999, 713.934981999999991, 205.440978999999999 ],
					"order" : 7,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"order" : 22,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"order" : 27,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"order" : 8,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"order" : 17,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 274.989039999999989, 802.883483999999953, 323.067748999999992, 802.883483999999953, 323.067748999999992, 673.353759999999966, 422.200531000000012, 673.353759999999966 ],
					"order" : 10,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storeps-0", 0 ],
					"order" : 5,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-306", 0 ],
					"order" : 21,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"order" : 26,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"order" : 16,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"order" : 15,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 274.989039999999989, 802.883362000000034, 193.107917068607321, 802.883362000000034, 193.107917068607321, 285.440979000000027, 223.934981999999991, 285.440979000000027 ],
					"order" : 23,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 274.989039999999989, 802.883362000000034, 240.434998000000007, 802.883362000000034, 240.434998000000007, 285.440979000000027, 272.93499799999995, 285.440979000000027 ],
					"order" : 18,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 274.989039999999989, 802.883483999999953, 322.659972999999979, 802.883483999999953, 322.659972999999979, 159.441101000000003, 421.384978999999987, 159.441101000000003 ],
					"order" : 9,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-772", 0 ],
					"order" : 20,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-774", 0 ],
					"order" : 25,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"order" : 14,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-785", 0 ],
					"order" : 13,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-append-mat-1", 0 ],
					"source" : [ "obj-3", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"order" : 12,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-50", 0 ],
					"order" : 19,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-51", 0 ],
					"order" : 24,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"order" : 11,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-qry", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-rcap", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-scap", 0 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-max-0", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-min-0", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-0", 0 ],
					"order" : 6,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-1", 0 ],
					"order" : 5,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-2", 0 ],
					"order" : 4,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-3", 0 ],
					"order" : 3,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-4", 0 ],
					"order" : 2,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rseq", 0 ],
					"order" : 2,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-pre-gate-0", 1 ],
					"order" : 6,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-capgate", 1 ],
					"order" : 4,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-col-clip", 0 ],
					"order" : 3,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 1807.879394999999931, 660.163269000000014, 1807.879394999999931, 660.163269000000014 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-301", 0 ],
					"midpoints" : [ 296.764525999999989, 3179.024413999999979, 296.764525999999989, 3179.024413999999979 ],
					"source" : [ "obj-300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-305", 1 ],
					"midpoints" : [ 232.264542000000006, 2650.025634999999966, 278.014525999999989, 2650.025634999999966, 278.014525999999989, 2581.025634999999966, 323.764542000000006, 2581.025634999999966 ],
					"source" : [ "obj-303", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-305", 0 ],
					"midpoints" : [ 218.764542000000006, 2650.025634999999966, 218.764510999999999, 2650.025634999999966, 218.764510999999999, 2581.025634999999966, 218.764542000000006, 2581.025634999999966 ],
					"source" : [ "obj-303", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"midpoints" : [ 218.764542000000006, 2620.025634999999966, 319.489531999999997, 2620.025634999999966, 319.489531999999997, 2406.025634999999966, 420.214539000000002, 2406.025634999999966 ],
					"source" : [ "obj-305", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-303", 0 ],
					"midpoints" : [ 271.764525999999933, 2592.025634999999966, 218.764542000000006, 2592.025634999999966 ],
					"order" : 2,
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-483", 0 ],
					"midpoints" : [ 271.764525999999933, 2573.025634999999966, 470.26016199999998, 2573.025634999999966, 470.26016199999998, 2260.909180000000106, 668.755858999999987, 2260.909180000000106 ],
					"order" : 1,
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-2", 0 ],
					"order" : 0,
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-305", 0 ],
					"midpoints" : [ 222.764542000000006, 2577.025634999999966, 218.764542000000006, 2577.025634999999966 ],
					"order" : 2,
					"source" : [ "obj-308", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-482", 0 ],
					"midpoints" : [ 222.764542000000006, 2573.025634999999966, 445.76016199999998, 2573.025634999999966, 445.76016199999998, 2286.409180000000106, 668.755858999999987, 2286.409180000000106 ],
					"order" : 1,
					"source" : [ "obj-308", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-2", 0 ],
					"order" : 0,
					"source" : [ "obj-308", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"midpoints" : [ 296.764525999999989, 2668.825439000000188, 358.489502000000016, 2668.825439000000188, 358.489502000000016, 2406.025634999999966, 420.214539000000002, 2406.025634999999966 ],
					"order" : 1,
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"midpoints" : [ 296.764525999999989, 2796.470459000000119, 420.214539000000002, 2796.470459000000119 ],
					"order" : 0,
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-311", 0 ],
					"midpoints" : [ 271.764525999999989, 2664.025634999999966, 284.264496000000008, 2664.025634999999966, 284.264496000000008, 2631.825439000000188, 296.764525999999989, 2631.825439000000188 ],
					"source" : [ "obj-313", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-245", 0 ],
					"midpoints" : [ 727.214539000000059, 2772.0, 1439.187012000000095, 2772.0 ],
					"source" : [ "obj-314", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpf-2", 0 ],
					"source" : [ "obj-314", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-2", 0 ],
					"order" : 2,
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-320", 0 ],
					"midpoints" : [ 712.764542000000006, 2487.025634999999966, 212.764542000000006, 2487.025634999999966 ],
					"order" : 5,
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-484", 0 ],
					"midpoints" : [ 712.764542000000006, 2493.025634999999966, 440.76016199999998, 2493.025634999999966, 440.76016199999998, 2230.766602000000148, 668.755858999999987, 2230.766602000000148 ],
					"order" : 4,
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-add1000-2", 0 ],
					"order" : 1,
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-2", 1 ],
					"order" : 0,
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dnsqopshf", 0 ],
					"order" : 3,
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-244", 0 ],
					"midpoints" : [ 727.214539000000059, 3288.0, 1537.687012000000095, 3288.0 ],
					"source" : [ "obj-319", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpa-2", 0 ],
					"source" : [ "obj-319", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 102.171547000000004, 123.0, 78.654465000000002, 123.0 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 88.671547000000004, 123.0, 36.361227, 123.0 ],
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 88.671547000000004, 123.0, 18.0, 123.0, 18.0, 177.0, 45.154460999999998, 177.0 ],
					"order" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 115.671547000000004, 138.0, 117.194571999999994, 138.0 ],
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-314", 0 ],
					"midpoints" : [ 212.764542000000006, 2520.025634999999966, 316.489502000000016, 2520.025634999999966, 316.489502000000016, 2406.025634999999966, 420.214539000000002, 2406.025634999999966 ],
					"order" : 1,
					"source" : [ "obj-320", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-319", 0 ],
					"midpoints" : [ 212.764542000000006, 2722.070557000000008, 420.214539000000002, 2722.070557000000008 ],
					"order" : 0,
					"source" : [ "obj-320", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 78.654465000000002, 159.0, 102.0, 159.0, 102.0, 177.0, 120.0, 177.0, 120.0, 219.0, 99.0, 219.0, 99.0, 303.0, 548.107201000000032, 303.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-333", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"midpoints" : [ 185.107238999999993, 249.0, 144.0, 249.0, 144.0, 228.0, 134.607201000000003, 228.0 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 174.107238999999993, 249.0, 144.0, 249.0, 144.0, 228.0, 124.107201000000003, 228.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-349", 0 ],
					"source" : [ "obj-342", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-351", 0 ],
					"source" : [ "obj-344", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-353", 0 ],
					"source" : [ "obj-346", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-358", 0 ],
					"source" : [ "obj-348", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 124.107201000000003, 285.0, 18.0, 285.0, 18.0, 42.0, 88.671547000000004, 42.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-450", 0 ],
					"source" : [ "obj-350", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-386", 0 ],
					"source" : [ "obj-359", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 124.107201000000003, 252.0, 124.107201000000003, 252.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 0 ],
					"source" : [ "obj-361", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 298.750548999999978, 928.262817000000041, 298.750548999999978, 928.262817000000041 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 1 ],
					"source" : [ "obj-372", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 88.671547000000004, 33.0, 88.671547000000004, 33.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-383", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-382", 0 ],
					"source" : [ "obj-384", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-359", 0 ],
					"source" : [ "obj-385", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-467", 0 ],
					"source" : [ "obj-386", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-390", 0 ],
					"midpoints" : [ 1205.822509999999966, 581.328856999999971, 977.572631999999999, 581.328856999999971 ],
					"source" : [ "obj-389", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 367.818726000000026, 974.137512000000015, 360.368713000000014, 974.137512000000015 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 977.572631999999999, 655.28760164282221, 422.200531000000012, 655.28760164282221 ],
					"source" : [ "obj-390", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-398", 0 ],
					"midpoints" : [ 1148.072509999999966, 543.578796000000011, 1124.572509999999966, 543.578796000000011 ],
					"source" : [ "obj-391", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-345", 0 ],
					"source" : [ "obj-395", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-399", 0 ],
					"midpoints" : [ 1085.072509999999966, 543.578796000000011, 1059.822632000000112, 543.578796000000011 ],
					"source" : [ "obj-396", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-400", 0 ],
					"midpoints" : [ 1497.822509999999966, 564.578856999999971, 1008.572631999999999, 564.578856999999971 ],
					"order" : 1,
					"source" : [ "obj-397", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ny61s7jhx", 0 ],
					"order" : 0,
					"source" : [ "obj-397", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-400", 2 ],
					"midpoints" : [ 1138.072509999999966, 578.65014599999995, 1132.572631999999885, 578.65014599999995 ],
					"source" : [ "obj-398", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-400", 0 ],
					"midpoints" : [ 1124.572509999999966, 578.65014599999995, 1008.572631999999999, 578.65014599999995 ],
					"source" : [ "obj-398", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-400", 1 ],
					"midpoints" : [ 1073.322632000000112, 578.65014599999995, 1070.572631999999885, 578.65014599999995 ],
					"source" : [ "obj-399", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-400", 0 ],
					"midpoints" : [ 1059.822632000000112, 578.65014599999995, 1008.572631999999999, 578.65014599999995 ],
					"source" : [ "obj-399", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mx5tzq6di", 0 ],
					"source" : [ "obj-3afs9g9yx", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6vetkogrm", 0 ],
					"source" : [ "obj-3h1ea2ims", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-j74anr8kb", 0 ],
					"source" : [ "obj-3hxgrvvq7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"order" : 4,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 3,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 2,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-390", 1 ],
					"midpoints" : [ 1008.572631999999999, 616.400208000000021, 1011.572631999999999, 616.400208000000021 ],
					"source" : [ "obj-400", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-406", 0 ],
					"midpoints" : [ 1059.896117999999888, 1114.232422000000042, 831.646178999999961, 1114.232422000000042 ],
					"source" : [ "obj-405", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"midpoints" : [ 831.646178999999961, 1290.0, 431.626128999999992, 1290.0 ],
					"source" : [ "obj-406", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-410", 0 ],
					"midpoints" : [ 1002.146057000000042, 1076.482422000000042, 978.646057000000042, 1076.482422000000042 ],
					"source" : [ "obj-407", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-411", 0 ],
					"midpoints" : [ 939.146057000000042, 1076.482422000000042, 913.896178999999961, 1076.482422000000042 ],
					"source" : [ "obj-408", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 0 ],
					"midpoints" : [ 1351.896056999999928, 1097.482422000000042, 862.646178999999961, 1097.482422000000042 ],
					"order" : 1,
					"source" : [ "obj-409", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ohqcid1yr", 0 ],
					"order" : 0,
					"source" : [ "obj-409", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 36.361227, 162.0, 45.154460999999998, 162.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 2 ],
					"midpoints" : [ 992.146057000000042, 1111.553711000000021, 986.646178999999961, 1111.553711000000021 ],
					"source" : [ "obj-410", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 0 ],
					"midpoints" : [ 978.646057000000042, 1111.553711000000021, 862.646178999999961, 1111.553711000000021 ],
					"source" : [ "obj-410", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 1 ],
					"midpoints" : [ 927.396178999999961, 1111.553711000000021, 924.646178999999961, 1111.553711000000021 ],
					"source" : [ "obj-411", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 0 ],
					"midpoints" : [ 913.896178999999961, 1111.553711000000021, 862.646178999999961, 1111.553711000000021 ],
					"source" : [ "obj-411", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-406", 1 ],
					"midpoints" : [ 862.646178999999961, 1149.303832999999941, 865.646178999999961, 1149.303832999999941 ],
					"source" : [ "obj-412", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-418", 0 ],
					"midpoints" : [ 1195.072388000000046, 102.0, 1143.0, 102.0, 1143.0, 114.0, 1011.0, 114.0, 1011.0, 111.0, 947.822509999999966, 111.0 ],
					"source" : [ "obj-417", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 947.822509999999966, 164.791107000000011, 421.384978999999987, 164.791107000000011 ],
					"source" : [ "obj-418", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-422", 0 ],
					"midpoints" : [ 1137.322388000000046, 33.0, 1113.822388000000046, 33.0 ],
					"source" : [ "obj-419", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-505", 0 ],
					"midpoints" : [ 45.154460999999998, 201.0, 41.694561, 201.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-423", 0 ],
					"midpoints" : [ 1074.322388000000046, 33.0, 1049.072509999999966, 33.0 ],
					"source" : [ "obj-420", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-424", 0 ],
					"midpoints" : [ 1487.072388000000046, 69.0, 997.822509999999966, 69.0 ],
					"order" : 1,
					"source" : [ "obj-421", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pcgt85p41", 0 ],
					"order" : 0,
					"source" : [ "obj-421", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-424", 2 ],
					"midpoints" : [ 1127.322388000000046, 60.0, 1121.822509999999966, 60.0 ],
					"source" : [ "obj-422", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-424", 0 ],
					"midpoints" : [ 1113.822388000000046, 60.0, 997.822509999999966, 60.0 ],
					"source" : [ "obj-422", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-424", 1 ],
					"midpoints" : [ 1062.572509999999966, 78.0, 1059.822509999999966, 78.0 ],
					"source" : [ "obj-423", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-424", 0 ],
					"midpoints" : [ 1049.072509999999966, 60.0, 997.822509999999966, 60.0 ],
					"source" : [ "obj-423", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-418", 1 ],
					"midpoints" : [ 997.822509999999966, 111.0, 988.822509999999966, 111.0 ],
					"source" : [ "obj-424", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-430", 0 ],
					"midpoints" : [ 1107.587279999999964, 1727.823364000000083, 875.626098999999954, 1727.823364000000083 ],
					"source" : [ "obj-429", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 117.194571999999994, 162.0, 111.0, 162.0, 111.0, 201.0, 27.0, 201.0, 27.0, 177.0, 45.154460999999998, 177.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 875.626098999999954, 1853.410767000000078, 408.200531000000012, 1853.410767000000078 ],
					"source" : [ "obj-430", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-434", 0 ],
					"midpoints" : [ 1049.837279999999964, 1690.073241999999937, 1026.337279999999964, 1690.073241999999937 ],
					"source" : [ "obj-431", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-435", 0 ],
					"midpoints" : [ 986.837279999999964, 1690.073241999999937, 961.587401999999997, 1690.073241999999937 ],
					"source" : [ "obj-432", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-436", 0 ],
					"midpoints" : [ 1399.587279999999964, 1711.073364000000083, 910.337401999999997, 1711.073364000000083 ],
					"order" : 1,
					"source" : [ "obj-433", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-m09utl895", 0 ],
					"order" : 0,
					"source" : [ "obj-433", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-436", 2 ],
					"midpoints" : [ 1039.837279999999964, 1725.144774999999981, 1034.337402000000111, 1725.144774999999981 ],
					"source" : [ "obj-434", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-436", 0 ],
					"midpoints" : [ 1026.337279999999964, 1725.144774999999981, 910.337401999999997, 1725.144774999999981 ],
					"source" : [ "obj-434", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-436", 1 ],
					"midpoints" : [ 975.087401999999997, 1725.144774999999981, 972.337401999999997, 1725.144774999999981 ],
					"source" : [ "obj-435", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-436", 0 ],
					"midpoints" : [ 961.587401999999997, 1725.144774999999981, 910.337401999999997, 1725.144774999999981 ],
					"source" : [ "obj-435", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-430", 1 ],
					"midpoints" : [ 910.337401999999997, 1762.894774999999981, 909.626098999999954, 1762.894774999999981 ],
					"source" : [ "obj-436", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-443", 0 ],
					"midpoints" : [ 1039.646240000000034, 2290.340087999999923, 811.396300999999994, 2290.340087999999923 ],
					"source" : [ "obj-442", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"midpoints" : [ 811.396300999999994, 2396.343506000000161, 420.214539000000002, 2396.343506000000161 ],
					"source" : [ "obj-443", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-447", 0 ],
					"midpoints" : [ 981.896178999999961, 2252.590087999999923, 958.396178999999961, 2252.590087999999923 ],
					"source" : [ "obj-444", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-448", 0 ],
					"midpoints" : [ 918.896178999999961, 2252.590087999999923, 893.646300999999994, 2252.590087999999923 ],
					"source" : [ "obj-445", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2mdj21p73", 0 ],
					"order" : 0,
					"source" : [ "obj-446", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-449", 0 ],
					"midpoints" : [ 1331.646178999999847, 2273.590087999999923, 842.396300999999994, 2273.590087999999923 ],
					"order" : 1,
					"source" : [ "obj-446", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-449", 2 ],
					"midpoints" : [ 971.896178999999961, 2287.661376999999902, 966.396300999999994, 2287.661376999999902 ],
					"source" : [ "obj-447", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-449", 0 ],
					"midpoints" : [ 958.396178999999961, 2287.661376999999902, 842.396300999999994, 2287.661376999999902 ],
					"source" : [ "obj-447", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-449", 1 ],
					"midpoints" : [ 907.146300999999994, 2287.661376999999902, 904.396300999999994, 2287.661376999999902 ],
					"source" : [ "obj-448", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-449", 0 ],
					"midpoints" : [ 893.646300999999994, 2287.661376999999902, 842.396300999999994, 2287.661376999999902 ],
					"source" : [ "obj-448", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-443", 1 ],
					"midpoints" : [ 842.396300999999994, 2325.411376999999902, 845.396300999999994, 2325.411376999999902 ],
					"source" : [ "obj-449", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-465", 0 ],
					"source" : [ "obj-450", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-457", 0 ],
					"midpoints" : [ 1084.815307999999959, 2883.0, 855.0, 2883.0, 855.0, 2862.0, 800.663452000000007, 2862.0 ],
					"source" : [ "obj-456", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"midpoints" : [ 800.663452000000007, 2962.742432000000008, 639.055480999999986, 2962.742432000000008, 639.055480999999986, 2924.11547900000005, 420.214539000000002, 2924.11547900000005 ],
					"source" : [ "obj-457", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-461", 0 ],
					"midpoints" : [ 1027.065307999999959, 2806.043944999999894, 1003.565307999999959, 2806.043944999999894 ],
					"source" : [ "obj-458", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-462", 0 ],
					"midpoints" : [ 964.065307999999959, 2806.043944999999894, 938.815429999999992, 2806.043944999999894 ],
					"source" : [ "obj-459", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 313.434998000000007, 506.441101000000003, 140.684967, 506.441101000000003, 140.684967, 446.441101000000003, 45.154460999999998, 446.441101000000003 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 326.934998000000007, 632.601990000000001, 314.250548999999978, 632.601990000000001 ],
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3h1ea2ims", 0 ],
					"order" : 0,
					"source" : [ "obj-460", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 0 ],
					"midpoints" : [ 1376.815307999999959, 2827.044189000000188, 887.565429999999992, 2827.044189000000188 ],
					"order" : 1,
					"source" : [ "obj-460", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 2 ],
					"midpoints" : [ 1017.065307999999959, 2841.11547900000005, 1011.565429999999992, 2841.11547900000005 ],
					"source" : [ "obj-461", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 0 ],
					"midpoints" : [ 1003.565307999999959, 2841.11547900000005, 887.565429999999992, 2841.11547900000005 ],
					"source" : [ "obj-461", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 1 ],
					"midpoints" : [ 952.315429999999992, 2841.11547900000005, 949.565429999999992, 2841.11547900000005 ],
					"source" : [ "obj-462", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 0 ],
					"midpoints" : [ 938.815429999999992, 2841.11547900000005, 887.565429999999992, 2841.11547900000005 ],
					"source" : [ "obj-462", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-457", 1 ],
					"midpoints" : [ 887.565429999999992, 2874.0, 846.0, 2874.0, 846.0, 2871.0, 834.663452000000007, 2871.0 ],
					"source" : [ "obj-463", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-451", 0 ],
					"source" : [ "obj-467", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-0", 1 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-397", 0 ],
					"midpoints" : [ 845.860901000000013, 274.75277699999998, 1497.822509999999966, 274.75277699999998 ],
					"order" : 0,
					"source" : [ "obj-473", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-421", 0 ],
					"midpoints" : [ 845.860901000000013, 30.0, 963.0, 30.0, 963.0, 9.0, 1487.072388000000046, 9.0 ],
					"order" : 1,
					"source" : [ "obj-473", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-420", 0 ],
					"midpoints" : [ 845.860901000000013, 60.0, 1026.0, 60.0, 1026.0, 33.0, 1059.0, 33.0, 1059.0, 9.0, 1074.322388000000046, 9.0 ],
					"source" : [ "obj-474", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-420", 0 ],
					"midpoints" : [ 845.860901000000013, 99.0, 975.0, 99.0, 975.0, 42.0, 1035.0, 42.0, 1035.0, 33.0, 1059.0, 33.0, 1059.0, 9.0, 1074.322388000000046, 9.0 ],
					"source" : [ "obj-475", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-408", 0 ],
					"midpoints" : [ 751.189118598411596, 1230.0, 732.03106286889647, 1230.0, 732.03106286889647, 1083.0, 900.0, 1083.0, 900.0, 1074.0, 924.0, 1074.0, 924.0, 1047.0, 939.146057000000042, 1047.0 ],
					"source" : [ "obj-479", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 1416.919311999999991, 1161.553832999999941, 1416.919311999999991, 1161.553832999999941 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-408", 0 ],
					"midpoints" : [ 751.189118598411596, 1269.0, 807.0, 1269.0, 807.0, 1083.0, 900.0, 1083.0, 900.0, 1074.0, 924.0, 1074.0, 924.0, 1047.0, 939.146057000000042, 1047.0 ],
					"source" : [ "obj-480", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-409", 0 ],
					"midpoints" : [ 749.189118598411596, 1159.028367877006531, 712.368794918060303, 1159.028367877006531, 712.368794918060303, 1047.0, 1351.896056999999928, 1047.0 ],
					"order" : 1,
					"source" : [ "obj-481", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 0 ],
					"midpoints" : [ 749.189118598411596, 1368.206421000000091, 1399.587279999999964, 1368.206421000000091 ],
					"order" : 0,
					"source" : [ "obj-481", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-445", 0 ],
					"midpoints" : [ 668.755858999999987, 2323.409180000000106, 793.82598900000005, 2323.409180000000106, 793.82598900000005, 2219.018555000000106, 918.896178999999961, 2219.018555000000106 ],
					"source" : [ "obj-482", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-445", 0 ],
					"midpoints" : [ 668.755858999999987, 2297.909180000000106, 793.82598900000005, 2297.909180000000106, 793.82598900000005, 2219.018555000000106, 918.896178999999961, 2219.018555000000106 ],
					"source" : [ "obj-483", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-446", 0 ],
					"midpoints" : [ 668.755858999999987, 2267.766602000000148, 750.20098900000005, 2267.766602000000148, 750.20098900000005, 2219.018555000000106, 1331.646178999999847, 2219.018555000000106 ],
					"order" : 1,
					"source" : [ "obj-484", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-460", 0 ],
					"midpoints" : [ 668.755858999999987, 2531.433105000000069, 1376.815307999999959, 2531.433105000000069 ],
					"order" : 0,
					"source" : [ "obj-484", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 248.703979000000004, 830.262695000000008, 231.319489000000004, 830.262695000000008, 231.319489000000004, 205.440978999999999, 713.934981999999991, 205.440978999999999 ],
					"order" : 0,
					"source" : [ "obj-486", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 248.703979000000004, 830.262695000000008, 236.319489000000004, 830.262695000000008, 236.319489000000004, 285.440979000000027, 223.934981999999991, 285.440979000000027 ],
					"order" : 2,
					"source" : [ "obj-486", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 248.703979000000004, 830.262695000000008, 260.819488999999976, 830.262695000000008, 260.819488999999976, 285.440979000000027, 272.93499799999995, 285.440979000000027 ],
					"order" : 1,
					"source" : [ "obj-486", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-315", 0 ],
					"midpoints" : [ 289.764557000000025, 3099.024413999999979, 251.264510999999999, 3099.024413999999979, 251.264510999999999, 2452.025634999999966, 712.764542000000006, 2452.025634999999966 ],
					"source" : [ "obj-490", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"source" : [ "obj-491", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-hvlho7th0", 0 ],
					"source" : [ "obj-4hflnnlkl", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-d5j3ero9y", 0 ],
					"source" : [ "obj-4t5h0d4ok", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-0", 1 ],
					"order" : 4,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-1", 1 ],
					"order" : 3,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-2", 1 ],
					"order" : 2,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-3", 1 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-4", 1 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 379.818726000000026, 603.52777100000003, 367.818726000000026, 603.52777100000003 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.25098, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 41.694561, 228.0, 548.107201000000032, 228.0 ],
					"source" : [ "obj-505", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 1807.879394999999931, 557.241149999999948, 1807.879394999999931, 557.241149999999948 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 1807.879394999999931, 628.042602999999986, 1807.879394999999931, 628.042602999999986 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-350", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"order" : 8,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-299", 0 ],
					"order" : 7,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 4,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-766", 0 ],
					"order" : 6,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-37", 0 ],
					"order" : 5,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-notplay", 0 ],
					"order" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-0", 0 ],
					"order" : 3,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzsel-0", 0 ],
					"order" : 2,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-sel", 0 ],
					"order" : 1,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-667", 0 ],
					"source" : [ "obj-59dzgzjpe", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-5b1onwccc", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-0", 1 ],
					"order" : 4,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-1", 1 ],
					"order" : 3,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-2", 1 ],
					"order" : 2,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-3", 1 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-4", 1 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"midpoints" : [ 314.250548999999978, 810.0, 270.0, 810.0, 270.0, 867.0, 18.0, 867.0, 18.0, 54.0, 41.694561, 54.0 ],
					"order" : 3,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 327.750548999999978, 818.762878000000001, 367.225525000000005, 818.762878000000001, 367.225525000000005, 733.248779000000013, 422.200531000000012, 733.248779000000013 ],
					"order" : 3,
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-tbbb-0", 0 ],
					"order" : 0,
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 314.250548999999978, 810.0, 270.0, 810.0, 270.0, 867.0, 156.0, 867.0, 156.0, 294.0, 150.0, 294.0, 150.0, 171.0, 159.0, 171.0, 159.0, 42.0, 88.671547000000004, 42.0 ],
					"order" : 2,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3ph-send", 0 ],
					"order" : 1,
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 327.750548999999978, 818.762878000000001, 366.817748999999992, 818.762878000000001, 366.817748999999992, 159.441101000000003, 421.384978999999987, 159.441101000000003 ],
					"order" : 2,
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.501961, 0.25098, 0.0, 1.0 ],
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 314.250548999999978, 813.262817000000041, 298.750548999999978, 813.262817000000041 ],
					"order" : 1,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 314.250548999999978, 818.762878000000001, 321.942748999999992, 818.762878000000001, 321.942748999999992, 278.441101000000003, 345.134978999999987, 278.441101000000003 ],
					"order" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-mute", 0 ],
					"order" : 4,
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 298.750548999999978, 547.797423999999978, 422.200531000000012, 547.797423999999978 ],
					"order" : 1,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 2,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 298.750548999999978, 422.241088999999988, 359.659972999999979, 422.241088999999988, 359.659972999999979, 159.441101000000003, 421.384978999999987, 159.441101000000003 ],
					"order" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 2 ],
					"source" : [ "obj-639", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-640", 0 ],
					"source" : [ "obj-639", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"order" : 4,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-311", 0 ],
					"order" : 3,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 272.934998000000007, 417.441101000000003, 285.434966999999972, 417.441101000000003, 285.434966999999972, 385.241088999999988, 298.750548999999978, 385.241088999999988 ],
					"order" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-777", 0 ],
					"order" : 2,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-39", 0 ],
					"order" : 1,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-640", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-678", 0 ],
					"midpoints" : [ 704.727783000000045, 3492.0, 819.0, 3492.0, 819.0, 3423.0, 912.0, 3423.0, 912.0, 3414.0, 936.0, 3414.0, 936.0, 3390.0, 951.160033999999996, 3390.0 ],
					"source" : [ "obj-645", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-678", 0 ],
					"midpoints" : [ 704.727783000000045, 3459.0, 681.0, 3459.0, 681.0, 3360.0, 936.0, 3360.0, 936.0, 3390.0, 951.160033999999996, 3390.0 ],
					"source" : [ "obj-646", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-667", 0 ],
					"midpoints" : [ 704.727783000000045, 3675.355224999999791, 1357.714477999999872, 3675.355224999999791 ],
					"order" : 1,
					"source" : [ "obj-647", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-679", 0 ],
					"midpoints" : [ 704.727783000000045, 3429.0, 681.0, 3429.0, 681.0, 3390.0, 1363.910033999999996, 3390.0 ],
					"order" : 0,
					"source" : [ "obj-647", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"midpoints" : [ 354.403167999999994, 343.291107000000011, 354.403167999999994, 343.291107000000011 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-664", 0 ],
					"midpoints" : [ 1065.714478000000099, 3985.960938000000169, 837.464600000000019, 3985.960938000000169 ],
					"source" : [ "obj-663", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-785", 0 ],
					"midpoints" : [ 837.464600000000019, 4079.604248000000098, 420.214539000000002, 4079.604248000000098 ],
					"source" : [ "obj-664", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-668", 0 ],
					"midpoints" : [ 1007.964477999999986, 3948.210938000000169, 984.464477999999986, 3948.210938000000169 ],
					"source" : [ "obj-665", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-669", 0 ],
					"midpoints" : [ 944.964477999999986, 3948.210938000000169, 919.714600000000019, 3948.210938000000169 ],
					"source" : [ "obj-666", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1kwldhzhc", 0 ],
					"order" : 0,
					"source" : [ "obj-667", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-670", 0 ],
					"midpoints" : [ 1357.714477999999872, 3969.210938000000169, 868.464600000000019, 3969.210938000000169 ],
					"order" : 1,
					"source" : [ "obj-667", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-670", 2 ],
					"midpoints" : [ 997.964477999999986, 3983.282227000000148, 992.464600000000019, 3983.282227000000148 ],
					"source" : [ "obj-668", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-670", 0 ],
					"midpoints" : [ 984.464477999999986, 3983.282227000000148, 868.464600000000019, 3983.282227000000148 ],
					"source" : [ "obj-668", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-670", 1 ],
					"midpoints" : [ 933.214600000000019, 3983.282227000000148, 930.464600000000019, 3983.282227000000148 ],
					"source" : [ "obj-669", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-670", 0 ],
					"midpoints" : [ 919.714600000000019, 3983.282227000000148, 868.464600000000019, 3983.282227000000148 ],
					"source" : [ "obj-669", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-664", 1 ],
					"midpoints" : [ 868.464600000000019, 4021.032227000000148, 871.464600000000019, 4021.032227000000148 ],
					"source" : [ "obj-670", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-676", 0 ],
					"midpoints" : [ 1071.910033999999996, 3454.891845999999987, 843.660156000000029, 3454.891845999999987 ],
					"source" : [ "obj-675", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"midpoints" : [ 843.660156000000029, 3563.613525000000209, 420.214539000000002, 3563.613525000000209 ],
					"source" : [ "obj-676", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-680", 0 ],
					"midpoints" : [ 1014.160033999999996, 3417.141845999999987, 990.660033999999996, 3417.141845999999987 ],
					"source" : [ "obj-677", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-681", 0 ],
					"midpoints" : [ 951.160033999999996, 3417.141845999999987, 925.910156000000029, 3417.141845999999987 ],
					"source" : [ "obj-678", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-682", 0 ],
					"midpoints" : [ 1363.910033999999996, 3438.141845999999987, 874.660156000000029, 3438.141845999999987 ],
					"order" : 1,
					"source" : [ "obj-679", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tdz1qcmgu", 0 ],
					"order" : 0,
					"source" : [ "obj-679", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"midpoints" : [ 346.518707000000006, 1397.953856999999971, 346.518707000000006, 1397.953856999999971 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-682", 2 ],
					"midpoints" : [ 1004.160033999999996, 3452.213378999999804, 998.660156000000029, 3452.213378999999804 ],
					"source" : [ "obj-680", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-682", 0 ],
					"midpoints" : [ 990.660033999999996, 3452.213378999999804, 874.660156000000029, 3452.213378999999804 ],
					"source" : [ "obj-680", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-682", 1 ],
					"midpoints" : [ 939.410156000000029, 3452.213378999999804, 936.660156000000029, 3452.213378999999804 ],
					"source" : [ "obj-681", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-682", 0 ],
					"midpoints" : [ 925.910156000000029, 3452.213378999999804, 874.660156000000029, 3452.213378999999804 ],
					"source" : [ "obj-681", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-676", 1 ],
					"midpoints" : [ 874.660156000000029, 3489.963378999999804, 877.660156000000029, 3489.963378999999804 ],
					"source" : [ "obj-682", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ngqifyhl5", 0 ],
					"source" : [ "obj-6qokentgx", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3hxgrvvq7", 0 ],
					"source" : [ "obj-6vetkogrm", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-737", 0 ],
					"midpoints" : [ 358.532684000000017, 3738.613525000000209, 358.532684000000017, 3738.613525000000209 ],
					"source" : [ "obj-704", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-328", 0 ],
					"order" : 0,
					"source" : [ "obj-705", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-361", 0 ],
					"order" : 1,
					"source" : [ "obj-705", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-712", 0 ],
					"midpoints" : [ 1403.319823999999926, 4553.483887000000323, 1403.319823999999926, 4553.483887000000323 ],
					"source" : [ "obj-707", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-3", 1 ],
					"source" : [ "obj-708", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-u8jkizm94", 0 ],
					"source" : [ "obj-70t15q9im", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-708", 0 ],
					"midpoints" : [ 1498.342529000000013, 4519.483887000000323, 1499.342529000000013, 4519.483887000000323 ],
					"source" : [ "obj-710", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-707", 0 ],
					"midpoints" : [ 1404.135375999999951, 4672.461425999999847, 1423.755004999999983, 4672.461425999999847, 1423.755004999999983, 4591.461425999999847, 1378.755004999999983, 4591.461425999999847, 1378.755004999999983, 4522.461425999999847, 1403.319823999999926, 4522.461425999999847 ],
					"source" : [ "obj-711", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"midpoints" : [ 1532.363037000000077, 4481.483887000000323, 1461.342529000000013, 4481.483887000000323 ],
					"source" : [ "obj-713", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-711", 0 ],
					"midpoints" : [ 1433.863037000000077, 4627.327637000000323, 1367.135375999999951, 4627.327637000000323 ],
					"source" : [ "obj-714", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-733", 0 ],
					"midpoints" : [ 393.43267800000001, 3829.613525000000209, 262.200179999999989, 3829.613525000000209 ],
					"order" : 1,
					"source" : [ "obj-718", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-781", 0 ],
					"midpoints" : [ 393.43267800000001, 3809.213378999999804, 303.09857199999999, 3809.213378999999804, 303.09857199999999, 3609.013672000000042, 712.76451099999997, 3609.013672000000042 ],
					"order" : 0,
					"source" : [ "obj-718", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-765", 0 ],
					"midpoints" : [ 325.764525999999989, 4036.174560999999812, 296.764525999999989, 4036.174560999999812 ],
					"source" : [ "obj-719", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbi-4", 0 ],
					"source" : [ "obj-733", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-747", 0 ],
					"midpoints" : [ 358.532684000000017, 3771.613525000000209, 347.964508000000023, 3771.613525000000209 ],
					"source" : [ "obj-737", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-705", 0 ],
					"midpoints" : [ 343.964508000000023, 3618.513672000000042, 343.964508000000023, 3618.513672000000042 ],
					"source" : [ "obj-738", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-706", 0 ],
					"midpoints" : [ 365.832702999999981, 4378.402831999999762, 358.532684000000017, 4378.402831999999762 ],
					"source" : [ "obj-743", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-743", 0 ],
					"midpoints" : [ 365.832702999999981, 4094.762451000000056, 365.832702999999981, 4094.762451000000056 ],
					"source" : [ "obj-744", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-718", 0 ],
					"midpoints" : [ 343.964508000000023, 3728.713378999999804, 393.43267800000001, 3728.713378999999804 ],
					"order" : 0,
					"source" : [ "obj-745", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-746", 0 ],
					"midpoints" : [ 343.964508000000023, 3681.613525000000209, 347.964508000000023, 3681.613525000000209 ],
					"order" : 1,
					"source" : [ "obj-745", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-777", 0 ],
					"midpoints" : [ 343.964508000000023, 3737.013428000000204, 296.764525999999989, 3737.013428000000204 ],
					"order" : 2,
					"source" : [ "obj-745", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-747", 0 ],
					"midpoints" : [ 347.964508000000023, 3743.613525000000209, 347.964508000000023, 3743.613525000000209 ],
					"source" : [ "obj-746", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-748", 0 ],
					"midpoints" : [ 347.964508000000023, 3811.463378999999804, 358.532684000000017, 3811.463378999999804 ],
					"source" : [ "obj-747", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-713", 0 ],
					"midpoints" : [ 312.264525999999989, 4284.0, 342.0, 4284.0, 342.0, 4440.0, 1532.363037000000077, 4440.0 ],
					"order" : 0,
					"source" : [ "obj-763", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-714", 0 ],
					"midpoints" : [ 312.264525999999989, 4284.0, 342.0, 4284.0, 342.0, 4440.0, 1433.863037000000077, 4440.0 ],
					"order" : 1,
					"source" : [ "obj-763", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-763", 0 ],
					"midpoints" : [ 311.764525999999989, 4247.26709000000028, 312.264525999999989, 4247.26709000000028 ],
					"source" : [ "obj-764", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-767", 0 ],
					"midpoints" : [ 296.764525999999989, 4264.084960999999566, 296.764525999999989, 4264.084960999999566 ],
					"source" : [ "obj-764", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3ph-send", 0 ],
					"order" : 0,
					"source" : [ "obj-765", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-716", 0 ],
					"midpoints" : [ 296.764525999999989, 4249.084960999999566, 188.764510999999999, 4249.084960999999566 ],
					"order" : 2,
					"source" : [ "obj-765", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-746", 0 ],
					"midpoints" : [ 296.764525999999989, 4222.335449000000153, 320.364502000000016, 4222.335449000000153, 320.364502000000016, 3678.013672000000042, 347.964508000000023, 3678.013672000000042 ],
					"order" : 0,
					"source" : [ "obj-765", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.501961, 0.25098, 0.0, 1.0 ],
					"destination" : [ "obj-764", 0 ],
					"midpoints" : [ 296.764525999999989, 4216.834960999999566, 296.764525999999989, 4216.834960999999566 ],
					"order" : 1,
					"source" : [ "obj-765", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-780", 0 ],
					"midpoints" : [ 310.264525999999989, 4222.335449000000153, 365.239502000000016, 4222.335449000000153, 365.239502000000016, 3563.013428000000204, 420.214539000000002, 3563.013428000000204 ],
					"order" : 2,
					"source" : [ "obj-765", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-785", 0 ],
					"midpoints" : [ 310.264525999999989, 4222.335449000000153, 365.239502000000016, 4222.335449000000153, 365.239502000000016, 4076.926269999999931, 420.214539000000002, 4076.926269999999931 ],
					"order" : 1,
					"source" : [ "obj-765", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-719", 0 ],
					"midpoints" : [ 212.764510999999999, 3910.013672000000042, 262.514496000000008, 3910.013672000000042, 262.514496000000008, 3850.013672000000042, 312.264525999999989, 3850.013672000000042 ],
					"order" : 2,
					"source" : [ "obj-766", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-3", 0 ],
					"order" : 1,
					"source" : [ "obj-766", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzsel-3", 0 ],
					"order" : 0,
					"source" : [ "obj-766", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-768", 0 ],
					"midpoints" : [ 296.764525999999989, 4331.834960999999566, 296.764525999999989, 4331.834960999999566 ],
					"source" : [ "obj-767", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 728.38497899999993, 609.0, 996.0, 609.0, 996.0, 618.0, 1032.0, 618.0, 1032.0, 669.0, 1447.46252400000003, 669.0 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpf-0", 0 ],
					"source" : [ "obj-77", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-771", 1 ],
					"midpoints" : [ 232.264510999999999, 3807.013672000000042, 278.014496000000008, 3807.013672000000042, 278.014496000000008, 3738.013672000000042, 323.76451099999997, 3738.013672000000042 ],
					"source" : [ "obj-770", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-771", 0 ],
					"midpoints" : [ 218.764510999999999, 3807.013672000000042, 218.764496000000008, 3807.013672000000042, 218.764496000000008, 3738.013672000000042, 218.764510999999999, 3738.013672000000042 ],
					"source" : [ "obj-770", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"midpoints" : [ 218.764510999999999, 3777.013672000000042, 319.489502000000016, 3777.013672000000042, 319.489502000000016, 3563.013428000000204, 420.214539000000002, 3563.013428000000204 ],
					"source" : [ "obj-771", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-646", 0 ],
					"midpoints" : [ 271.764525999999933, 3730.013672000000042, 488.246154999999987, 3730.013672000000042, 488.246154999999987, 3429.213378999999804, 704.727783000000045, 3429.213378999999804 ],
					"order" : 1,
					"source" : [ "obj-772", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-770", 0 ],
					"midpoints" : [ 271.764525999999933, 3749.013672000000042, 218.764510999999999, 3749.013672000000042 ],
					"order" : 2,
					"source" : [ "obj-772", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-3", 0 ],
					"order" : 0,
					"source" : [ "obj-772", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-645", 0 ],
					"midpoints" : [ 222.764510999999999, 3730.013672000000042, 463.746154999999987, 3730.013672000000042, 463.746154999999987, 3454.713378999999804, 704.727783000000045, 3454.713378999999804 ],
					"order" : 1,
					"source" : [ "obj-774", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-771", 0 ],
					"midpoints" : [ 222.764510999999999, 3734.013672000000042, 218.764510999999999, 3734.013672000000042 ],
					"order" : 2,
					"source" : [ "obj-774", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-3", 0 ],
					"order" : 0,
					"source" : [ "obj-774", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"midpoints" : [ 296.764525999999989, 3825.813477000000148, 358.489502000000016, 3825.813477000000148, 358.489502000000016, 3563.013428000000204, 420.214539000000002, 3563.013428000000204 ],
					"order" : 1,
					"source" : [ "obj-777", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-785", 0 ],
					"midpoints" : [ 296.764525999999989, 3951.369873000000098, 420.214539000000002, 3951.369873000000098 ],
					"order" : 0,
					"source" : [ "obj-777", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-777", 0 ],
					"midpoints" : [ 271.764525999999989, 3821.013672000000042, 284.264496000000008, 3821.013672000000042, 284.264496000000008, 3788.813477000000148, 296.764525999999989, 3788.813477000000148 ],
					"source" : [ "obj-779", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 314.250548999999978, 870.0, 276.0, 870.0, 276.0, 1020.0, 828.0, 1020.0, 828.0, 1101.0, 1356.0, 1101.0, 1356.0, 1059.0, 1447.46252400000003, 1059.0 ],
					"order" : 1,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 314.250548999999978, 870.0, 276.0, 870.0, 276.0, 1020.0, 828.0, 1020.0, 828.0, 1101.0, 1356.0, 1101.0, 1356.0, 1050.0, 1545.96252400000003, 1050.0 ],
					"order" : 0,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-714", 0 ],
					"midpoints" : [ 727.214539000000059, 4014.0, 891.0, 4014.0, 891.0, 4071.0, 1433.863037000000077, 4071.0 ],
					"source" : [ "obj-780", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpf-3", 0 ],
					"source" : [ "obj-780", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1t3h3j83z", 0 ],
					"order" : 3,
					"source" : [ "obj-781", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-3", 0 ],
					"order" : 2,
					"source" : [ "obj-781", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-647", 0 ],
					"midpoints" : [ 712.76451099999997, 3650.013672000000042, 458.746154999999987, 3650.013672000000042, 458.746154999999987, 3399.070800999999847, 704.727783000000045, 3399.070800999999847 ],
					"order" : 4,
					"source" : [ "obj-781", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-786", 0 ],
					"midpoints" : [ 712.76451099999997, 3644.013672000000042, 212.764510999999999, 3644.013672000000042 ],
					"order" : 5,
					"source" : [ "obj-781", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-add1000-3", 0 ],
					"order" : 1,
					"source" : [ "obj-781", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-3", 1 ],
					"order" : 0,
					"source" : [ "obj-781", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.501961, 1.0, 1.0 ],
					"destination" : [ "obj-713", 0 ],
					"midpoints" : [ 727.214539000000059, 4440.0, 1532.363037000000077, 4440.0 ],
					"source" : [ "obj-785", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpa-3", 0 ],
					"source" : [ "obj-785", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-780", 0 ],
					"midpoints" : [ 212.764510999999999, 3677.013672000000042, 316.489502000000016, 3677.013672000000042, 316.489502000000016, 3563.013428000000204, 420.214539000000002, 3563.013428000000204 ],
					"order" : 1,
					"source" : [ "obj-786", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-785", 0 ],
					"midpoints" : [ 212.764510999999999, 3876.969970999999987, 420.214539000000002, 3876.969970999999987 ],
					"order" : 0,
					"source" : [ "obj-786", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7bdffdhlv", 0 ],
					"source" : [ "obj-7b3fmv8dz", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tqugz621u", 0 ],
					"source" : [ "obj-7bdffdhlv", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-7sbcivixq", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 298.750548999999978, 860.512817000000041, 298.750548999999978, 860.512817000000041 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"midpoints" : [ 313.750548999999978, 843.694641000000047, 314.250548999999978, 843.694641000000047 ],
					"source" : [ "obj-80", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-839", 0 ],
					"order" : 1,
					"source" : [ "obj-838", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-mzero", 0 ],
					"order" : 0,
					"source" : [ "obj-838", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-839", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.25098, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 548.107201000000032, 1099.457130510528486, 336.804686999999944, 1099.457130510528486 ],
					"order" : 2,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 548.107201000000032, 357.0, 18.0, 357.0, 18.0, 240.0, 111.0, 240.0, 111.0, 228.0, 124.107201000000003, 228.0 ],
					"order" : 3,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-441", 0 ],
					"order" : 4,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-pre-i", 0 ],
					"order" : 0,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-xe2aqygkh", 0 ],
					"order" : 1,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-853", 0 ],
					"source" : [ "obj-852", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-853", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-855", 0 ],
					"source" : [ "obj-854", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10000", 0 ],
					"source" : [ "obj-855", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"midpoints" : [ 1785.345215000000053, 253.241135000000014, 1789.983887000000095, 253.241135000000014 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 213.934981999999991, 473.397429999999986, 422.200531000000012, 473.397429999999986 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 213.934981999999991, 273.441101000000003, 317.659942999999998, 273.441101000000003, 317.659942999999998, 159.441101000000003, 421.384978999999987, 159.441101000000003 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"midpoints" : [ 1721.345215000000053, 224.441115999999994, 1904.085327000000007, 224.441115999999994 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 1734.845215000000053, 224.441115999999994, 1846.345336999999972, 224.441115999999994 ],
					"source" : [ "obj-93", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 1748.345215000000053, 224.441115999999994, 1795.845215000000053, 224.441115999999994 ],
					"source" : [ "obj-93", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"midpoints" : [ 343.834991000000002, 412.891052000000002, 354.403167999999994, 412.891052000000002 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 1721.345215000000053, 181.691101000000003, 1721.345215000000053, 181.691101000000003 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 345.134978999999987, 344.541076999999973, 343.834991000000002, 344.541076999999973 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 345.134978999999987, 329.641082999999981, 389.303161999999986, 329.641082999999981 ],
					"order" : 0,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 345.134978999999987, 335.441101000000003, 298.750548999999978, 335.441101000000003 ],
					"order" : 2,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 345.134978999999987, 282.041107000000011, 345.134978999999987, 282.041107000000011 ],
					"order" : 1,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 156.107238999999993, 219.0, 174.107238999999993, 219.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-0", 1 ],
					"source" : [ "obj-add1000-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-1", 1 ],
					"source" : [ "obj-add1000-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-2", 1 ],
					"source" : [ "obj-add1000-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-3", 1 ],
					"source" : [ "obj-add1000-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-4", 1 ],
					"source" : [ "obj-add1000-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-tall", 0 ],
					"source" : [ "obj-at-all-btn", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-0", 0 ],
					"source" : [ "obj-at-btn-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-1", 0 ],
					"source" : [ "obj-at-btn-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-2", 0 ],
					"source" : [ "obj-at-btn-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-3", 0 ],
					"source" : [ "obj-at-btn-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-4", 0 ],
					"source" : [ "obj-at-btn-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selzd-0", 0 ],
					"source" : [ "obj-at-fcur-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selzd-1", 0 ],
					"source" : [ "obj-at-fcur-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selzd-2", 0 ],
					"source" : [ "obj-at-fcur-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selzd-3", 0 ],
					"source" : [ "obj-at-fcur-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selzd-4", 0 ],
					"source" : [ "obj-at-fcur-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-0", 1 ],
					"source" : [ "obj-at-lasta-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-1", 1 ],
					"source" : [ "obj-at-lasta-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-2", 1 ],
					"source" : [ "obj-at-lasta-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-3", 1 ],
					"source" : [ "obj-at-lasta-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-4", 1 ],
					"source" : [ "obj-at-lasta-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-0", 0 ],
					"source" : [ "obj-at-lastf-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-1", 0 ],
					"source" : [ "obj-at-lastf-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-2", 0 ],
					"source" : [ "obj-at-lastf-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-3", 0 ],
					"source" : [ "obj-at-lastf-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-max-4", 0 ],
					"source" : [ "obj-at-lastf-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selz-0", 0 ],
					"source" : [ "obj-at-max-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selz-1", 0 ],
					"source" : [ "obj-at-max-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selz-2", 0 ],
					"source" : [ "obj-at-max-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selz-3", 0 ],
					"source" : [ "obj-at-max-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-selz-4", 0 ],
					"source" : [ "obj-at-max-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-at-mdom-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 0,
					"source" : [ "obj-at-mdom-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"order" : 0,
					"source" : [ "obj-at-mdom-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"order" : 1,
					"source" : [ "obj-at-mdom-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"order" : 1,
					"source" : [ "obj-at-mdom-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"order" : 0,
					"source" : [ "obj-at-mdom-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"order" : 1,
					"source" : [ "obj-at-mdom-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-785", 0 ],
					"order" : 0,
					"source" : [ "obj-at-mdom-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"order" : 1,
					"source" : [ "obj-at-mdom-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"order" : 0,
					"source" : [ "obj-at-mdom-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-at-mdumpa-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"source" : [ "obj-at-mdumpa-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"source" : [ "obj-at-mdumpa-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-785", 0 ],
					"source" : [ "obj-at-mdumpa-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"source" : [ "obj-at-mdumpa-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-at-mdumpf-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"source" : [ "obj-at-mdumpf-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"source" : [ "obj-at-mdumpf-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"source" : [ "obj-at-mdumpf-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"source" : [ "obj-at-mdumpf-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-at-msetdom-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 0,
					"source" : [ "obj-at-msetdom-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"order" : 0,
					"source" : [ "obj-at-msetdom-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"order" : 1,
					"source" : [ "obj-at-msetdom-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"order" : 1,
					"source" : [ "obj-at-msetdom-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"order" : 0,
					"source" : [ "obj-at-msetdom-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"order" : 1,
					"source" : [ "obj-at-msetdom-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-785", 0 ],
					"order" : 0,
					"source" : [ "obj-at-msetdom-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"order" : 1,
					"source" : [ "obj-at-msetdom-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"order" : 0,
					"source" : [ "obj-at-msetdom-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-0", 1 ],
					"order" : 0,
					"source" : [ "obj-at-mzero-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-0", 1 ],
					"order" : 1,
					"source" : [ "obj-at-mzero-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-1", 1 ],
					"order" : 0,
					"source" : [ "obj-at-mzero-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-1", 1 ],
					"order" : 1,
					"source" : [ "obj-at-mzero-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-2", 1 ],
					"order" : 0,
					"source" : [ "obj-at-mzero-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-2", 1 ],
					"order" : 1,
					"source" : [ "obj-at-mzero-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-3", 1 ],
					"order" : 0,
					"source" : [ "obj-at-mzero-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-3", 1 ],
					"order" : 1,
					"source" : [ "obj-at-mzero-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-4", 1 ],
					"order" : 0,
					"source" : [ "obj-at-mzero-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-4", 1 ],
					"order" : 1,
					"source" : [ "obj-at-mzero-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdom-0", 0 ],
					"source" : [ "obj-at-selz-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdom-1", 0 ],
					"source" : [ "obj-at-selz-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdom-2", 0 ],
					"source" : [ "obj-at-selz-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdom-3", 0 ],
					"source" : [ "obj-at-selz-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdom-4", 0 ],
					"source" : [ "obj-at-selz-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-tgo-0", 0 ],
					"source" : [ "obj-at-selzd-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-tgo-1", 0 ],
					"source" : [ "obj-at-selzd-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-tgo-2", 0 ],
					"source" : [ "obj-at-selzd-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-tgo-3", 0 ],
					"source" : [ "obj-at-selzd-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-tgo-4", 0 ],
					"source" : [ "obj-at-selzd-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-0", 0 ],
					"source" : [ "obj-at-seq-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-0", 0 ],
					"source" : [ "obj-at-seq-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpa-0", 0 ],
					"source" : [ "obj-at-seq-0", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpf-0", 0 ],
					"source" : [ "obj-at-seq-0", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mzero-0", 0 ],
					"source" : [ "obj-at-seq-0", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-1", 0 ],
					"source" : [ "obj-at-seq-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-1", 0 ],
					"source" : [ "obj-at-seq-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpa-1", 0 ],
					"source" : [ "obj-at-seq-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpf-1", 0 ],
					"source" : [ "obj-at-seq-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mzero-1", 0 ],
					"source" : [ "obj-at-seq-1", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-2", 0 ],
					"source" : [ "obj-at-seq-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-2", 0 ],
					"source" : [ "obj-at-seq-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpa-2", 0 ],
					"source" : [ "obj-at-seq-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpf-2", 0 ],
					"source" : [ "obj-at-seq-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mzero-2", 0 ],
					"source" : [ "obj-at-seq-2", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-3", 0 ],
					"source" : [ "obj-at-seq-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-3", 0 ],
					"source" : [ "obj-at-seq-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpa-3", 0 ],
					"source" : [ "obj-at-seq-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpf-3", 0 ],
					"source" : [ "obj-at-seq-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mzero-3", 0 ],
					"source" : [ "obj-at-seq-3", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-4", 0 ],
					"source" : [ "obj-at-seq-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-4", 0 ],
					"source" : [ "obj-at-seq-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpa-4", 0 ],
					"source" : [ "obj-at-seq-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mdumpf-4", 0 ],
					"source" : [ "obj-at-seq-4", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-mzero-4", 0 ],
					"source" : [ "obj-at-seq-4", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-0", 0 ],
					"source" : [ "obj-at-tall", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-1", 0 ],
					"source" : [ "obj-at-tall", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-2", 0 ],
					"source" : [ "obj-at-tall", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-3", 0 ],
					"source" : [ "obj-at-tall", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-4", 0 ],
					"source" : [ "obj-at-tall", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-msetdom-0", 0 ],
					"source" : [ "obj-at-tgo-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-seq-0", 0 ],
					"source" : [ "obj-at-tgo-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-msetdom-1", 0 ],
					"source" : [ "obj-at-tgo-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-seq-1", 0 ],
					"source" : [ "obj-at-tgo-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-msetdom-2", 0 ],
					"source" : [ "obj-at-tgo-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-seq-2", 0 ],
					"source" : [ "obj-at-tgo-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-msetdom-3", 0 ],
					"source" : [ "obj-at-tgo-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-seq-3", 0 ],
					"source" : [ "obj-at-tgo-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-msetdom-4", 0 ],
					"source" : [ "obj-at-tgo-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-seq-4", 0 ],
					"source" : [ "obj-at-tgo-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-0", 1 ],
					"source" : [ "obj-at-unpa-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-1", 1 ],
					"source" : [ "obj-at-unpa-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-2", 1 ],
					"source" : [ "obj-at-unpa-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-3", 1 ],
					"source" : [ "obj-at-unpa-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lasta-4", 1 ],
					"source" : [ "obj-at-unpa-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-0", 1 ],
					"source" : [ "obj-at-unpf-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-1", 1 ],
					"source" : [ "obj-at-unpf-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-2", 1 ],
					"source" : [ "obj-at-unpf-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-3", 1 ],
					"source" : [ "obj-at-unpf-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-lastf-4", 1 ],
					"source" : [ "obj-at-unpf-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-autoplay-send", 0 ],
					"source" : [ "obj-autoplay-toggle", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-47", 0 ],
					"source" : [ "obj-c5-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-13", 0 ],
					"source" : [ "obj-c5-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-36", 0 ],
					"source" : [ "obj-c5-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-32", 0 ],
					"source" : [ "obj-c5-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-14", 0 ],
					"source" : [ "obj-c5-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-20", 0 ],
					"source" : [ "obj-c5-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-21", 0 ],
					"source" : [ "obj-c5-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-22", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-56", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-storedom-4", 0 ],
					"order" : 2,
					"source" : [ "obj-c5-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-add1000-4", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-fcur-4", 1 ],
					"order" : 0,
					"source" : [ "obj-c5-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-33", 0 ],
					"order" : 4,
					"source" : [ "obj-c5-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-45", 0 ],
					"order" : 5,
					"source" : [ "obj-c5-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-60", 0 ],
					"order" : 3,
					"source" : [ "obj-c5-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-22", 2 ],
					"source" : [ "obj-c5-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-22", 0 ],
					"source" : [ "obj-c5-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-22", 1 ],
					"source" : [ "obj-c5-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-22", 0 ],
					"source" : [ "obj-c5-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-84", 1 ],
					"source" : [ "obj-c5-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-24", 0 ],
					"source" : [ "obj-c5-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"source" : [ "obj-c5-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-28", 0 ],
					"source" : [ "obj-c5-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-29", 0 ],
					"source" : [ "obj-c5-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-30", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-58", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-30", 2 ],
					"source" : [ "obj-c5-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-30", 0 ],
					"source" : [ "obj-c5-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-30", 1 ],
					"source" : [ "obj-c5-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-30", 0 ],
					"source" : [ "obj-c5-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"source" : [ "obj-c5-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-24", 1 ],
					"source" : [ "obj-c5-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-38", 0 ],
					"source" : [ "obj-c5-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-4", 1 ],
					"source" : [ "obj-c5-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-19", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-27", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-26", 0 ],
					"source" : [ "obj-c5-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-26", 0 ],
					"source" : [ "obj-c5-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-11", 0 ],
					"source" : [ "obj-c5-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-31", 0 ],
					"order" : 2,
					"source" : [ "obj-c5-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-engate-4", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzsel-4", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3ph-send", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"order" : 2,
					"source" : [ "obj-c5-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-44", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-48", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-2", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-8", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-1", 0 ],
					"source" : [ "obj-c5-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-55", 0 ],
					"source" : [ "obj-c5-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpf-4", 0 ],
					"source" : [ "obj-c5-42", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-9", 0 ],
					"source" : [ "obj-c5-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-10", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-9", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-16", 0 ],
					"source" : [ "obj-c5-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-43", 0 ],
					"source" : [ "obj-c5-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-46", 0 ],
					"source" : [ "obj-c5-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-47", 0 ],
					"source" : [ "obj-c5-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-39", 0 ],
					"order" : 2,
					"source" : [ "obj-c5-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-4", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-48", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-34", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-6", 0 ],
					"order" : 2,
					"source" : [ "obj-c5-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-4", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-3", 0 ],
					"order" : 2,
					"source" : [ "obj-c5-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-35", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-4", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-2", 0 ],
					"source" : [ "obj-c5-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-41", 0 ],
					"source" : [ "obj-c5-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-57", 0 ],
					"source" : [ "obj-c5-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-27", 0 ],
					"source" : [ "obj-c5-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-62", 0 ],
					"source" : [ "obj-c5-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-19", 0 ],
					"source" : [ "obj-c5-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-53", 0 ],
					"source" : [ "obj-c5-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-52", 0 ],
					"source" : [ "obj-c5-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-3", 1 ],
					"source" : [ "obj-c5-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-3", 0 ],
					"source" : [ "obj-c5-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-61", 0 ],
					"source" : [ "obj-c5-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-59", 0 ],
					"source" : [ "obj-c5-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-54", 0 ],
					"source" : [ "obj-c5-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-68", 0 ],
					"source" : [ "obj-c5-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-66", 0 ],
					"source" : [ "obj-c5-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-at-unpa-4", 0 ],
					"source" : [ "obj-c5-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-10", 0 ],
					"source" : [ "obj-c5-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-71", 0 ],
					"source" : [ "obj-c5-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-71", 0 ],
					"source" : [ "obj-c5-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbi-5", 0 ],
					"source" : [ "obj-c5-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-84", 0 ],
					"source" : [ "obj-c5-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"source" : [ "obj-c5-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-39", 0 ],
					"source" : [ "obj-c5-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-2", 0 ],
					"source" : [ "obj-c5-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-12", 0 ],
					"source" : [ "obj-c5-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-exactsend", 0 ],
					"source" : [ "obj-c5-exactnum", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"order" : 4,
					"source" : [ "obj-c5-mixin", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"order" : 1,
					"source" : [ "obj-c5-mixin", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"order" : 5,
					"source" : [ "obj-c5-mixin", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-343", 0 ],
					"order" : 3,
					"source" : [ "obj-c5-mixin", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-383", 0 ],
					"order" : 0,
					"source" : [ "obj-c5-mixin", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-395", 0 ],
					"order" : 2,
					"source" : [ "obj-c5-mixin", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-1", 0 ],
					"source" : [ "obj-cl-btn-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-2", 0 ],
					"source" : [ "obj-cl-btn-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-3", 0 ],
					"source" : [ "obj-cl-btn-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-4", 0 ],
					"source" : [ "obj-cl-btn-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-5", 0 ],
					"source" : [ "obj-cl-btn-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-sel-1", 0 ],
					"source" : [ "obj-cl-i-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-sel-2", 0 ],
					"source" : [ "obj-cl-i-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-sel-3", 0 ],
					"source" : [ "obj-cl-i-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-sel-4", 0 ],
					"source" : [ "obj-cl-i-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-sel-5", 0 ],
					"source" : [ "obj-cl-i-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-cl-mA-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"source" : [ "obj-cl-mA-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"source" : [ "obj-cl-mA-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-785", 0 ],
					"source" : [ "obj-cl-mA-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-7", 0 ],
					"source" : [ "obj-cl-mA-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-cl-mF-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"source" : [ "obj-cl-mF-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"source" : [ "obj-cl-mF-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-780", 0 ],
					"source" : [ "obj-cl-mF-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-42", 0 ],
					"source" : [ "obj-cl-mF-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mA-1", 0 ],
					"source" : [ "obj-cl-sel-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mF-1", 0 ],
					"source" : [ "obj-cl-sel-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mA-2", 0 ],
					"source" : [ "obj-cl-sel-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mF-2", 0 ],
					"source" : [ "obj-cl-sel-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mA-3", 0 ],
					"source" : [ "obj-cl-sel-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mF-3", 0 ],
					"source" : [ "obj-cl-sel-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mA-4", 0 ],
					"source" : [ "obj-cl-sel-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mF-4", 0 ],
					"source" : [ "obj-cl-sel-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mA-5", 0 ],
					"source" : [ "obj-cl-sel-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-mF-5", 0 ],
					"source" : [ "obj-cl-sel-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-out", 0 ],
					"source" : [ "obj-ct-add", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-pack", 0 ],
					"source" : [ "obj-ct-cellstore", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-tbb", 0 ],
					"source" : [ "obj-ct-del", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-out", 0 ],
					"source" : [ "obj-ct-dgate", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-pack", 1 ],
					"source" : [ "obj-ct-domstore", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-tofs", 0 ],
					"order" : 1,
					"source" : [ "obj-ct-i", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-val", 0 ],
					"order" : 0,
					"source" : [ "obj-ct-i", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-i", 0 ],
					"source" : [ "obj-ct-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-tlat", 0 ],
					"source" : [ "obj-ct-latch", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-js", 0 ],
					"source" : [ "obj-ct-learn", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-js", 0 ],
					"source" : [ "obj-ct-mzero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-dgate", 0 ],
					"source" : [ "obj-ct-notplay", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-trig", 0 ],
					"source" : [ "obj-ct-out", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-tot-i", 0 ],
					"source" : [ "obj-ct-out", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-learn", 0 ],
					"source" : [ "obj-ct-pack", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-js", 0 ],
					"source" : [ "obj-ct-qry", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-cellstore", 1 ],
					"source" : [ "obj-ct-rcap", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-del", 0 ],
					"source" : [ "obj-ct-rcap", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-cellstore", 1 ],
					"source" : [ "obj-ct-scap", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-del", 0 ],
					"source" : [ "obj-ct-scap", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-latch", 0 ],
					"source" : [ "obj-ct-start", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-clocker", 0 ],
					"source" : [ "obj-ct-start", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-cellstore", 0 ],
					"source" : [ "obj-ct-tbb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-domstore", 0 ],
					"source" : [ "obj-ct-tbb", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-add", 1 ],
					"source" : [ "obj-ct-tlat", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-out", 0 ],
					"source" : [ "obj-ct-tlat", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-dgate", 1 ],
					"source" : [ "obj-ct-tofs", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-latch", 1 ],
					"source" : [ "obj-ct-tofs", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7sbcivixq", 0 ],
					"source" : [ "obj-d5j3ero9y", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-one-0", 0 ],
					"source" : [ "obj-delay-start-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-one-1", 0 ],
					"source" : [ "obj-delay-start-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-one-2", 0 ],
					"source" : [ "obj-delay-start-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-one-3", 0 ],
					"source" : [ "obj-delay-start-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-one-4", 0 ],
					"source" : [ "obj-delay-start-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-fade-0", 0 ],
					"order" : 0,
					"source" : [ "obj-delay-stop-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-0", 0 ],
					"order" : 1,
					"source" : [ "obj-delay-stop-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-fade-1", 0 ],
					"order" : 0,
					"source" : [ "obj-delay-stop-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-1", 0 ],
					"order" : 1,
					"source" : [ "obj-delay-stop-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-fade-2", 0 ],
					"order" : 0,
					"source" : [ "obj-delay-stop-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-2", 0 ],
					"order" : 1,
					"source" : [ "obj-delay-stop-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-fade-3", 0 ],
					"order" : 0,
					"source" : [ "obj-delay-stop-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-3", 0 ],
					"order" : 1,
					"source" : [ "obj-delay-stop-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-fade-4", 0 ],
					"order" : 0,
					"source" : [ "obj-delay-stop-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-4", 0 ],
					"order" : 1,
					"source" : [ "obj-delay-stop-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4hflnnlkl", 0 ],
					"source" : [ "obj-dnsqopshf", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-engate-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"source" : [ "obj-engate-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-engate-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-709", 0 ],
					"source" : [ "obj-engate-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-15", 0 ],
					"source" : [ "obj-engate-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-enzmsg-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"source" : [ "obj-enzmsg-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-enzmsg-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-709", 0 ],
					"source" : [ "obj-enzmsg-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-15", 0 ],
					"source" : [ "obj-enzmsg-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzmsg-0", 0 ],
					"source" : [ "obj-enzsel-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzmsg-1", 0 ],
					"source" : [ "obj-enzsel-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzmsg-2", 0 ],
					"source" : [ "obj-enzsel-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzmsg-3", 0 ],
					"source" : [ "obj-enzsel-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-enzmsg-4", 0 ],
					"source" : [ "obj-enzsel-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-679", 0 ],
					"source" : [ "obj-esodd5bpi", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tbtn-0", 0 ],
					"source" : [ "obj-fd-btn-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tbtn-1", 0 ],
					"source" : [ "obj-fd-btn-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tbtn-2", 0 ],
					"source" : [ "obj-fd-btn-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tbtn-3", 0 ],
					"source" : [ "obj-fd-btn-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tbtn-4", 0 ],
					"source" : [ "obj-fd-btn-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tinit", 0 ],
					"source" : [ "obj-fd-del", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmax-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-474", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmax-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmax-0", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmax-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmax-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-480", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmax-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmax-1", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmax-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-303", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmax-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-483", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmax-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmax-2", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmax-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-646", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmax-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-770", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmax-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmax-3", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmax-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-34", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmax-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-6", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmax-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmax-4", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmax-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmin-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-475", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmin-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmin-0", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmin-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmin-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-479", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmin-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmin-1", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmin-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-305", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmin-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-482", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmin-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmin-2", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmin-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-645", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmin-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-771", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmin-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmin-3", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmin-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-3", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-gmin-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-35", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-gmin-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setmin-4", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-gmin-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-0", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-inv-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-0", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-inv-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-1", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-inv-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-1", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-inv-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-2", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-inv-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-2", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-inv-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-3", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-inv-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-3", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-inv-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmax-4", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-inv-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-gmin-4", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-inv-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-del", 0 ],
					"source" : [ "obj-fd-lb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-max-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-474", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-max-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-0", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-max-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-min-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-475", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-min-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-one-0", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-min-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-0", 0 ],
					"source" : [ "obj-fd-one-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-1", 0 ],
					"source" : [ "obj-fd-one-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-2", 0 ],
					"source" : [ "obj-fd-one-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-3", 0 ],
					"source" : [ "obj-fd-one-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-4", 0 ],
					"source" : [ "obj-fd-one-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-t-0", 0 ],
					"source" : [ "obj-fd-ovr-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-t-1", 0 ],
					"source" : [ "obj-fd-ovr-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-t-2", 0 ],
					"source" : [ "obj-fd-ovr-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-t-3", 0 ],
					"source" : [ "obj-fd-ovr-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-t-4", 0 ],
					"source" : [ "obj-fd-ovr-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-trec-0", 0 ],
					"source" : [ "obj-fd-rgate-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-trec-1", 0 ],
					"source" : [ "obj-fd-rgate-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-trec-2", 0 ],
					"source" : [ "obj-fd-rgate-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-trec-3", 0 ],
					"source" : [ "obj-fd-rgate-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-trec-4", 0 ],
					"source" : [ "obj-fd-rgate-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-486", 0 ],
					"source" : [ "obj-fd-rseq", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tref", 0 ],
					"source" : [ "obj-fd-rseq", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-trg", 0 ],
					"source" : [ "obj-fd-rseq", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tg-0", 0 ],
					"source" : [ "obj-fd-sel0-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tg-1", 0 ],
					"source" : [ "obj-fd-sel0-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tg-2", 0 ],
					"source" : [ "obj-fd-sel0-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tg-3", 0 ],
					"source" : [ "obj-fd-sel0-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tg-4", 0 ],
					"source" : [ "obj-fd-sel0-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-btn-0", 0 ],
					"source" : [ "obj-fd-setbtn-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-btn-1", 0 ],
					"source" : [ "obj-fd-setbtn-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-btn-2", 0 ],
					"source" : [ "obj-fd-setbtn-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-btn-3", 0 ],
					"source" : [ "obj-fd-setbtn-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-btn-4", 0 ],
					"source" : [ "obj-fd-setbtn-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-max-0", 0 ],
					"source" : [ "obj-fd-setmax-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"source" : [ "obj-fd-setmax-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-306", 0 ],
					"source" : [ "obj-fd-setmax-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-772", 0 ],
					"source" : [ "obj-fd-setmax-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-50", 0 ],
					"source" : [ "obj-fd-setmax-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-min-0", 0 ],
					"source" : [ "obj-fd-setmin-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-fd-setmin-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"source" : [ "obj-fd-setmin-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-774", 0 ],
					"source" : [ "obj-fd-setmin-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-51", 0 ],
					"source" : [ "obj-fd-setmin-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-inv-0", 0 ],
					"source" : [ "obj-fd-t-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-0", 0 ],
					"source" : [ "obj-fd-t-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setbtn-0", 0 ],
					"source" : [ "obj-fd-t-0", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-inv-1", 0 ],
					"source" : [ "obj-fd-t-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-1", 0 ],
					"source" : [ "obj-fd-t-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setbtn-1", 0 ],
					"source" : [ "obj-fd-t-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-inv-2", 0 ],
					"source" : [ "obj-fd-t-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-2", 0 ],
					"source" : [ "obj-fd-t-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setbtn-2", 0 ],
					"source" : [ "obj-fd-t-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-inv-3", 0 ],
					"source" : [ "obj-fd-t-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-3", 0 ],
					"source" : [ "obj-fd-t-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setbtn-3", 0 ],
					"source" : [ "obj-fd-t-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-inv-4", 0 ],
					"source" : [ "obj-fd-t-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-4", 0 ],
					"source" : [ "obj-fd-t-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-setbtn-4", 0 ],
					"source" : [ "obj-fd-t-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-0", 0 ],
					"source" : [ "obj-fd-tbtn-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-sel0-0", 0 ],
					"source" : [ "obj-fd-tbtn-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-1", 0 ],
					"source" : [ "obj-fd-tbtn-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-sel0-1", 0 ],
					"source" : [ "obj-fd-tbtn-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-2", 0 ],
					"source" : [ "obj-fd-tbtn-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-sel0-2", 0 ],
					"source" : [ "obj-fd-tbtn-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-3", 0 ],
					"source" : [ "obj-fd-tbtn-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-sel0-3", 0 ],
					"source" : [ "obj-fd-tbtn-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-4", 0 ],
					"source" : [ "obj-fd-tbtn-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-sel0-4", 0 ],
					"source" : [ "obj-fd-tbtn-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-fd-tg-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-fd-tg-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-fd-tg-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-fd-tg-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-fd-tg-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-fd-tg-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-fd-tg-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-fd-tg-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-fd-tg-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-fd-tg-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-fd-tgi", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-fd-tgi", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-tgi", 0 ],
					"source" : [ "obj-fd-tinit", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-zero", 0 ],
					"source" : [ "obj-fd-tinit", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-max-0", 0 ],
					"source" : [ "obj-fd-trec-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-min-0", 0 ],
					"source" : [ "obj-fd-trec-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"source" : [ "obj-fd-trec-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-fd-trec-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-306", 0 ],
					"source" : [ "obj-fd-trec-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"source" : [ "obj-fd-trec-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-772", 0 ],
					"source" : [ "obj-fd-trec-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-774", 0 ],
					"source" : [ "obj-fd-trec-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-50", 0 ],
					"source" : [ "obj-fd-trec-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-51", 0 ],
					"source" : [ "obj-fd-trec-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-0", 0 ],
					"source" : [ "obj-fd-tref", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-1", 0 ],
					"source" : [ "obj-fd-tref", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-2", 0 ],
					"source" : [ "obj-fd-tref", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-3", 0 ],
					"source" : [ "obj-fd-tref", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-4", 0 ],
					"source" : [ "obj-fd-tref", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-0", 1 ],
					"source" : [ "obj-fd-trg", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-1", 1 ],
					"source" : [ "obj-fd-trg", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-2", 1 ],
					"source" : [ "obj-fd-trg", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-3", 1 ],
					"source" : [ "obj-fd-trg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-rgate-4", 1 ],
					"source" : [ "obj-fd-trg", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-0", 0 ],
					"order" : 4,
					"source" : [ "obj-fd-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-1", 0 ],
					"order" : 3,
					"source" : [ "obj-fd-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-2", 0 ],
					"order" : 2,
					"source" : [ "obj-fd-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-3", 0 ],
					"order" : 1,
					"source" : [ "obj-fd-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fd-ovr-4", 0 ],
					"order" : 0,
					"source" : [ "obj-fd-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-block-send", 0 ],
					"source" : [ "obj-fp-guard-inv", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-lb-msg", 0 ],
					"source" : [ "obj-fp-guard-lb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-block-send", 0 ],
					"source" : [ "obj-fp-guard-lb-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-0", 1 ],
					"source" : [ "obj-fp-guard-pre-gate-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-1", 1 ],
					"source" : [ "obj-fp-guard-pre-gate-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-2", 1 ],
					"source" : [ "obj-fp-guard-pre-gate-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-3", 1 ],
					"source" : [ "obj-fp-guard-pre-gate-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-4", 1 ],
					"source" : [ "obj-fp-guard-pre-gate-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-pre-gate-0", 0 ],
					"source" : [ "obj-fp-guard-r-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-pre-gate-1", 0 ],
					"source" : [ "obj-fp-guard-r-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-pre-gate-2", 0 ],
					"source" : [ "obj-fp-guard-r-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-pre-gate-3", 0 ],
					"source" : [ "obj-fp-guard-r-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-pre-gate-4", 0 ],
					"source" : [ "obj-fp-guard-r-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-send", 0 ],
					"source" : [ "obj-fp-mend", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-sstart", 0 ],
					"source" : [ "obj-fp-mstart", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-fp-pipe", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-mend", 0 ],
					"order" : 0,
					"source" : [ "obj-fp-pre", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-mstart", 0 ],
					"order" : 1,
					"source" : [ "obj-fp-pre", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-pipe", 0 ],
					"source" : [ "obj-fp-pre", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-446", 0 ],
					"source" : [ "obj-g16xfd1wi", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tbbb-0", 0 ],
					"source" : [ "obj-gate-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tbbb-1", 0 ],
					"source" : [ "obj-gate-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tbbb-2", 0 ],
					"source" : [ "obj-gate-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tbbb-3", 0 ],
					"source" : [ "obj-gate-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tbbb-4", 0 ],
					"source" : [ "obj-gate-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-gjt7l5zdl", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-iek1sdwhj", 0 ],
					"source" : [ "obj-h5wvk71m2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2t3ccds1y", 0 ],
					"source" : [ "obj-hvlho7th0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3afs9g9yx", 0 ],
					"source" : [ "obj-i7zy4n5jg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5b1onwccc", 0 ],
					"source" : [ "obj-iek1sdwhj", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-460", 0 ],
					"source" : [ "obj-j74anr8kb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6qokentgx", 0 ],
					"source" : [ "obj-jx8nc1z5j", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vz66rk2iu", 0 ],
					"source" : [ "obj-ktek75n02", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ktek75n02", 0 ],
					"source" : [ "obj-m09utl895", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4t5h0d4ok", 0 ],
					"source" : [ "obj-m7yi42pvd", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-1", 0 ],
					"source" : [ "obj-ms-and-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-2", 0 ],
					"source" : [ "obj-ms-and-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-3", 0 ],
					"source" : [ "obj-ms-and-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-4", 0 ],
					"source" : [ "obj-ms-and-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-5", 0 ],
					"source" : [ "obj-ms-and-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-2", 0 ],
					"order" : 3,
					"source" : [ "obj-ms-clr-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-3", 0 ],
					"order" : 2,
					"source" : [ "obj-ms-clr-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-4", 0 ],
					"order" : 1,
					"source" : [ "obj-ms-clr-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-5", 0 ],
					"order" : 0,
					"source" : [ "obj-ms-clr-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-1", 0 ],
					"order" : 0,
					"source" : [ "obj-ms-clr-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-3", 0 ],
					"order" : 3,
					"source" : [ "obj-ms-clr-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-4", 0 ],
					"order" : 2,
					"source" : [ "obj-ms-clr-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-5", 0 ],
					"order" : 1,
					"source" : [ "obj-ms-clr-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-1", 0 ],
					"order" : 0,
					"source" : [ "obj-ms-clr-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-2", 0 ],
					"order" : 3,
					"source" : [ "obj-ms-clr-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-4", 0 ],
					"order" : 2,
					"source" : [ "obj-ms-clr-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-5", 0 ],
					"order" : 1,
					"source" : [ "obj-ms-clr-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-1", 0 ],
					"order" : 0,
					"source" : [ "obj-ms-clr-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-2", 0 ],
					"order" : 3,
					"source" : [ "obj-ms-clr-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-3", 0 ],
					"order" : 2,
					"source" : [ "obj-ms-clr-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-5", 0 ],
					"order" : 1,
					"source" : [ "obj-ms-clr-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-1", 0 ],
					"order" : 0,
					"source" : [ "obj-ms-clr-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-2", 0 ],
					"order" : 3,
					"source" : [ "obj-ms-clr-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-3", 0 ],
					"order" : 2,
					"source" : [ "obj-ms-clr-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-solo-4", 0 ],
					"order" : 1,
					"source" : [ "obj-ms-clr-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-1", 0 ],
					"source" : [ "obj-ms-eq0-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-2", 0 ],
					"source" : [ "obj-ms-eq0-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-3", 0 ],
					"source" : [ "obj-ms-eq0-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-4", 0 ],
					"source" : [ "obj-ms-eq0-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-5", 0 ],
					"source" : [ "obj-ms-eq0-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-1", 1 ],
					"source" : [ "obj-ms-eqn-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-2", 1 ],
					"source" : [ "obj-ms-eqn-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-3", 1 ],
					"source" : [ "obj-ms-eqn-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-4", 1 ],
					"source" : [ "obj-ms-eqn-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-or-5", 1 ],
					"source" : [ "obj-ms-eqn-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-lb0", 0 ],
					"source" : [ "obj-ms-lb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-lbsend", 0 ],
					"source" : [ "obj-ms-lb0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-1", 1 ],
					"source" : [ "obj-ms-nm-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-2", 1 ],
					"source" : [ "obj-ms-nm-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-3", 1 ],
					"source" : [ "obj-ms-nm-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-4", 1 ],
					"source" : [ "obj-ms-nm-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-and-5", 1 ],
					"source" : [ "obj-ms-nm-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-1", 0 ],
					"source" : [ "obj-ms-off-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-2", 0 ],
					"source" : [ "obj-ms-off-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-3", 0 ],
					"source" : [ "obj-ms-off-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-4", 0 ],
					"source" : [ "obj-ms-off-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-5", 0 ],
					"source" : [ "obj-ms-off-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-1", 0 ],
					"source" : [ "obj-ms-on-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-2", 0 ],
					"source" : [ "obj-ms-on-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-3", 0 ],
					"source" : [ "obj-ms-on-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-4", 0 ],
					"source" : [ "obj-ms-on-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-ssend-5", 0 ],
					"source" : [ "obj-ms-on-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"source" : [ "obj-ms-or-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-ms-or-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 0 ],
					"source" : [ "obj-ms-or-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-730", 0 ],
					"source" : [ "obj-ms-or-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-5", 0 ],
					"source" : [ "obj-ms-or-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-1", 0 ],
					"source" : [ "obj-ms-rsolo-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-2", 0 ],
					"source" : [ "obj-ms-rsolo-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-3", 0 ],
					"source" : [ "obj-ms-rsolo-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-4", 0 ],
					"source" : [ "obj-ms-rsolo-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-5", 0 ],
					"source" : [ "obj-ms-rsolo-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-off-1", 0 ],
					"source" : [ "obj-ms-sel-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbb-1", 0 ],
					"source" : [ "obj-ms-sel-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-off-2", 0 ],
					"source" : [ "obj-ms-sel-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbb-2", 0 ],
					"source" : [ "obj-ms-sel-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-off-3", 0 ],
					"source" : [ "obj-ms-sel-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbb-3", 0 ],
					"source" : [ "obj-ms-sel-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-off-4", 0 ],
					"source" : [ "obj-ms-sel-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbb-4", 0 ],
					"source" : [ "obj-ms-sel-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-off-5", 0 ],
					"source" : [ "obj-ms-sel-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tbb-5", 0 ],
					"source" : [ "obj-ms-sel-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sel-1", 0 ],
					"source" : [ "obj-ms-solo-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sel-2", 0 ],
					"source" : [ "obj-ms-solo-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sel-3", 0 ],
					"source" : [ "obj-ms-solo-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sel-4", 0 ],
					"source" : [ "obj-ms-solo-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sel-5", 0 ],
					"source" : [ "obj-ms-solo-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tii-1", 0 ],
					"source" : [ "obj-ms-sstore-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tii-2", 0 ],
					"source" : [ "obj-ms-sstore-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tii-3", 0 ],
					"source" : [ "obj-ms-sstore-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tii-4", 0 ],
					"source" : [ "obj-ms-sstore-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-tii-5", 0 ],
					"source" : [ "obj-ms-sstore-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-clr-1", 0 ],
					"source" : [ "obj-ms-tbb-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-on-1", 0 ],
					"source" : [ "obj-ms-tbb-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-clr-2", 0 ],
					"source" : [ "obj-ms-tbb-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-on-2", 0 ],
					"source" : [ "obj-ms-tbb-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-clr-3", 0 ],
					"source" : [ "obj-ms-tbb-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-on-3", 0 ],
					"source" : [ "obj-ms-tbb-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-clr-4", 0 ],
					"source" : [ "obj-ms-tbb-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-on-4", 0 ],
					"source" : [ "obj-ms-tbb-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-clr-5", 0 ],
					"source" : [ "obj-ms-tbb-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-on-5", 0 ],
					"source" : [ "obj-ms-tbb-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-nm-1", 0 ],
					"source" : [ "obj-ms-tbi-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-1", 0 ],
					"source" : [ "obj-ms-tbi-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-nm-2", 0 ],
					"source" : [ "obj-ms-tbi-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-2", 0 ],
					"source" : [ "obj-ms-tbi-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-nm-3", 0 ],
					"source" : [ "obj-ms-tbi-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-3", 0 ],
					"source" : [ "obj-ms-tbi-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-nm-4", 0 ],
					"source" : [ "obj-ms-tbi-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-4", 0 ],
					"source" : [ "obj-ms-tbi-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-nm-5", 0 ],
					"source" : [ "obj-ms-tbi-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-sstore-5", 0 ],
					"source" : [ "obj-ms-tbi-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eq0-1", 0 ],
					"source" : [ "obj-ms-tii-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eqn-1", 0 ],
					"source" : [ "obj-ms-tii-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eq0-2", 0 ],
					"source" : [ "obj-ms-tii-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eqn-2", 0 ],
					"source" : [ "obj-ms-tii-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eq0-3", 0 ],
					"source" : [ "obj-ms-tii-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eqn-3", 0 ],
					"source" : [ "obj-ms-tii-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eq0-4", 0 ],
					"source" : [ "obj-ms-tii-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eqn-4", 0 ],
					"source" : [ "obj-ms-tii-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eq0-5", 0 ],
					"source" : [ "obj-ms-tii-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ms-eqn-5", 0 ],
					"source" : [ "obj-ms-tii-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-msg-fade-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 0 ],
					"order" : 1,
					"source" : [ "obj-msg-fade-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-47", 0 ],
					"order" : 0,
					"source" : [ "obj-msg-fade-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 0,
					"source" : [ "obj-msg-global-fade", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 0 ],
					"order" : 2,
					"source" : [ "obj-msg-global-fade", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-47", 0 ],
					"order" : 1,
					"source" : [ "obj-msg-global-fade", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-383", 0 ],
					"order" : 0,
					"source" : [ "obj-msg-global-stop", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"order" : 1,
					"source" : [ "obj-msg-global-stop", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-msg-one-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-msg-one-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-299", 0 ],
					"source" : [ "obj-msg-one-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-766", 0 ],
					"source" : [ "obj-msg-one-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-37", 0 ],
					"source" : [ "obj-msg-one-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-msg-zero-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-msg-zero-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-299", 0 ],
					"source" : [ "obj-msg-zero-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-766", 0 ],
					"source" : [ "obj-msg-zero-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-c5-37", 0 ],
					"source" : [ "obj-msg-zero-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-wgrmzda3b", 0 ],
					"source" : [ "obj-mvz96otzd", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-781", 0 ],
					"source" : [ "obj-mx5tzq6di", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-oclp783qz", 0 ],
					"source" : [ "obj-n5auwlees", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-421", 0 ],
					"source" : [ "obj-ngqifyhl5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-v8kldzpti", 0 ],
					"source" : [ "obj-ny61s7jhx", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-397", 0 ],
					"source" : [ "obj-oclp783qz", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7b3fmv8dz", 0 ],
					"source" : [ "obj-ohqcid1yr", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-jx8nc1z5j", 0 ],
					"source" : [ "obj-pcgt85p41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-yo8ur7y8c", 0 ],
					"source" : [ "obj-pt2y9ylm7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-0", 0 ],
					"source" : [ "obj-r-autoplay-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-1", 0 ],
					"source" : [ "obj-r-autoplay-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-2", 0 ],
					"source" : [ "obj-r-autoplay-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-3", 0 ],
					"source" : [ "obj-r-autoplay-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gate-4", 0 ],
					"source" : [ "obj-r-autoplay-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sel-zero", 0 ],
					"source" : [ "obj-r-autoplay-stop", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-global-fade", 0 ],
					"order" : 0,
					"source" : [ "obj-sel-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-global-stop", 0 ],
					"order" : 1,
					"source" : [ "obj-sel-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-add2", 0 ],
					"order" : 0,
					"source" : [ "obj-seq-add", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-sstart", 0 ],
					"order" : 1,
					"source" : [ "obj-seq-add", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-send", 0 ],
					"source" : [ "obj-seq-add2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-selstore", 1 ],
					"source" : [ "obj-seq-capgate", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-capgate", 0 ],
					"source" : [ "obj-seq-capinv", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-sub", 0 ],
					"source" : [ "obj-seq-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-mul", 0 ],
					"source" : [ "obj-seq-div", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-lb0", 0 ],
					"source" : [ "obj-seq-lb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-scap", 0 ],
					"source" : [ "obj-seq-lb0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-add", 0 ],
					"source" : [ "obj-seq-mul", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-seq-pipe", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-capinv", 0 ],
					"source" : [ "obj-seq-rcap", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-269", 0 ],
					"order" : 3,
					"source" : [ "obj-seq-route", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2b-fpsel", 0 ],
					"order" : 0,
					"source" : [ "obj-seq-route", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fp-guard-inv", 0 ],
					"order" : 2,
					"source" : [ "obj-seq-route", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-pipe", 0 ],
					"order" : 1,
					"source" : [ "obj-seq-route", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-selstore", 0 ],
					"source" : [ "obj-seq-route", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-clip", 0 ],
					"source" : [ "obj-seq-selstore", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-div", 0 ],
					"source" : [ "obj-seq-sub", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-route", 0 ],
					"order" : 0,
					"source" : [ "obj-seq-toggle", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-scap", 0 ],
					"order" : 1,
					"source" : [ "obj-seq-toggle", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-stop-zero", 0 ],
					"source" : [ "obj-stop-rrecv", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 1,
					"source" : [ "obj-stop-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-seq-toggle", 0 ],
					"order" : 0,
					"source" : [ "obj-stop-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-start-0", 0 ],
					"source" : [ "obj-tbbb-0", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-0", 0 ],
					"source" : [ "obj-tbbb-0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-0", 0 ],
					"source" : [ "obj-tbbb-0", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-start-1", 0 ],
					"source" : [ "obj-tbbb-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-1", 0 ],
					"source" : [ "obj-tbbb-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-1", 0 ],
					"source" : [ "obj-tbbb-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-start-2", 0 ],
					"source" : [ "obj-tbbb-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-2", 0 ],
					"source" : [ "obj-tbbb-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-2", 0 ],
					"source" : [ "obj-tbbb-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-start-3", 0 ],
					"source" : [ "obj-tbbb-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-3", 0 ],
					"source" : [ "obj-tbbb-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-3", 0 ],
					"source" : [ "obj-tbbb-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-start-4", 0 ],
					"source" : [ "obj-tbbb-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-delay-stop-4", 0 ],
					"source" : [ "obj-tbbb-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-msg-zero-4", 0 ],
					"source" : [ "obj-tbbb-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gjt7l5zdl", 0 ],
					"source" : [ "obj-tdtibs8vg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pt2y9ylm7", 0 ],
					"source" : [ "obj-tdz1qcmgu", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-409", 0 ],
					"source" : [ "obj-tqugz621u", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-add", 0 ],
					"source" : [ "obj-tt-clocker", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-sprintf", 0 ],
					"source" : [ "obj-tt-min", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-sprintf", 1 ],
					"source" : [ "obj-tt-sdiv", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ct-start", 0 ],
					"source" : [ "obj-tt-sel", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-stop", 0 ],
					"source" : [ "obj-tt-sel", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-sdiv", 0 ],
					"source" : [ "obj-tt-smod", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-display", 0 ],
					"source" : [ "obj-tt-sprintf", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-clocker", 0 ],
					"source" : [ "obj-tt-stop", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-sprintf", 2 ],
					"source" : [ "obj-tt-tdiv", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-tdiv", 0 ],
					"source" : [ "obj-tt-tmod", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-min", 0 ],
					"source" : [ "obj-tt-trig", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-smod", 0 ],
					"source" : [ "obj-tt-trig", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-tmod", 0 ],
					"source" : [ "obj-tt-trig", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-col-set", 0 ],
					"source" : [ "obj-ttx-col-add", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-col-sub", 0 ],
					"source" : [ "obj-ttx-col-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-col-add", 0 ],
					"source" : [ "obj-ttx-col-mod", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-disp-col", 0 ],
					"source" : [ "obj-ttx-col-set", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-col-mod", 0 ],
					"source" : [ "obj-ttx-col-sub", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-pre-set", 0 ],
					"source" : [ "obj-ttx-pre-i", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-disp-prems", 0 ],
					"source" : [ "obj-ttx-pre-set", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-tot-set", 0 ],
					"source" : [ "obj-ttx-tot-i", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-disp-totms", 0 ],
					"source" : [ "obj-ttx-tot-set", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ttx-disp-totms", 0 ],
					"source" : [ "obj-ttx-tot-zero", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tt-display", 0 ],
					"source" : [ "obj-ttx-tot-zero-ms", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 0 ],
					"source" : [ "obj-tyrssdfl5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-v60osaa87", 0 ],
					"source" : [ "obj-u3i72wnv7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59dzgzjpe", 0 ],
					"source" : [ "obj-u8jkizm94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tdtibs8vg", 0 ],
					"source" : [ "obj-v60osaa87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-n5auwlees", 0 ],
					"source" : [ "obj-v8kldzpti", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selC-1", 0 ],
					"source" : [ "obj-vw-and-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selC-2", 0 ],
					"source" : [ "obj-vw-and-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selC-3", 0 ],
					"source" : [ "obj-vw-and-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selC-4", 0 ],
					"source" : [ "obj-vw-and-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selC-5", 0 ],
					"source" : [ "obj-vw-and-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tA-1", 0 ],
					"source" : [ "obj-vw-bamp-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tA-2", 0 ],
					"source" : [ "obj-vw-bamp-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tA-3", 0 ],
					"source" : [ "obj-vw-bamp-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tA-4", 0 ],
					"source" : [ "obj-vw-bamp-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tA-5", 0 ],
					"source" : [ "obj-vw-bamp-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-1", 0 ],
					"source" : [ "obj-vw-bedit-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-2", 0 ],
					"source" : [ "obj-vw-bedit-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-3", 0 ],
					"source" : [ "obj-vw-bedit-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-4", 0 ],
					"source" : [ "obj-vw-bedit-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-5", 0 ],
					"source" : [ "obj-vw-bedit-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selF-1", 0 ],
					"source" : [ "obj-vw-bfreq-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selF-2", 0 ],
					"source" : [ "obj-vw-bfreq-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selF-3", 0 ],
					"source" : [ "obj-vw-bfreq-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selF-4", 0 ],
					"source" : [ "obj-vw-bfreq-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selF-5", 0 ],
					"source" : [ "obj-vw-bfreq-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tinit-1", 0 ],
					"source" : [ "obj-vw-del-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tinit-2", 0 ],
					"source" : [ "obj-vw-del-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tinit-3", 0 ],
					"source" : [ "obj-vw-del-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tinit-4", 0 ],
					"source" : [ "obj-vw-del-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tinit-5", 0 ],
					"source" : [ "obj-vw-del-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mclean", 0 ],
					"source" : [ "obj-vw-del-clean", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-1", 0 ],
					"source" : [ "obj-vw-iE-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-2", 0 ],
					"source" : [ "obj-vw-iE-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-3", 0 ],
					"source" : [ "obj-vw-iE-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-4", 0 ],
					"source" : [ "obj-vw-iE-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-5", 0 ],
					"source" : [ "obj-vw-iE-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-del-1", 0 ],
					"source" : [ "obj-vw-lb-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-del-2", 0 ],
					"source" : [ "obj-vw-lb-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-del-3", 0 ],
					"source" : [ "obj-vw-lb-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-del-4", 0 ],
					"source" : [ "obj-vw-lb-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-del-5", 0 ],
					"source" : [ "obj-vw-lb-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-del-clean", 0 ],
					"source" : [ "obj-vw-lb-clean", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAh-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAh-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAh-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAh-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAh-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAs-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAs-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAs-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAs-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mAs-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFh-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFh-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFh-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFh-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFh-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFs-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFs-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFs-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFs-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mFs-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mIgn-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mIgn-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mIgn-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mIgn-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mIgn-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mRes-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mRes-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mRes-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mRes-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mRes-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-1", 0 ],
					"source" : [ "obj-vw-mautoset-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-2", 0 ],
					"source" : [ "obj-vw-mautoset-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-3", 0 ],
					"source" : [ "obj-vw-mautoset-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-4", 0 ],
					"source" : [ "obj-vw-mautoset-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-5", 0 ],
					"source" : [ "obj-vw-mautoset-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-1", 0 ],
					"source" : [ "obj-vw-mautoval-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-2", 0 ],
					"source" : [ "obj-vw-mautoval-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-3", 0 ],
					"source" : [ "obj-vw-mautoval-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-4", 0 ],
					"source" : [ "obj-vw-mautoval-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tE-5", 0 ],
					"source" : [ "obj-vw-mautoval-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mclean", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-1", 0 ],
					"source" : [ "obj-vw-mi0-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-2", 0 ],
					"source" : [ "obj-vw-mi0-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-3", 0 ],
					"source" : [ "obj-vw-mi0-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-4", 0 ],
					"source" : [ "obj-vw-mi0-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bedit-5", 0 ],
					"source" : [ "obj-vw-mi0-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bamp-1", 0 ],
					"source" : [ "obj-vw-mi1-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bamp-2", 0 ],
					"source" : [ "obj-vw-mi1-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bamp-3", 0 ],
					"source" : [ "obj-vw-mi1-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bamp-4", 0 ],
					"source" : [ "obj-vw-mi1-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bamp-5", 0 ],
					"source" : [ "obj-vw-mi1-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bfreq-1", 0 ],
					"source" : [ "obj-vw-mi2-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bfreq-2", 0 ],
					"source" : [ "obj-vw-mi2-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bfreq-3", 0 ],
					"source" : [ "obj-vw-mi2-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bfreq-4", 0 ],
					"source" : [ "obj-vw-mi2-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-bfreq-5", 0 ],
					"source" : [ "obj-vw-mi2-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowA-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowA-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowA-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowA-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowA-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowF-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowF-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowF-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowF-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tp", 0 ],
					"source" : [ "obj-vw-mrowF-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAh-1", 0 ],
					"source" : [ "obj-vw-selA-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAs-1", 0 ],
					"source" : [ "obj-vw-selA-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAh-2", 0 ],
					"source" : [ "obj-vw-selA-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAs-2", 0 ],
					"source" : [ "obj-vw-selA-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAh-3", 0 ],
					"source" : [ "obj-vw-selA-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAs-3", 0 ],
					"source" : [ "obj-vw-selA-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAh-4", 0 ],
					"source" : [ "obj-vw-selA-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAs-4", 0 ],
					"source" : [ "obj-vw-selA-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAh-5", 0 ],
					"source" : [ "obj-vw-selA-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mAs-5", 0 ],
					"source" : [ "obj-vw-selA-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mIgn-1", 0 ],
					"source" : [ "obj-vw-selC-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mRes-1", 0 ],
					"source" : [ "obj-vw-selC-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mIgn-2", 0 ],
					"source" : [ "obj-vw-selC-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mRes-2", 0 ],
					"source" : [ "obj-vw-selC-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mIgn-3", 0 ],
					"source" : [ "obj-vw-selC-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mRes-3", 0 ],
					"source" : [ "obj-vw-selC-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mIgn-4", 0 ],
					"source" : [ "obj-vw-selC-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mRes-4", 0 ],
					"source" : [ "obj-vw-selC-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mIgn-5", 0 ],
					"source" : [ "obj-vw-selC-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mRes-5", 0 ],
					"source" : [ "obj-vw-selC-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFh-1", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-selF-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFs-1", 0 ],
					"source" : [ "obj-vw-selF-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tauto-1", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-selF-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFh-2", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-selF-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFs-2", 0 ],
					"source" : [ "obj-vw-selF-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tauto-2", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-selF-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFh-3", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-selF-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFs-3", 0 ],
					"source" : [ "obj-vw-selF-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tauto-3", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-selF-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFh-4", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-selF-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFs-4", 0 ],
					"source" : [ "obj-vw-selF-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tauto-4", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-selF-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFh-5", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-selF-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mFs-5", 0 ],
					"source" : [ "obj-vw-selF-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tauto-5", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-selF-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowA-1", 0 ],
					"source" : [ "obj-vw-selR-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowF-1", 0 ],
					"source" : [ "obj-vw-selR-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowA-2", 0 ],
					"source" : [ "obj-vw-selR-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowF-2", 0 ],
					"source" : [ "obj-vw-selR-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowA-3", 0 ],
					"source" : [ "obj-vw-selR-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowF-3", 0 ],
					"source" : [ "obj-vw-selR-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowA-4", 0 ],
					"source" : [ "obj-vw-selR-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowF-4", 0 ],
					"source" : [ "obj-vw-selR-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowA-5", 0 ],
					"source" : [ "obj-vw-selR-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mrowF-5", 0 ],
					"source" : [ "obj-vw-selR-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selA-1", 0 ],
					"source" : [ "obj-vw-tA-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tAl-1", 0 ],
					"source" : [ "obj-vw-tA-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selA-2", 0 ],
					"source" : [ "obj-vw-tA-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tAl-2", 0 ],
					"source" : [ "obj-vw-tA-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selA-3", 0 ],
					"source" : [ "obj-vw-tA-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tAl-3", 0 ],
					"source" : [ "obj-vw-tA-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selA-4", 0 ],
					"source" : [ "obj-vw-tA-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tAl-4", 0 ],
					"source" : [ "obj-vw-tA-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selA-5", 0 ],
					"source" : [ "obj-vw-tA-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-tAl-5", 0 ],
					"source" : [ "obj-vw-tA-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-1", 1 ],
					"source" : [ "obj-vw-tAl-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-1", 0 ],
					"source" : [ "obj-vw-tAl-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-2", 1 ],
					"source" : [ "obj-vw-tAl-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-2", 0 ],
					"source" : [ "obj-vw-tAl-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-3", 1 ],
					"source" : [ "obj-vw-tAl-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-3", 0 ],
					"source" : [ "obj-vw-tAl-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-4", 1 ],
					"source" : [ "obj-vw-tAl-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-4", 0 ],
					"source" : [ "obj-vw-tAl-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-5", 1 ],
					"source" : [ "obj-vw-tAl-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-5", 0 ],
					"source" : [ "obj-vw-tAl-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-1", 1 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-1", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-1", 1 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selR-1", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-2", 1 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-2", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-2", 1 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selR-2", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-3", 1 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-3", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-3", 1 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selR-3", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-4", 1 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-4", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-4", 1 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selR-4", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-i-5", 1 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-and-5", 0 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-iE-5", 1 ],
					"order" : 1,
					"source" : [ "obj-vw-tE-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-selR-5", 0 ],
					"order" : 0,
					"source" : [ "obj-vw-tE-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoset-1", 0 ],
					"source" : [ "obj-vw-tauto-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoval-1", 0 ],
					"source" : [ "obj-vw-tauto-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoset-2", 0 ],
					"source" : [ "obj-vw-tauto-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoval-2", 0 ],
					"source" : [ "obj-vw-tauto-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoset-3", 0 ],
					"source" : [ "obj-vw-tauto-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoval-3", 0 ],
					"source" : [ "obj-vw-tauto-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoset-4", 0 ],
					"source" : [ "obj-vw-tauto-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoval-4", 0 ],
					"source" : [ "obj-vw-tauto-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoset-5", 0 ],
					"source" : [ "obj-vw-tauto-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mautoval-5", 0 ],
					"source" : [ "obj-vw-tauto-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi0-1", 0 ],
					"source" : [ "obj-vw-tinit-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi1-1", 0 ],
					"source" : [ "obj-vw-tinit-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi2-1", 0 ],
					"source" : [ "obj-vw-tinit-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi0-2", 0 ],
					"source" : [ "obj-vw-tinit-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi1-2", 0 ],
					"source" : [ "obj-vw-tinit-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi2-2", 0 ],
					"source" : [ "obj-vw-tinit-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi0-3", 0 ],
					"source" : [ "obj-vw-tinit-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi1-3", 0 ],
					"source" : [ "obj-vw-tinit-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi2-3", 0 ],
					"source" : [ "obj-vw-tinit-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi0-4", 0 ],
					"source" : [ "obj-vw-tinit-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi1-4", 0 ],
					"source" : [ "obj-vw-tinit-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi2-4", 0 ],
					"source" : [ "obj-vw-tinit-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi0-5", 0 ],
					"source" : [ "obj-vw-tinit-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi1-5", 0 ],
					"source" : [ "obj-vw-tinit-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vw-mi2-5", 0 ],
					"source" : [ "obj-vw-tinit-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tyrssdfl5", 0 ],
					"source" : [ "obj-vz66rk2iu", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-g16xfd1wi", 0 ],
					"source" : [ "obj-wgrmzda3b", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-h5wvk71m2", 0 ],
					"source" : [ "obj-xe2aqygkh", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-esodd5bpi", 0 ],
					"source" : [ "obj-yo8ur7y8c", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj_doc_msg_new", 0 ],
					"hidden" : 1,
					"source" : [ "obj_doc_btn_new", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-343" : [ "vst~", "vst~", 0 ],
			"obj-345" : [ "vst~[1]", "vst~[1]", 0 ],
			"obj-391" : [ "obj-391", "obj-391", 0 ],
			"obj-396" : [ "obj-396", "obj-396", 0 ],
			"obj-397" : [ "obj-397", "obj-397", 0 ],
			"obj-407" : [ "obj-407", "obj-407", 0 ],
			"obj-408" : [ "obj-408", "obj-408", 0 ],
			"obj-409" : [ "obj-409", "obj-409", 0 ],
			"obj-419" : [ "obj-419", "obj-419", 0 ],
			"obj-420" : [ "obj-420", "obj-420", 0 ],
			"obj-421" : [ "obj-421", "obj-421", 0 ],
			"obj-431" : [ "obj-431", "obj-431", 0 ],
			"obj-432" : [ "obj-432", "obj-432", 0 ],
			"obj-433" : [ "obj-433", "obj-433", 0 ],
			"obj-444" : [ "obj-444", "obj-444", 0 ],
			"obj-445" : [ "obj-445", "obj-445", 0 ],
			"obj-446" : [ "obj-446", "obj-446", 0 ],
			"obj-458" : [ "obj-458", "obj-458", 0 ],
			"obj-459" : [ "obj-459", "obj-459", 0 ],
			"obj-460" : [ "obj-460", "obj-460", 0 ],
			"obj-665" : [ "obj-665", "obj-665", 0 ],
			"obj-666" : [ "obj-666", "obj-666", 0 ],
			"obj-667" : [ "obj-667", "obj-667", 0 ],
			"obj-677" : [ "obj-677", "obj-677", 0 ],
			"obj-678" : [ "obj-678", "obj-678", 0 ],
			"obj-679" : [ "obj-679", "obj-679", 0 ],
			"obj-c5-17" : [ "obj-c5-17", "obj-c5-17", 0 ],
			"obj-c5-18" : [ "obj-c5-18", "obj-c5-18", 0 ],
			"obj-c5-19" : [ "obj-c5-19", "obj-c5-19", 0 ],
			"obj-c5-25" : [ "obj-c5-25", "obj-c5-25", 0 ],
			"obj-c5-26" : [ "obj-c5-26", "obj-c5-26", 0 ],
			"obj-c5-27" : [ "obj-c5-27", "obj-c5-27", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "OSCnote.maxpat",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "append_matrix_size.js",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cell_times.js",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ftomlist",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "limitercontrol.maxpat",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "p1sound.maxpat",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "p2sound.maxpat",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "p3sound.maxpat",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "p4sound.maxpat",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "p5sound.maxpat",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "smart_load.js",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "soundmachine.maxpat",
				"bootpath" : "~/Documents/Proyectos/Alba Triana Studio/Cymaticas/ATS_Sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-113", "obj-117", "obj-118", "obj-116", "obj-491", "obj-492" ]
			}
, 			{
				"boxes" : [ "obj-newlabel-0-29", "obj-newlabel-0-28", "obj-newlabel-0-27", "obj-newlabel-0-26", "obj-newlabel-0-25", "obj-newlabel-0-24", "obj-newlabel-0-23", "obj-newlabel-0-22", "obj-newlabel-0-21", "obj-newlabel-0-19", "obj-18", "obj-newlabel-0-18", "obj-newlabel-0-17", "obj-newlabel-0-16", "obj-newlabel-0-15", "obj-newlabel-0-14", "obj-newlabel-0-13", "obj-newlabel-0-12", "obj-newlabel-0-11", "obj-newlabel-0-10", "obj-newlabel-0-9", "obj-newlabel-0-8", "obj-newlabel-0-7", "obj-newlabel-0-6", "obj-newlabel-0-5", "obj-newlabel-0-4", "obj-newlabel-0-3", "obj-newlabel-0-2", "obj-newlabel-0-1", "obj-newlabel-0-0" ]
			}
, 			{
				"boxes" : [ "obj-col-m1-1", "obj-col-m1-2", "obj-col-m1-3", "obj-col-m1-4", "obj-col-m1-5", "obj-col-m1-6", "obj-col-m1-7", "obj-col-m1-8", "obj-col-m1-9", "obj-col-m1-10", "obj-col-m1-11", "obj-col-m1-12", "obj-col-m1-13", "obj-col-m1-14", "obj-col-m1-15", "obj-col-m1-16", "obj-col-m1-17", "obj-col-m1-18", "obj-col-m1-19", "obj-col-m1-20" ]
			}
, 			{
				"boxes" : [ "obj-416", "obj-6qokentgx", "obj-n5auwlees" ]
			}
, 			{
				"boxes" : [ "obj-415", "obj-387", "obj-420", "obj-396" ]
			}
, 			{
				"boxes" : [ "obj-414", "obj-419", "obj-391" ]
			}
, 			{
				"boxes" : [ "obj-413", "obj-417", "obj-389" ]
			}
, 			{
				"boxes" : [ "obj-404", "obj-vz66rk2iu", "obj-7bdffdhlv" ]
			}
, 			{
				"boxes" : [ "obj-403", "obj-427", "obj-408", "obj-432" ]
			}
, 			{
				"boxes" : [ "obj-402", "obj-407", "obj-431" ]
			}
, 			{
				"boxes" : [ "obj-401", "obj-405", "obj-429" ]
			}
, 			{
				"boxes" : [ "obj-vw-lbl-v-3", "obj-vw-bfreq-3", "obj-vw-bamp-3", "obj-vw-lbl-v-4", "obj-vw-bfreq-4", "obj-vw-bamp-4", "obj-vw-lbl-v-2", "obj-vw-bamp-2", "obj-vw-bfreq-2", "obj-vw-bfreq-1", "obj-vw-bamp-1", "obj-vw-lbl-v-1" ]
			}
, 			{
				"boxes" : [ "obj-342", "obj-344", "obj-346", "obj-348" ]
			}
 ],
		"styles" : [ 			{
				"name" : "helpfile_label-1",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontsize" : [ 13 ],
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
