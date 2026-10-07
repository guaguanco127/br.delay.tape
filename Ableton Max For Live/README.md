# Ableton Max for Live device: br.delay.tape.1.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.delay.tape.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.delay.tape](https://github.com/guaguanco127/br.delay.tape)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  

## <a name="About"></a>About

A stereo tape-style delay. Changing the delay time moves the tape's read head instead of jumping, so the pitch bends while it travels, easing in and out like tape speeding up or slowing down. Three modes (Linked, Stereo, Ping-Pong), straight or cross feedback, tone filters on the echoes, saturation that holds runaway feedback, drive into the tape, and wow and flutter. Every change glides, mode switches included, so nothing clicks. Works at any sample rate.

A stereo audio effect with twelve controls, all Live parameters, so you can automate them or map them to a controller. Two parameter banks: **Delay** (Mode, Time L, Time R, Glide, Feedback, Route, Drive, Dry/Wet) and **Tone + Tape** (Low Cut, High Cut, Wow, Flutter).

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

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing. 

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.delay.tape.1.0.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  
  
4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.
