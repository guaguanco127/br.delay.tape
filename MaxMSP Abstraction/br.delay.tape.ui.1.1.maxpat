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
        "openrect": [
            85.0,
            104.0,
            258.0,
            146.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 258.0,
        "description": "br.delay.tape.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-in1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal)",
                    "id": "obj-in2",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Mode (Int) 0 Linked, 1 Stereo, 2 Ping-Pong. Sets the menu. Default 0",
                    "id": "obj-in3",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Linked: both sides use Time L. Stereo: each side its own time. Ping-Pong: each side's first echo at its own time, then both repeat every (the longer time). Changes glide, no clicks. Default Linked",
                    "annotation_name": "Mode",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-mode",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        60.0,
                        100.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        7.0,
                        94.0,
                        17.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "Linked",
                                "Stereo",
                                "Ping-Pong"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mode",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mode",
                            "parameter_type": 2
                        }
                    },
                    "varname": "Mode"
                }
            },
            {
                "box": {
                    "comment": "Time L (Float) ms 1. to 10000. Sets the dial. Default 375",
                    "id": "obj-in4",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Left delay time in ms, and both sides in Linked. Changes glide, bending the pitch like tape. Default 375",
                    "annotation_name": "Time L",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-timel",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        240.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        28.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                375.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Time L",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Time L",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "Time L"
                }
            },
            {
                "box": {
                    "comment": "Time R (Float) ms 1. to 10000. Ignored in Linked. Sets the dial. Default 750",
                    "id": "obj-in5",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Right delay time in ms in Stereo and Ping-Pong. Greyed out in Linked, where it is ignored. Default 750",
                    "annotation_name": "Time R",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-timer",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        315.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        57.0,
                        28.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                750.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Time R",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Time R",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "Time R"
                }
            },
            {
                "box": {
                    "comment": "Glide (Float) ms 10. to 1000. Sets the dial. Default 150",
                    "id": "obj-in6",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "How long a time or mode change takes to settle, in ms: longer = slower, deeper pitch bend. Default 150",
                    "annotation_name": "Glide",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-glide",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        390.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        107.0,
                        28.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_initial": [
                                150.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Glide",
                            "parameter_mmax": 1000.0,
                            "parameter_mmin": 10.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Glide",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "Glide"
                }
            },
            {
                "box": {
                    "comment": "Feedback (Float) 0. to 1.5. Sets the dial. Default 0.4",
                    "id": "obj-in7",
                    "index": 7,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "How much of each repeat goes round again. Above 1 (the last fifth of the dial) the repeats build up until the tape saturation holds them: the dub runaway. Default 0.4",
                    "annotation_name": "Feedback",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-fb",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        465.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        157.0,
                        28.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.4
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Feedback",
                            "parameter_mmax": 1.5,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Fdbk",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1,
                            "parameter_exponent": 1.8
                        }
                    },
                    "varname": "Feedback"
                }
            },
            {
                "box": {
                    "comment": "Feedback Route (Int) 0 Straight, 1 Cross. Sets the menu. Default 0",
                    "id": "obj-in8",
                    "index": 8,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Straight: each side's repeats stay on that side. Cross: each side's repeats go to the other side (Stereo + Cross = classic ping-pong). Glides over 20 ms. Default Straight",
                    "annotation_name": "Route",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-route",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        540.0,
                        60.0,
                        100.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        107.0,
                        7.0,
                        94.0,
                        17.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "Straight",
                                "Cross"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Route",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Route",
                            "parameter_type": 2
                        }
                    },
                    "varname": "Route"
                }
            },
            {
                "box": {
                    "comment": "Low Cut (Float) Hz 20. to 2000. Sets the dial. Default 80",
                    "id": "obj-in9",
                    "index": 9,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Thins the echoes, in Hz. The filter sits at the playback head, so it works even with Feedback at 0, and every repeat is thinned a little more. Default 80",
                    "annotation_name": "Low Cut",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lo",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        615.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        84.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                80.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Low Cut",
                            "parameter_mmax": 2000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Lo Cut",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "Low Cut"
                }
            },
            {
                "box": {
                    "comment": "High Cut (Float) Hz 200. to 20000. Sets the dial. Default 8000",
                    "id": "obj-in10",
                    "index": 10,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        690.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Darkens the echoes, in Hz. The filter sits at the playback head, so it works even with Feedback at 0, and every repeat is darkened a little more. Default 8000",
                    "annotation_name": "High Cut",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-hi",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        690.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        57.0,
                        84.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                8000.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "High Cut",
                            "parameter_mmax": 20000.0,
                            "parameter_mmin": 200.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Hi Cut",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "High Cut"
                }
            },
            {
                "box": {
                    "comment": "Drive (Float) % 0. to 100. Sets the dial. Default 0",
                    "id": "obj-in11",
                    "index": 11,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        765.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "How hard the input hits the tape: 0 = clean, more = rounder and denser. Peaks stay level. Default 0",
                    "annotation_name": "Drive",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-drive",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        765.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        107.0,
                        84.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Drive",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Drive",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "Drive"
                }
            },
            {
                "box": {
                    "comment": "Wow (Float) 0. to 1. Sets the dial. Default 0.2",
                    "id": "obj-in12",
                    "index": 12,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        840.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Slow, uneven pitch wobble from the tape speed, up to 1 %. Default 0.2",
                    "annotation_name": "Wow",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-wow",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        840.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        157.0,
                        84.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.2
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Wow",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Wow",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "Wow"
                }
            },
            {
                "box": {
                    "comment": "Flutter (Float) 0. to 1. Sets the dial. Default 0.2",
                    "id": "obj-in13",
                    "index": 13,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        915.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Fast pitch wobble from the tape speed, up to 0.3 %. Default 0.2",
                    "annotation_name": "Flutter",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-flut",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        915.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        207.0,
                        84.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.2
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Flutter",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Flutter",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "Flutter"
                }
            },
            {
                "box": {
                    "comment": "Dry/Wet (Float) % 0. to 100. Sets the dial. Default 50",
                    "id": "obj-in14",
                    "index": 14,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        990.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Balance between the dry input and the delays, equal power. Default 50",
                    "annotation_name": "Dry/Wet",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-mix",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        990.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        207.0,
                        28.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                50.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Dry/Wet",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Dry/Wet",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "Dry/Wet"
                }
            },
            {
                "box": {
                    "comment": "On/Off (Int) 1 on, 0 off: off = echoes fade out, dry at full level. Sets the button. Default 1",
                    "id": "obj-in15",
                    "index": 14,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1065.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-onoff",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1065.0,
                        85.0,
                        44.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        207.0,
                        5.0,
                        44.0,
                        20.0
                    ],
                    "text": "Off",
                    "texton": "On",
                    "varname": "On/Off",
                    "annotation_name": "On/Off",
                    "annotation": "Off: the echoes fade out and the dry signal passes at full level. The delay keeps running underneath, so turning it back on never plays old echoes. Default on",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "On/Off",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "On/Off",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-modet",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        165.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-modesel",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        215.0,
                        180.0,
                        42.0,
                        22.0
                    ],
                    "text": "sel 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-act0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        215.0,
                        210.0,
                        55.0,
                        22.0
                    ],
                    "text": "active 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-act1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        277.0,
                        210.0,
                        55.0,
                        22.0
                    ],
                    "text": "active 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-actnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        215.0,
                        240.0,
                        230.0,
                        20.0
                    ],
                    "text": "Linked: grey out Time R (display only)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "numinlets": 15,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        280.0,
                        1080.0,
                        22.0
                    ],
                    "text": "br.delay.tape.1.1"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-out1",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        330.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-out2",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        330.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1155.0,
                        15.0,
                        440.0,
                        33.0
                    ],
                    "text": "br.delay.tape.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1155.0,
                        60.0,
                        420.0,
                        60.0
                    ],
                    "text": "Each inlet feeds its control, and each control feeds the core, so the screen always shows what you hear. Starting values are the controls' Initial Values: Linked, 375 / 750 ms, Glide 150, Feedback 0.4 Straight, Low Cut 80, High Cut 8000, Drive 0, Wow and Flutter 0.2, Dry/Wet 50, On."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t2",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1155.0,
                        145.0,
                        420.0,
                        47.0
                    ],
                    "text": "[br.delay.tape.1.1] is the real object: open it to see the gen~ inside. This file only adds the controls, so you can also patch the core directly and drive any control with a signal (an LFO on Time = tape warble)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t3",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1155.0,
                        215.0,
                        420.0,
                        87.0
                    ],
                    "text": "Why it sounds like tape: changing the time moves the read head instead of jumping, so the pitch bends while it travels, easing in and out like tape speeding up or slowing down. Each side has a first-echo tape and a loop tape; the modes only move the heads, so a mode change glides like a time change and never clicks. Low Cut and High Cut sit at the playback head: every echo goes through them and the loop is fed from the filtered signal, so each repeat is a little darker than the last. Each pass round the loop also gets a gentle tape saturation. Off fades to the dry signal at full level; the delay keeps running underneath."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t4",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1155.0,
                        325.0,
                        420.0,
                        47.0
                    ],
                    "text": "Ping-Pong: L 375 / R 750 gives L 375, R 750, L 1125, R 1500: alternating every 375 ms. Equal times hit both sides together. Stereo + Cross is the classic ping-pong where each bounce takes the time of the side it lands on."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.delay.tape.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.delay.tape.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1155.0,
                        400.0,
                        160.0,
                        74.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        258.0,
                        146.0
                    ],
                    "proportion": 0.5,
                    "rounded": 7
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-timer",
                        0
                    ],
                    "source": [
                        "obj-act0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-timer",
                        0
                    ],
                    "source": [
                        "obj-act1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out1",
                        0
                    ],
                    "source": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out2",
                        0
                    ],
                    "source": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        10
                    ],
                    "source": [
                        "obj-drive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        6
                    ],
                    "source": [
                        "obj-fb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        12
                    ],
                    "source": [
                        "obj-flut",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-glide",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        9
                    ],
                    "source": [
                        "obj-hi",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        0
                    ],
                    "source": [
                        "obj-in1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-hi",
                        0
                    ],
                    "source": [
                        "obj-in10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-drive",
                        0
                    ],
                    "source": [
                        "obj-in11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-wow",
                        0
                    ],
                    "source": [
                        "obj-in12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-flut",
                        0
                    ],
                    "source": [
                        "obj-in13",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mix",
                        0
                    ],
                    "source": [
                        "obj-in14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        1
                    ],
                    "source": [
                        "obj-in2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mode",
                        0
                    ],
                    "source": [
                        "obj-in3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-timel",
                        0
                    ],
                    "source": [
                        "obj-in4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-timer",
                        0
                    ],
                    "source": [
                        "obj-in5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-glide",
                        0
                    ],
                    "source": [
                        "obj-in6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-fb",
                        0
                    ],
                    "source": [
                        "obj-in7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-route",
                        0
                    ],
                    "source": [
                        "obj-in8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lo",
                        0
                    ],
                    "source": [
                        "obj-in9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        8
                    ],
                    "source": [
                        "obj-lo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        13
                    ],
                    "source": [
                        "obj-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-modet",
                        0
                    ],
                    "source": [
                        "obj-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-act0",
                        0
                    ],
                    "source": [
                        "obj-modesel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-act1",
                        0
                    ],
                    "source": [
                        "obj-modesel",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        2
                    ],
                    "source": [
                        "obj-modet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-modesel",
                        0
                    ],
                    "source": [
                        "obj-modet",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        7
                    ],
                    "source": [
                        "obj-route",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        3
                    ],
                    "source": [
                        "obj-timel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        4
                    ],
                    "source": [
                        "obj-timer",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        11
                    ],
                    "source": [
                        "obj-wow",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in15",
                        0
                    ],
                    "destination": [
                        "obj-onoff",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-onoff",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        14
                    ]
                }
            }
        ]
    }
}