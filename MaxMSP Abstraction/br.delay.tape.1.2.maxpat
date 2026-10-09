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
            85.0,
            104.0,
            1420.0,
            346.0
        ],
        "description": "br.delay.tape.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-1",
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
                    "id": "obj-2",
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
                    "comment": "Mode (Signal/Int) 0 Linked: both sides use Time L. 1 Stereo: each side its own time. 2 Ping-Pong: each side's first echo at its own time, then both repeat every (the longer time), so L 375 / R 750 alternates every 375 ms. Changes glide like a time change, no clicks. Default 0",
                    "id": "obj-3",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
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
                    "comment": "Time L (Signal/Float) ms 1. to 10000. Left delay time, and both sides in Linked. Changes glide, bending the pitch like tape. Default 375",
                    "id": "obj-4",
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
                    "comment": "Time R (Signal/Float) ms 1. to 10000. Right delay time in Stereo and Ping-Pong (ignored in Linked). Default 750",
                    "id": "obj-5",
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
                    "comment": "Glide (Signal/Float) ms 10. to 1000. How long a time or mode change takes to settle: longer = slower, deeper bend. Default 150",
                    "id": "obj-6",
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
                    "comment": "Feedback (Signal/Float) 0. to 1.5. How much of each repeat goes round again. Above 1 the repeats build up until the tape saturation holds them. Default 0.4",
                    "id": "obj-7",
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
                    "comment": "Feedback Route (Signal/Int) 0 Straight: each side's repeats stay on that side. 1 Cross: each side's repeats go to the other side, so Stereo + Cross is the classic ping-pong. Glides over 20 ms, no clicks. Default 0",
                    "id": "obj-8",
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
                    "comment": "Low Cut (Signal/Float) Hz 20. to 2000. Thins the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 80",
                    "id": "obj-9",
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
                    "comment": "High Cut (Signal/Float) Hz 200. to 20000. Darkens the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 8000",
                    "id": "obj-10",
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
                    "comment": "Drive (Signal/Float) % 0. to 100. How hard the input hits the tape: 0 = clean, more = rounder and denser. Peaks stay level. Default 0",
                    "id": "obj-11",
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
                    "comment": "Wow (Signal/Float) 0. to 1. Slow, uneven pitch wobble from the tape speed (up to 1 %). Default 0.2",
                    "id": "obj-12",
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
                    "comment": "Flutter (Signal/Float) 0. to 1. Fast pitch wobble from the tape speed (up to 0.3 %). Default 0.2",
                    "id": "obj-13",
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
                    "comment": "Dry/Wet (Signal/Float) % 0. to 100. Equal power. Default 50",
                    "id": "obj-14",
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
                    "comment": "On/Off (Signal/Int) 1 on, 0 off. Off: the echoes fade out and the dry signal passes at full level. The delay keeps running underneath, so turning it back on never plays old echoes. Fades over 20 ms. Default 1",
                    "id": "obj-on",
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
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 15,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
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
                    },
                    "patching_rect": [
                        15.0,
                        110.0,
                        1080.0,
                        22.0
                    ],
                    "text": "gen~ @title br.delay.tape.1.2"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-16",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        170.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-17",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        170.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-18",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1155.0,
                        15.0,
                        399.0,
                        33.0
                    ],
                    "text": "br.delay.tape.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-19",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1155.0,
                        60.0,
                        320.0,
                        141.0
                    ],
                    "text": "br.delay.tape: a stereo tape-style delay. Changing the time moves the read head instead of jumping, so the pitch bends while it travels, easing in and out like tape speeding up or slowing down. Wow and flutter wobble the tape speed. The tone filters sit at the playback head, so every echo is filtered and the loop is fed from the filtered signal: each repeat is a little darker than the last. Each pass round the loop also goes through a gentle tape saturation. Drive saturates the input on its way onto the tape. On/Off fades to the dry signal at full level. All DSP is in the gen~; every control glides, so nothing clicks. Defaults live in the gen~ (in N @default), so unconnected inlets need nothing. No State outlet here: whatever drives the core already knows the values. The .ui version reports its controls."
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
}
