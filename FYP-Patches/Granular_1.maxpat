{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 8.0, 50.0, 1600.0, 792.0 ],
		"bglocked" : 0,
		"defrect" : [ 8.0, 50.0, 1600.0, 792.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Frequency in Hertz\n",
					"fontname" : "Arial",
					"id" : "obj-48",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 964.5, 139.100006, 150.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Asynchronous",
					"fontname" : "Arial",
					"id" : "obj-47",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 1084.5, 295.099976, 86.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Synchronous",
					"fontname" : "Arial",
					"id" : "obj-46",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 1084.5, 275.099976, 79.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Off",
					"fontname" : "Arial",
					"id" : "obj-45",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 1084.5, 255.099976, 79.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-44",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 1050.5, 295.099976, 32.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-43",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 1049.5, 275.099976, 32.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 1048.5, 255.099976, 32.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "selector~ 2",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"fontsize" : 12.0,
					"numinlets" : 3,
					"patching_rect" : [ 722.5, 215.099976, 210.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"id" : "obj-39",
					"numinlets" : 2,
					"patching_rect" : [ 804.5, 241.099976, 234.0, 90.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rand~",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-37",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 912.5, 165.100006, 71.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-38",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 912.5, 138.100006, 50.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 817.5, 166.100006, 87.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Asynchronous\n\n",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-35",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 903.5, 119.100006, 93.909103, 34.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Synchronous\n\n",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-34",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 806.5, 119.100006, 86.0, 34.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-33",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 817.5, 139.100006, 55.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Grain Triggering\n",
					"fontname" : "Arial",
					"id" : "obj-32",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 1060.300049, 198.900024, 104.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set source",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 548.743835, 417.611542, 73.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-30",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 492.0, 411.0, 50.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "off",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-29",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 439.0, 411.0, 50.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "on",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-28",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 405.0, 386.0, 50.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mdeGranular~ 128 2",
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Arial",
					"id" : "obj-26",
					"fontsize" : 12.0,
					"numinlets" : 8,
					"patching_rect" : [ 439.0, 468.0, 141.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-25",
					"numinlets" : 1,
					"patching_rect" : [ 534.0, 689.0, 86.0, 13.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-22",
					"numinlets" : 1,
					"patching_rect" : [ 382.0, 689.0, 86.0, 13.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-21",
					"numinlets" : 2,
					"patching_rect" : [ 480.0, 680.0, 45.0, 45.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-19",
					"numinlets" : 2,
					"patching_rect" : [ 508.0, 529.0, 20.0, 140.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-16",
					"numinlets" : 2,
					"patching_rect" : [ 478.0, 529.0, 20.0, 140.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "play~ source",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 496.0, 87.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r env",
					"outlettype" : [ "" ],
					"color" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 41.99474, 37.502628, 59.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"buffername" : "win",
					"waveformcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"labelbgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numinlets" : 5,
					"patching_rect" : [ 50.510899, 93.445541, 131.287781, 79.478592 ],
					"textcolor" : [  ],
					"numoutlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s env",
					"color" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 47.0, 478.0, 59.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r window",
					"outlettype" : [ "" ],
					"color" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-1",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 47.372528, 432.068604, 58.947353, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "winMaker",
					"outlettype" : [ "" ],
					"color" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-79",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 47.388367, 454.876007, 100.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Grain Envelopes",
					"fontname" : "Arial",
					"id" : "obj-77",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 65.72126, 68.983459, 98.107002, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gaussian",
					"fontname" : "Arial",
					"id" : "obj-76",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 79.36142, 184.06488, 97.494576, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s window",
					"color" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-74",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 47.372543, 409.068604, 58.947353, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ReExpodec",
					"fontname" : "Arial",
					"id" : "obj-72",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 78.36142, 375.06488, 90.664444, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Expodec",
					"fontname" : "Arial",
					"id" : "obj-73",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 78.36142, 354.06488, 97.494576, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blackman-Harris",
					"fontname" : "Arial",
					"id" : "obj-71",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 77.36142, 332.06488, 97.494576, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blackman",
					"fontname" : "Arial",
					"id" : "obj-70",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 78.36142, 311.06488, 97.494576, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hamming",
					"fontname" : "Arial",
					"id" : "obj-67",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 78.36142, 290.06488, 97.494576, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hanning",
					"fontname" : "Arial",
					"id" : "obj-68",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 78.36142, 269.06488, 97.494576, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3 Stage Linear",
					"fontname" : "Arial",
					"id" : "obj-69",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 78.36142, 247.06488, 98.546341, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Triangle",
					"fontname" : "Arial",
					"id" : "obj-66",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 78.36142, 225.06488, 97.494576, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Quasi-Gaussian",
					"fontname" : "Arial",
					"id" : "obj-65",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 78.36142, 204.06488, 97.494576, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-63",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 79.36142, 185.40451, 96.109604, 213.607758 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "9",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-62",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 376.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "8",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-61",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 355.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "7",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-57",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 333.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "6",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-58",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 312.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-59",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 291.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-60",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 270.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-56",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 248.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-55",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 226.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-54",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 205.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 59.36142, 185.06488, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-8",
					"numinlets" : 1,
					"patching_rect" : [ 51.36142, 179.06488, 130.846542, 225.227478 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Drop Sample",
					"fontname" : "Arial",
					"id" : "obj-53",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 254.132233, 99.48761, 83.049583, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set source",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 326.743805, 195.611557, 73.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"buffername" : "source",
					"id" : "obj-5",
					"numinlets" : 5,
					"patching_rect" : [ 326.743805, 218.694229, 361.583801, 131.229904 ],
					"textcolor" : [  ],
					"numoutlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ source",
					"outlettype" : [ "float", "bang" ],
					"color" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 245.743805, 169.661148, 100.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend replace",
					"outlettype" : [ "" ],
					"color" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-3",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 245.743805, 140.661163, 100.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"bordercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-2",
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 245.743805, 83.661163, 100.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-13",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 52.346451, 69.235001, 129.202499, 20.653551 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-12",
					"bgcolor" : [ 0.372549, 0.439216, 0.352941, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 41.513149, 61.497372, 149.479492, 445.380676 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-51",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 720.500122, 116.399994, 458.0, 224.800003 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-50",
					"bgcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 711.994263, 108.454132, 474.811279, 242.070068 ],
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 732.0, 238.099976, 801.5, 238.099976, 801.5, 238.099976, 814.0, 238.099976 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1060.0, 313.099976, 1044.5, 313.099976, 1044.5, 209.099976, 732.0, 209.099976 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.0, 295.099976, 1044.5, 295.099976, 1044.5, 199.099976, 732.0, 199.099976 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1058.0, 274.099976, 1044.5, 274.099976, 1044.5, 204.099976, 732.0, 204.099976 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-41", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 516.0, 671.0, 543.5, 671.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 486.0, 671.0, 391.5, 671.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 51.49474, 90.0, 60.010899, 90.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 203.995483, 56.872543, 203.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 224.995483, 56.872543, 224.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 245.995483, 56.872543, 245.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 266.995483, 56.872543, 266.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 287.995483, 56.872543, 287.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 308.995483, 56.872543, 308.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 329.995483, 56.872543, 329.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 350.995483, 56.872543, 350.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 374.995483, 56.872543, 374.995483 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.86142, 395.834717, 56.872543, 395.834717 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
