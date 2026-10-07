# Max/MSP RNBO Patch for External or VST Creation: br.delay.tape.rnbo.1.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.delay.tape.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.delay.tape](https://github.com/guaguanco127/br.delay.tape)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

## <a name="About"></a>About

A stereo tape-style delay. Changing the delay time moves the tape's read head instead of jumping, so the pitch bends while it travels, easing in and out like tape speeding up or slowing down. Three modes (Linked, Stereo, Ping-Pong), straight or cross feedback, tone filters on the echoes, saturation that holds runaway feedback, drive into the tape, and wow and flutter. Every change glides, mode switches included, so nothing clicks. Works at any sample rate.

Inside [rnbo~], the twelve params (Mode, Time_L, Time_R, Glide, Feedback, Route, Low_Cut, High_Cut, Drive, Wow, Flutter, Dry_Wet) are the plugin parameters, with the same ranges and dial curves as the Max and Live versions. Inlets 3 to 14 set the same params, so the external has the same fourteen inlets as the abstraction. The gen~ code inside is the same as br.delay.tape.1.0.

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

**Memory:** the four 10-second tapes are sized for 192 kHz, about 62 MB per instance. Fine for a plugin or an external; heavy for a web export.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="VST"></a>What is a VST or AU Audio Plugin? 

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.delay.tape.rnbo.1.0.maxpat. Drop a sample of your own onto the [playlist~] to hear it.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.delay.tape.1.0~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.delay.tape.1.0, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.delay.tape.1.0~ in any patch. It has the same inlets as the abstraction, except that the twelve controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer** 

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.delay.tape.rnbo.1.0.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The twelve parameters show up in your DAW for automation.
