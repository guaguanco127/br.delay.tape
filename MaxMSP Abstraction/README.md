# Max/MSP Abstraction: br.delay.tape.1.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.delay.tape.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.delay.tape](https://github.com/guaguanco127/br.delay.tape)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use) 

## <a name="About"></a>About

A stereo tape-style delay. Changing the delay time moves the tape's read head instead of jumping, so the pitch bends while it travels, easing in and out like tape speeding up or slowing down. Three modes (Linked, Stereo, Ping-Pong), straight or cross feedback, tone filters on the echoes, saturation that holds runaway feedback, drive into the tape, and wow and flutter. Every change glides, mode switches included, so nothing clicks. Works at any sample rate.

**Mode:**  
**Linked:** both sides use Time L (Time R is ignored, and greyed out in the UI). Echoes at t, 2t, 3t...  
**Stereo:** each side has its own time.  
**Ping-Pong:** each side's first echo comes at its own time, then both sides repeat every T, where T is the longer of the two times. Time L 375 / Time R 750 gives L 375, R 750, L 1125, R 1500: alternating every 375 ms. Equal times hit both sides together.  
Switching modes moves the tape heads through the same glide as a time change: the tails carry on, and nothing clicks.  

**Time L / Time R:** 1 to 10000 ms. Defaults 375 and 750.  

**Glide:** 10 to 1000 ms. How long a time or mode change takes to settle. Longer = a slower, deeper pitch bend. Default 150.  

**Feedback:** 0 to 1.5. How much of each repeat goes round again. Above 1 the repeats build up instead of dying away (the classic dub runaway) until the tape saturation holds them: 1.05 to 1.3 swells, 1.5 builds fast and gets gritty. The dial is curved so 1.0 sits at about 80 % of its travel. At full runaway with Dry/Wet at 100 the output can go above 0 dBFS, so keep a limiter or gain stage after it. Default 0.4.  

**Route:** Straight keeps each side's repeats on that side. Cross sends them to the other side: Stereo + Cross is the classic ping-pong, where each bounce takes the time of the side it lands on. Crossfades over 20 ms. Default Straight.  

**Low Cut / High Cut:** 20 to 2000 Hz and 200 to 20000 Hz. The tone filters sit at the playback head, so every echo goes through them and the loop is fed from the filtered signal: each repeat is a little thinner and darker than the last. They work even with Feedback at 0. Defaults 80 and 8000.  

**Drive:** 0 to 100 %. How hard the input hits the tape. 0 is clean; more makes the sound rounder and denser while peaks stay at the same level. Default 0.  

**Wow / Flutter:** 0 to 1. Uneven tape speed: wow is a slow wobble (up to 1 % in pitch), flutter a fast one (up to 0.3 %). Both only ever lengthen the delay, and both sides share them like one tape transport. Defaults 0.2.  

**Dry/Wet:** 0 to 100 %, equal power. Default 50.  

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.delay.tape.1.0 | No UI. The plain object to patch with |
| br.delay.tape.ui.1.0 | With Mode and Route menus and a dial for every control, ready for a [bpatcher] |
| _br.delay.tape.example.1.0 | Example patch: open this first. Pick a source (drum loop, voice, synth plucks, a stereo pair or your mic) |

The UI version contains the plain version and has the same inlets and outlets, so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed, and that the Max patch you are using is saved inside a folder.  

2. Copy the .maxpat files you want into the same folder as your patch. The UI version needs the plain version next to it (br.delay.tape.ui.1.0 uses br.delay.tape.1.0).

3. In your patch, create an object called br.delay.tape.1.0. For the version with controls, create a [bpatcher] and choose br.delay.tape.ui.1.0.maxpat as its patcher.

## <a name="Use"></a>How To Use

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Mode | Signal or Int (UI: Int only) | 0 Linked, 1 Stereo, 2 Ping-Pong | 0 |
| 4 | Time L | Signal or Float (UI: Float only) | ms 1 to 10000 | 375 |
| 5 | Time R | Signal or Float (UI: Float only) | ms 1 to 10000 (ignored in Linked) | 750 |
| 6 | Glide | Signal or Float (UI: Float only) | ms 10 to 1000 | 150 |
| 7 | Feedback | Signal or Float (UI: Float only) | 0 to 1.5 | 0.4 |
| 8 | Route | Signal or Int (UI: Int only) | 0 Straight, 1 Cross | 0 |
| 9 | Low Cut | Signal or Float (UI: Float only) | Hz 20 to 2000 | 80 |
| 10 | High Cut | Signal or Float (UI: Float only) | Hz 200 to 20000 | 8000 |
| 11 | Drive | Signal or Float (UI: Float only) | % 0 to 100 | 0 |
| 12 | Wow | Signal or Float (UI: Float only) | 0 to 1 | 0.2 |
| 13 | Flutter | Signal or Float (UI: Float only) | 0 to 1 | 0.2 |
| 14 | Dry/Wet | Signal or Float (UI: Float only) | % 0 to 100 | 50 |

Outlets 1 / 2: Left Out / Right Out (Signal)

Every control glides, so you can change anything while audio plays, and every control also takes a signal: an LFO on Time L gives a continuous tape warble (the example patch does this). In the UI version a number into an inlet moves its control, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

Each side has two tapes. The first holds the input and is read at that side's own time: the first echo. The second holds the feedback and is read at the loop time: every later echo. The modes only change where the heads go, which is why a mode change glides instead of clicking. The 10-second tapes use about 8 MB per instance at 48 kHz (they are sized for 192 kHz, so allocation is fixed at about 62 MB).

Double-click the object to see inside it and study how it was built.
