{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            134.0,
            159.0,
            780.0,
            680.0
        ],
        "description": "br.delay.tape.rnbo.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        218.0,
                        40.0,
                        520.0,
                        33.0
                    ],
                    "text": "br.delay.tape.rnbo.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        38.0,
                        40.0,
                        150.0,
                        39.0
                    ],
                    "text": "Drop sample into here"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        38.0,
                        98.0,
                        150.0,
                        30.0
                    ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        61.0,
                        600.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        61.0,
                        450.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-7",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left-Signal-In"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right-Signal-In"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "Mode (Int) 0 Linked: both sides use Time L. 1 Stereo: each side its own time. 2 Ping-Pong: each side's first echo at its own time, then both repeat every (the longer time), so L 375 / R 750 alternates every 375 ms. Changes glide like a time change, no clicks. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Time L (Float) ms 1. to 10000. Left delay time, and both sides in Linked. Changes glide, bending the pitch like tape. Default 375"
                            },
                            {
                                "type": "event",
                                "index": 5,
                                "tag": "in5",
                                "comment": "Time R (Float) ms 1. to 10000. Right delay time in Stereo and Ping-Pong (ignored in Linked). Default 750"
                            },
                            {
                                "type": "event",
                                "index": 6,
                                "tag": "in6",
                                "comment": "Glide (Float) ms 10. to 1000. How long a time or mode change takes to settle: longer = slower, deeper bend. Default 150"
                            },
                            {
                                "type": "event",
                                "index": 7,
                                "tag": "in7",
                                "comment": "Feedback (Float) 0. to 1.5. How much of each repeat goes round again. Above 1 the repeats build up until the tape saturation holds them. Default 0.4"
                            },
                            {
                                "type": "event",
                                "index": 8,
                                "tag": "in8",
                                "comment": "Feedback Route (Int) 0 Straight: each side's repeats stay on that side. 1 Cross: each side's repeats go to the other side, so Stereo + Cross is the classic ping-pong. Glides over 20 ms, no clicks. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 9,
                                "tag": "in9",
                                "comment": "Low Cut (Float) Hz 20. to 2000. Thins the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 80"
                            },
                            {
                                "type": "event",
                                "index": 10,
                                "tag": "in10",
                                "comment": "High Cut (Float) Hz 200. to 20000. Darkens the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 8000"
                            },
                            {
                                "type": "event",
                                "index": 11,
                                "tag": "in11",
                                "comment": "Drive (Float) % 0. to 100. How hard the input hits the tape: 0 = clean, more = rounder and denser. Peaks stay level. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 12,
                                "tag": "in12",
                                "comment": "Wow (Float) 0. to 1. Slow, uneven pitch wobble from the tape speed (up to 1 %). Default 0.2"
                            },
                            {
                                "type": "event",
                                "index": 13,
                                "tag": "in13",
                                "comment": "Flutter (Float) 0. to 1. Fast pitch wobble from the tape speed (up to 0.3 %). Default 0.2"
                            },
                            {
                                "type": "event",
                                "index": 14,
                                "tag": "in14",
                                "comment": "Dry/Wet (Float) % 0. to 100. Equal power. Default 50"
                            },
                            {
                                "type": "midi",
                                "index": -1,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "event",
                                "index": 15,
                                "tag": "in15",
                                "comment": "On/Off (Int) 1 on, 0 off. Off: the echoes fade out and the dry signal passes at full level. The delay keeps running underneath, so turning it back on never plays old echoes. Fades over 20 ms. Default 1"
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 16,
                    "numoutlets": 3,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [
                        "signal",
                        "signal",
                        "list"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [
                            100.0,
                            100.0,
                            1500.0,
                            420.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        42.0,
                                        27.0,
                                        171.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_obj-1",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 1",
                                                "displayName": "Left-Signal-In",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 1 @comment Left-Signal-In"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        234.0,
                                        27.0,
                                        178.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_obj-2",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 2",
                                                "displayName": "Right-Signal-In",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 2 @comment Right-Signal-In"
                                }
                            },
                            {
                                "box": {
                                    "genpatcher": {
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [
                                                134.0,
                                                87.0,
                                                1300.0,
                                                884.0
                                            ],
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-1",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            29.0,
                                                            20.0,
                                                            183.0,
                                                            22.0
                                                        ],
                                                        "text": "in 1 @comment \"Left In (Signal)\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-2",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            90.0,
                                                            47.0,
                                                            191.0,
                                                            22.0
                                                        ],
                                                        "text": "in 2 @comment \"Right In (Signal)\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-3",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            154.0,
                                                            89.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 3 @comment \"Mode (Signal/Int) 0 Linked 1 Stereo 2 Ping-Pong -- default 0\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-4",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            213.0,
                                                            187.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 4 @comment \"Time L (Signal/Float) ms 1 to 10000 -- default 375\" @default 375"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-5",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            262.0,
                                                            299.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 5 @comment \"Time R (Signal/Float) ms 1 to 10000 -- default 750\" @default 750"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-6",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            319.0,
                                                            399.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 6 @comment \"Glide (Signal/Float) ms 10 to 1000 -- default 150\" @default 150"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-7",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            378.0,
                                                            13.5,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 7 @comment \"Feedback (Signal/Float) 0 to 1.5 -- default 0.4\" @default 0.4"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-8",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            433.0,
                                                            115.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 8 @comment \"Feedback Route (Signal/Int) 0 Straight 1 Cross -- default 0\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-9",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            485.0,
                                                            225.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 9 @comment \"Low Cut (Signal/Float) Hz 20 to 2000 -- default 80\" @default 80"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-10",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            542.0,
                                                            392.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 10 @comment \"High Cut (Signal/Float) Hz 200 to 20000 -- default 8000\" @default 8000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-11",
                                                        "linecount": 5,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            603.0,
                                                            13.5,
                                                            100.0,
                                                            76.0
                                                        ],
                                                        "text": "in 11 @comment \"Drive (Signal/Float) % 0 to 100 -- default 0\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-12",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            656.0,
                                                            110.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 12 @comment \"Wow (Signal/Float) 0 to 1 -- default 0.2\" @default 0.2"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-13",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            713.0,
                                                            225.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 13 @comment \"Flutter (Signal/Float) 0 to 1 -- default 0.2\" @default 0.2"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-14",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            770.0,
                                                            399.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 14 @comment \"Dry/Wet (Signal/Float) % 0 to 100 -- default 50\" @default 50"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-on",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            827.0,
                                                            13.5,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 15 @comment \"On/Off (Signal/Int) 1 on 0 off -- default 1\" @default 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "code": "// br.delay.tape.1.2 -- stereo tape-style delay\n// Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/\n// MUST MATCH: the core, the UI by reference and the M4L device embed this same code\n// in1/in2 audio L/R\n// in3 mode 0 Linked, 1 Stereo, 2 Ping-Pong\n// in4 time L ms 1..10000 and in5 time R ms 1..10000\n// in6 glide ms 10..1000: how long a time change takes to settle, which sets the pitch bend\n// in7 feedback 0..1.5: above 1 the repeats build up until the saturation holds them\n// in8 feedback route 0 Straight: each side feeds itself, 1 Cross: each side feeds the other\n// in9 low cut Hz 20..2000 and in10 high cut Hz 200..20000: tone of the repeats\n// in11 drive % 0..100: how hard the input hits the tape, 0 = clean\n// in12 wow 0..1 and in13 flutter 0..1: tape speed wobble, slow and fast\n// in14 dry/wet % 0..100\n// in15 on/off 1 on, 0 off: off = the dry signal at full level, no echoes\n// out1/out2 audio L/R\n//\n// Why it sounds like tape: changing the time moves the read head instead of jumping, so the\n// pitch bends while it travels, like tape speeding up or slowing down. Each head follows its\n// new time through two smoothers in a row, so the bend eases in and out instead of starting\n// and stopping abruptly. Wow and flutter wobble the heads the way an uneven tape transport does.\n// The tone filters sit at the playback head: every echo you hear goes through them, and the loop\n// is fed from the filtered signal, so each repeat is a little darker and thinner than the one before.\n// Each pass round the loop also goes through a gentle saturation, so the repeats get rounder too.\n// Drive saturates the input on its way onto the tape.\n//\n// Each side has two tapes. The FIRST tape holds the input and is read at the side's own time:\n// that is the first echo. The LOOP tape holds the feedback and is read at the loop time: those\n// are all the later echoes. The modes only change where the heads go:\n//   Linked     both sides use Time L; loop time = the same, so echoes at t, 2t, 3t\n//   Stereo     each side uses its own time, loop time = its own time\n//   Ping-Pong  each side's first echo at its own time, then both repeat every T = the longer time,\n//              so L 250 / R 500 gives L 250, R 500, L 750, R 1000: alternating every 250 ms\n// Feedback Cross sends each side's repeats to the other side's loop tape. Stereo + Cross is the classic\n// ping-pong: each bounce takes the time of the side it lands on. Linked + Cross swaps a stereo image\n// on every repeat. Cross glides over 20 ms: repeats already on the tape keep playing, only where\n// they go next fades across.\n// Nothing is switched in or out: a mode change moves heads through the same eased glide as a\n// time change, so the sound never jumps and the tails carry on through the change.\n//\n// ON/OFF fades over 20 ms. Off: the echoes fade out and the dry signal comes up to full level,\n// whatever the Dry/Wet. The delay keeps running underneath, so turning it back on never plays\n// old echoes from before it was turned off.\n\n// 10.1 s at 192 kHz: 10000 ms plus wow room at any sample rate\nDelay firstL(1939200);\nDelay firstR(1939200);\nDelay loopL(1939200);\nDelay loopR(1939200);\nHistory started(0);\nHistory fL1(0);\nHistory fL2(0);\nHistory fR1(0);\nHistory fR2(0);\nHistory lL1(0);\nHistory lL2(0);\nHistory lR1(0);\nHistory lR2(0);\nHistory fbS(0);\nHistory lowS(80);\nHistory highS(8000);\nHistory driveS(0);\nHistory wowS(0);\nHistory flutS(0);\nHistory mixS(50);\nHistory crossS(0);\nHistory onS(1);\nHistory wowPh(0);\nHistory wowRate(0.6);\nHistory flutPh(0);\nHistory flutRate(6.5);\nHistory lowL(0);\nHistory lowR(0);\nHistory highL(0);\nHistory highR(0);\n\n// read all state first\nst = started;\na1 = fL1;\na2 = fL2;\nb1 = fR1;\nb2 = fR2;\np1 = lL1;\np2 = lL2;\nq1 = lR1;\nq2 = lR2;\nfb = fbS;\nlo = lowS;\nhi = highS;\ndr = driveS;\nwo = wowS;\nfl = flutS;\nmx = mixS;\ncr = crossS;\nen = onS;\nwp = wowPh;\nwr = wowRate;\nfp = flutPh;\nfr = flutRate;\nlzL = lowL;\nlzR = lowR;\nhzL = highL;\nhzR = highR;\n\n// controls glide over 20 ms so nothing clicks\nk = 1 - exp(-1 / mstosamps(20));\nfb = fb + (clip(in7, 0, 1.5) - fb) * k;\nlo = lo + (clip(in9, 20, 2000) - lo) * k;\nhi = hi + (clip(in10, 200, 20000) - hi) * k;\ndr = dr + (clip(in11, 0, 100) - dr) * k;\nwo = wo + (clip(in12, 0, 1) - wo) * k;\nfl = fl + (clip(in13, 0, 1) - fl) * k;\nmx = mx + (clip(in14, 0, 100) - mx) * k;\ncr = cr + (clip(floor(in8 + 0.5), 0, 1) - cr) * k;\nen = en + (clip(floor(in15 + 0.5), 0, 1) - en) * k;\n\n// HEAD TARGETS for the mode\nmode = clip(floor(in3 + 0.5), 0, 2);\ntL = mstosamps(clip(in4, 1, 10000));\ntR = mstosamps(clip(in5, 1, 10000));\nfirstTL = tL;\nfirstTR = (mode == 0) ? tL : tR;\nloopTL = firstTL;\nloopTR = firstTR;\nif (mode == 2) {\n    loopTL = max(tL, tR);\n    loopTR = loopTL;\n}\n\n// HEADS: each one chases its target through two one-pole smoothers, c = exp(-1/tau),\n// in the form y = target + c * the distance from target. At load every head starts on its target, no bend\nif (st == 0) {\n    a1 = firstTL;\n    a2 = firstTL;\n    b1 = firstTR;\n    b2 = firstTR;\n    p1 = loopTL;\n    p2 = loopTL;\n    q1 = loopTR;\n    q2 = loopTR;\n    st = 1;\n}\nc = exp(-1 / mstosamps(clip(in6, 10, 1000)));\na1 = firstTL + c * (a1 - firstTL);\na2 = a1 + c * (a2 - a1);\nb1 = firstTR + c * (b1 - firstTR);\nb2 = b1 + c * (b2 - b1);\np1 = loopTL + c * (p1 - loopTL);\np2 = p1 + c * (p2 - p1);\nq1 = loopTR + c * (q1 - loopTR);\nq2 = q1 + c * (q2 - q1);\n\n// WOW and FLUTTER: each is a raised cosine, 0..1, that lengthens the delay, so a head never\n// reads ahead of its set time. Every cycle picks a new random speed when the wave is at 0,\n// so the change is seamless. Depth is set as pitch: full wow = 1 %, full flutter = 0.3 %.\n// Moving a head by A samples in a raised cosine at f Hz bends pitch by pi * f * A / samplerate.\n// One tape transport: all four heads wobble together\nwp = wp + wr / samplerate;\nif (wp >= 1) {\n    wp = wp - 1;\n    wr = 0.4 + 0.5 * abs(noise());\n}\nfp = fp + fr / samplerate;\nif (fp >= 1) {\n    fp = fp - 1;\n    fr = 5 + 3 * abs(noise());\n}\nwowAmt = wo * mstosamps(1000 * 0.01 / (pi * wr));\nflutAmt = fl * mstosamps(1000 * 0.003 / (pi * fr));\nwobble = wowAmt * (1 - cos(twopi * wp)) * 0.5 + flutAmt * (1 - cos(twopi * fp)) * 0.5;\n\n// read every head before writing\ntapL = firstL.read(clip(a2 + wobble, 2, 1939000), interp=\"spline\") + loopL.read(clip(p2 + wobble, 2, 1939000), interp=\"spline\");\ntapR = firstR.read(clip(b2 + wobble, 2, 1939000), interp=\"spline\") + loopR.read(clip(q2 + wobble, 2, 1939000), interp=\"spline\");\n\n// TONE at the playback head: one-pole low cut, the signal minus its own lowpass, then one-pole high cut.\n// Both the output and the loop take the filtered signal, so the tone works even with Feedback at 0\naLo = 1 - exp(-twopi * lo / samplerate);\naHi = 1 - exp(-twopi * min(hi, samplerate * 0.45) / samplerate);\nlzL = lzL + aLo * (tapL - lzL);\nlzR = lzR + aLo * (tapR - lzR);\nhzL = hzL + aHi * ((tapL - lzL) - hzL);\nhzR = hzR + aHi * ((tapR - lzR) - hzR);\n\n// DRIVE: tanh(a * x) / tanh(a) drives the input onto the tape. Peaks stay at the same level,\n// quieter parts come up and get rounder. a = 0.001 is clean; full drive a = 8, about +18 dB on quiet parts\na = 0.001 + dr * 0.08;\nfirstL.write(tanh(a * in1) / tanh(a));\nfirstR.write(tanh(a * in2) / tanh(a));\n\n// The loop's own saturation: plain tanh, unity for quiet repeats, so Feedback above 1 builds up\n// until tanh holds the level instead of running away. Straight: each side feeds its own loop tape,\n// Cross: each side feeds the other's\nsL = tanh(hzL);\nsR = tanh(hzR);\nloopL.write(fb * mix(sL, sR, cr));\nloopR.write(fb * mix(sR, sL, cr));\n\n// write state last\nstarted = st;\nfL1 = a1;\nfL2 = a2;\nfR1 = b1;\nfR2 = b2;\nlL1 = p1;\nlL2 = p2;\nlR1 = q1;\nlR2 = q2;\nfbS = fb;\nlowS = lo;\nhighS = hi;\ndriveS = dr;\nwowS = wo;\nflutS = fl;\nmixS = mx;\ncrossS = cr;\nonS = en;\nwowPh = wp;\nwowRate = wr;\nflutPh = fp;\nflutRate = fr;\nlowL = lzL;\nlowR = lzR;\nhighL = hzL;\nhighR = hzR;\n\n// DRY/WET: equal power, so the level stays even across the range. Off: dry at full level, no wet\nang = mx * 0.01 * pi * 0.5;\ndry = mix(1, cos(ang), en);\nwet = sin(ang) * en;\nout1 = in1 * dry + hzL * wet;\nout2 = in2 * dry + hzR * wet;\n",
                                                        "fontface": 0,
                                                        "fontname": "<Monospaced>",
                                                        "fontsize": 12.0,
                                                        "id": "obj-15",
                                                        "maxclass": "codebox",
                                                        "numinlets": 15,
                                                        "numoutlets": 2,
                                                        "outlettype": [
                                                            "",
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            29.0,
                                                            556.0,
                                                            760.0,
                                                            910.0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-16",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            29.0,
                                                            1486.0,
                                                            200.0,
                                                            22.0
                                                        ],
                                                        "text": "out 1 @comment \"Left Out (Signal)\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-17",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            770.0,
                                                            1481.0,
                                                            207.0,
                                                            22.0
                                                        ],
                                                        "text": "out 2 @comment \"Right Out (Signal)\""
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-15",
                                                            0
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
                                                            "obj-15",
                                                            9
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
                                                            "obj-15",
                                                            10
                                                        ],
                                                        "source": [
                                                            "obj-11",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-15",
                                                            11
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
                                                            "obj-15",
                                                            12
                                                        ],
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
                                                            13
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
                                                            "obj-16",
                                                            0
                                                        ],
                                                        "source": [
                                                            "obj-15",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-17",
                                                            0
                                                        ],
                                                        "source": [
                                                            "obj-15",
                                                            1
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
                                                            "obj-2",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-15",
                                                            2
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
                                                            "obj-15",
                                                            3
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
                                                            "obj-15",
                                                            4
                                                        ],
                                                        "source": [
                                                            "obj-5",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-15",
                                                            5
                                                        ],
                                                        "source": [
                                                            "obj-6",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-15",
                                                            6
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
                                                            "obj-15",
                                                            7
                                                        ],
                                                        "source": [
                                                            "obj-8",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-15",
                                                            8
                                                        ],
                                                        "source": [
                                                            "obj-9",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-on",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-15",
                                                            14
                                                        ]
                                                    }
                                                }
                                            ]
                                        }
                                    },
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 15,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        42.0,
                                        140.0,
                                        1500.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.delay.tape",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "in1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "reset": {
                                                "attrOrProp": 1,
                                                "digest": "Reset all param and history objects to initial values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "expr": {
                                                "attrOrProp": 2,
                                                "digest": "a gen expression",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "gendsp file to load",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [
                                                    "t"
                                                ],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "t": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 1,
                                                "aliasOf": "title",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "exposeparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose gen params as RNBO params.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "auto",
                                                "digest": "in1",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in2",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in3",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in4",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in5",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in6",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in7",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in8",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in9",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in10",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in11",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in12",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in13",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in14",
                                                "type": "auto"
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal"
                                            },
                                            {
                                                "name": "out2",
                                                "type": "signal"
                                            }
                                        ],
                                        "helpname": "gen~",
                                        "aliasOf": "gen~",
                                        "classname": "gen~",
                                        "operator": 0,
                                        "versionId": 179904306,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "gen~ @title br.delay.tape",
                                    "varname": "br.delay.tape"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        400.0,
                                        220.0,
                                        43.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-4",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 2",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        42.0,
                                        220.0,
                                        43.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_obj-5",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 1",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        42.0,
                                        396.0,
                                        560.0,
                                        47.0
                                    ],
                                    "text": "gen~ code MUST MATCH br.delay.tape.1.2 (open both: same codebox). The thirteen params are the plugin parameters (VST/AU, web, external). Each inlet sets its param; attrui in the parent shows them all."
                                }
                            },
                            {
                                "box": {
                                    "id": "rin3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 3 @comment \"Mode (Int) 0 Linked: both sides use Time L. 1 Stereo: each side its own time. 2 Ping-Pong: each side's first echo at its own time, then both repeat every (the longer time), so L 375 / R 750 alternates every 375 ms. Changes glide like a time change, no clicks. Default 0\"",
                                    "patching_rect": [
                                        450.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin3"
                                }
                            },
                            {
                                "box": {
                                    "id": "pMode",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Mode 0 @min 0 @max 2 @enum Linked Stereo Ping_Pong @order 1",
                                    "patching_rect": [
                                        450.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Mode"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 4 @comment \"Time L (Float) ms 1. to 10000. Left delay time, and both sides in Linked. Changes glide, bending the pitch like tape. Default 375\"",
                                    "patching_rect": [
                                        560.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin4"
                                }
                            },
                            {
                                "box": {
                                    "id": "pTime_L",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Time_L 375 @min 1. @max 10000. @exponent 3. @order 2",
                                    "patching_rect": [
                                        560.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Time_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 5 @comment \"Time R (Float) ms 1. to 10000. Right delay time in Stereo and Ping-Pong (ignored in Linked). Default 750\"",
                                    "patching_rect": [
                                        670.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin5"
                                }
                            },
                            {
                                "box": {
                                    "id": "pTime_R",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Time_R 750 @min 1. @max 10000. @exponent 3. @order 3",
                                    "patching_rect": [
                                        670.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Time_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 6 @comment \"Glide (Float) ms 10. to 1000. How long a time or mode change takes to settle: longer = slower, deeper bend. Default 150\"",
                                    "patching_rect": [
                                        780.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin6"
                                }
                            },
                            {
                                "box": {
                                    "id": "pGlide",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Glide 150 @min 10. @max 1000. @exponent 2. @order 4",
                                    "patching_rect": [
                                        780.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Glide"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 7 @comment \"Feedback (Float) 0. to 1.5. How much of each repeat goes round again. Above 1 the repeats build up until the tape saturation holds them. Default 0.4\"",
                                    "patching_rect": [
                                        890.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin7"
                                }
                            },
                            {
                                "box": {
                                    "id": "pFeedback",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Feedback 0.4 @min 0. @max 1.5 @exponent 1.8 @order 5",
                                    "patching_rect": [
                                        890.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Feedback"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 8 @comment \"Feedback Route (Int) 0 Straight: each side's repeats stay on that side. 1 Cross: each side's repeats go to the other side, so Stereo + Cross is the classic ping-pong. Glides over 20 ms, no clicks. Default 0\"",
                                    "patching_rect": [
                                        1000.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin8"
                                }
                            },
                            {
                                "box": {
                                    "id": "pRoute",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Route 0 @min 0 @max 1 @enum Straight Cross @order 6",
                                    "patching_rect": [
                                        1000.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Route"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin9",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 9 @comment \"Low Cut (Float) Hz 20. to 2000. Thins the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 80\"",
                                    "patching_rect": [
                                        1110.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin9"
                                }
                            },
                            {
                                "box": {
                                    "id": "pLow_Cut",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Low_Cut 80 @min 20. @max 2000. @exponent 3. @order 7",
                                    "patching_rect": [
                                        1110.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Low_Cut"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin10",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 10 @comment \"High Cut (Float) Hz 200. to 20000. Darkens the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 8000\"",
                                    "patching_rect": [
                                        1220.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin10"
                                }
                            },
                            {
                                "box": {
                                    "id": "pHigh_Cut",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param High_Cut 8000 @min 200. @max 20000. @exponent 3. @order 8",
                                    "patching_rect": [
                                        1220.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "High_Cut"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin11",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 11 @comment \"Drive (Float) % 0. to 100. How hard the input hits the tape: 0 = clean, more = rounder and denser. Peaks stay level. Default 0\"",
                                    "patching_rect": [
                                        1330.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin11"
                                }
                            },
                            {
                                "box": {
                                    "id": "pDrive",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Drive 0 @min 0. @max 100. @order 9",
                                    "patching_rect": [
                                        1330.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Drive"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin12",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 12 @comment \"Wow (Float) 0. to 1. Slow, uneven pitch wobble from the tape speed (up to 1 %). Default 0.2\"",
                                    "patching_rect": [
                                        1440.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin12"
                                }
                            },
                            {
                                "box": {
                                    "id": "pWow",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Wow 0.2 @min 0. @max 1. @order 10",
                                    "patching_rect": [
                                        1440.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Wow"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin13",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 13 @comment \"Flutter (Float) 0. to 1. Fast pitch wobble from the tape speed (up to 0.3 %). Default 0.2\"",
                                    "patching_rect": [
                                        1550.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin13"
                                }
                            },
                            {
                                "box": {
                                    "id": "pFlutter",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Flutter 0.2 @min 0. @max 1. @order 11",
                                    "patching_rect": [
                                        1550.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Flutter"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin14",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 14 @comment \"Dry/Wet (Float) % 0. to 100. Equal power. Default 50\"",
                                    "patching_rect": [
                                        1660.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin14"
                                }
                            },
                            {
                                "box": {
                                    "id": "pDry_Wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Dry_Wet 50 @min 0. @max 100. @order 12",
                                    "patching_rect": [
                                        1660.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Dry_Wet"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 15 @comment \"On/Off (Int) 1 on, 0 off. Off: the echoes fade out and the dry signal passes at full level. The delay keeps running underneath, so turning it back on never plays old echoes. Fades over 20 ms. Default 1\"",
                                    "patching_rect": [
                                        1770.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin15"
                                }
                            },
                            {
                                "box": {
                                    "id": "pOn_Off",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param On_Off 1 @min 0 @max 1 @enum Off On @order 13",
                                    "patching_rect": [
                                        1770.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "On_Off"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        1
                                    ],
                                    "destination": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin3",
                                        0
                                    ],
                                    "destination": [
                                        "pMode",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pMode",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin4",
                                        0
                                    ],
                                    "destination": [
                                        "pTime_L",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pTime_L",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin5",
                                        0
                                    ],
                                    "destination": [
                                        "pTime_R",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pTime_R",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin6",
                                        0
                                    ],
                                    "destination": [
                                        "pGlide",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pGlide",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin7",
                                        0
                                    ],
                                    "destination": [
                                        "pFeedback",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pFeedback",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin8",
                                        0
                                    ],
                                    "destination": [
                                        "pRoute",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pRoute",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin9",
                                        0
                                    ],
                                    "destination": [
                                        "pLow_Cut",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pLow_Cut",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin10",
                                        0
                                    ],
                                    "destination": [
                                        "pHigh_Cut",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pHigh_Cut",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin11",
                                        0
                                    ],
                                    "destination": [
                                        "pDrive",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pDrive",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        10
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin12",
                                        0
                                    ],
                                    "destination": [
                                        "pWow",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pWow",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        11
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin13",
                                        0
                                    ],
                                    "destination": [
                                        "pFlutter",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pFlutter",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        12
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin14",
                                        0
                                    ],
                                    "destination": [
                                        "pDry_Wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pDry_Wet",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        13
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin15",
                                        0
                                    ],
                                    "destination": [
                                        "pOn_Off",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pOn_Off",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        14
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        54.0,
                        410.0,
                        340.0,
                        22.0
                    ],
                    "rnboattrcache": {
                        "Mode": {
                            "label": "Mode",
                            "isEnum": 1,
                            "parsestring": "\"Linked\" \"Stereo\" \"Ping_Pong\""
                        },
                        "Time_L": {
                            "label": "Time_L",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Time_R": {
                            "label": "Time_R",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Glide": {
                            "label": "Glide",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Feedback": {
                            "label": "Feedback",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Route": {
                            "label": "Route",
                            "isEnum": 1,
                            "parsestring": "\"Straight\" \"Cross\""
                        },
                        "Low_Cut": {
                            "label": "Low_Cut",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "High_Cut": {
                            "label": "High_Cut",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Drive": {
                            "label": "Drive",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Wow": {
                            "label": "Wow",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Flutter": {
                            "label": "Flutter",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Dry_Wet": {
                            "label": "Dry_Wet",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "On_Off": {
                            "label": "On_Off",
                            "isEnum": 1,
                            "parsestring": "\"Off\" \"On\""
                        }
                    },
                    "rnboversion": "1.4.3",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "3ef86346-e2e2-4dcc-b865-c0e5b920c80a"
                    },
                    "text": "rnbo~",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        420.0,
                        410.0,
                        340.0,
                        100.0
                    ],
                    "text": "EXPORT NAME: br.delay.tape.1.2~\nMax External Export asks for a name: keep the ~ at the end. Without it the external has the same name as the abstraction br.delay.tape.1.2, and Max loads whichever it finds first. Audio Plugin Export (VST3/AU): any name; the Mode, Time_L, Time_R, Glide, Feedback, Route, Low_Cut, High_Cut, Drive, Wow, Flutter, Dry_Wet and On_Off params appear in your DAW."
                }
            },
            {
                "box": {
                    "attr": "Mode",
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        90.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Time_L",
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        114.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Time_R",
                    "id": "obj-attr2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        138.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Glide",
                    "id": "obj-attr3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        162.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Feedback",
                    "id": "obj-attr4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        186.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Route",
                    "id": "obj-attr5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        210.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Low_Cut",
                    "id": "obj-attr6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        234.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "High_Cut",
                    "id": "obj-attr7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        258.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Drive",
                    "id": "obj-attr8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        282.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Wow",
                    "id": "obj-attr9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        306.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Flutter",
                    "id": "obj-attr10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        330.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Dry_Wet",
                    "id": "obj-attr11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        354.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "On_Off",
                    "id": "obj-attr12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        378.0,
                        180.0,
                        22.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        1
                    ],
                    "source": [
                        "obj-5",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
                        1
                    ],
                    "source": [
                        "obj-7",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
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
                        "obj-7",
                        1
                    ],
                    "source": [
                        "obj-9",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
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
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr2",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr3",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr4",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr5",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr6",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr7",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr8",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr9",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr10",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr11",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr12",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-5": [
                "Out",
                "Out",
                0
            ],
            "obj-7": [
                "rnbo~",
                "rnbo~",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}
