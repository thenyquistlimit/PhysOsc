<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac  ;;;realtime audio out
; -o syncgrain.wav -W ;;; for file output any platform

</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

chn_k "boid0x", 1
chn_k "boid0y", 1
chn_k "boid1x", 1
chn_k "boid1y", 1
chn_k "boid2x", 1
chn_k "boid2y", 1
chn_k "boid3x", 1
chn_k "boid3y", 1
chn_k "boid4x", 1
chn_k "boid4y", 1
chn_k "boid5x", 1
chn_k "boid5y", 1
chn_k "boid6x", 1
chn_k "boid6y", 1
chn_k "boid7x", 1
chn_k "boid7y", 1
chn_k "boid8x", 1
chn_k "boid8y", 1
chn_k "boid9x", 1
chn_k "boid9y", 1
chn_k "boid10x", 1
chn_k "boid10y", 1
chn_k "boid11x", 1
chn_k "boid11y", 1
chn_k "boid12x", 1
chn_k "boid12y", 1
chn_k "boid13x", 1
chn_k "boid13y", 1
chn_k "boid14x", 1
chn_k "boid14y", 1
chn_k "boid15x", 1
chn_k "boid15y", 1
chn_k "boid16x", 1
chn_k "boid16y", 1
chn_k "boid17x", 1
chn_k "boid17y", 1
chn_k "boid18x", 1
chn_k "boid18y", 1
chn_k "boid19x", 1
chn_k "boid19y", 1
chn_k "accelx", 1

; Zak Initialization - 1 a-rate and one k-rate variable
zakinit 1, 1
  
instr 1
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid0x"
gkstr chnget "boid0x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid0y"
gkpitch chnget "boid0y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 2
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid1x"
gkstr chnget "boid1x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid1y"
gkpitch chnget "boid1y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 3
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid2x"
gkstr chnget "boid2x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid2y"
gkpitch chnget "boid2y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 4
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid3x"
gkstr chnget "boid3x"
kstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid3y"
gkpitch chnget "boid3y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 5
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid4x"
gkstr chnget "boid4x"
kstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid4y"
gkpitch chnget "boid4y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 6
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid5x"
gkstr chnget "boid5x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid5y"
gkpitch chnget "boid5y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 7
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid6x"
gkstr chnget "boid6x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid6y"
gkpitch chnget "boid6y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 8
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid7x"
gkstr chnget "boid7x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid7y"
gkpitch chnget "boid7y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 9
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid8x"
gkstr chnget "boid8x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid8y"
gkpitch chnget "boid8y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 10
		
iolaps  = 2
igrsize = 0.10

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid9x"
gkstr chnget "boid9x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid9y"
gkpitch chnget "boid9y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 11
		
iolaps  = 2
igrsize = 0.20

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid10x"
gkstr chnget "boid10x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid10y"
gkpitch chnget "boid10y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 12
		
iolaps  = 2
igrsize = 0.20

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid11x"
gkstr chnget "boid11x"
kstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid11y"
gkpitch chnget "boid11y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 13
		
iolaps  = 2
igrsize = 0.20

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid12x"
gkstr chnget "boid12x"
kstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid12y"
gkpitch chnget "boid12y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 14
		
iolaps  = 2
igrsize = 0.20

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid13x"
gkstr chnget "boid13x"
kstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid13y"
gkpitch chnget "boid13y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 15
		
iolaps  = 2
igrsize = 0.20

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid14x"
gkstr chnget "boid14x"
kstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid14y"
gkpitch chnget "boid14y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.3 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 16
		
iolaps  = 2
igrsize = 0.40

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid15x"
gkstr chnget "boid15x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid15y"
gkpitch chnget "boid15y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig

iRvbSendAmt = 0.6 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 17
		
iolaps  = 2
igrsize = 0.40

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid16x"
gkstr chnget "boid16x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid16y"
gkpitch chnget "boid16y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.6 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 18
		
iolaps  = 2
igrsize = 0.40

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid17x"
gkstr chnget "boid17x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid17y"
gkpitch chnget "boid17y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.6 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 19
		
iolaps  = 2
igrsize = 0.40

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid18x"
gkstr chnget "boid18x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid18y"
gkpitch chnget "boid18y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.6 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 20
		
iolaps  = 2
igrsize = 0.40

kfreq   = iolaps/igrsize
kps     = 1/iolaps

kstr chnget "boid19x"
gkstr chnget "boid19x"
gkstr    = .3   /* timescale  */
kenv adsr p3*.1, p3*.3, .4, p3*.4
kpitch chnget "boid19y"
gkpitch chnget "boid19y"
gkpitch  = p4   /* pitchscale */

asig	syncgrain 0.1*kenv, kfreq, kpitch, igrsize, kps*kstr, 1, 2, iolaps
	outs	  asig, asig 

iRvbSendAmt = 0.6 ; reverb send amount (0-1)
;write to zak audio channel 1 with mixing
    zawm asig*iRvbSendAmt, 1

endin

instr 99 ; Reverb Always On

aInSig zar 1; read first zak audio channel
kFblvl init 0.55; feedback level - i.e. reverb time 
kFco chnget "accelx"
gkFco chnget "accelx" 
gkFco   init 6000 ; cutoff freq. of a filter within the reverb
aRvbL, aRvbR reverbsc aInSig, aInSig, kFblvl, kFco
         outs aRvbL, aRvbR ; send audio to outputs
         zacl 0, 1 ; clear zak audio channels
endin

</CsInstruments>
<CsScore>

f1 0 0 1 "U.wav" 0 0 0	;Deferred table for source waveform
f2 0 8192 20 2 1 ;Hanning function for Grain Envelope

i1 0 2000 1
i2 0 2000 1
i3 0 2000 1
i4 0 2000 1
i5 0 2000 1
i6 0 2000 1
i7 0 2000 1
i8 0 2000 1
i9 0 2000 1
i10 0 2000 1
i11 0 2000 1
i12 0 2000 1
i13 0 2000 1
i14 0 2000 1
i15 0 2000 1
i16 0 2000 1
i17 0 2000 1
i18 0 2000 1
i19 0 2000 1
i20 0 2000 1
i99 0 2010 
e
</CsScore>
</CsoundSynthesizer>

<MacOptions>
Version: 3
Render: Real
Ask: Yes
Functions: ioObject
Listing: Window
WindowBounds: -700 -640 200 140
CurrentView: io
IOViewEdit: On
Options: -b128 -A -s -m167 -R
</MacOptions>
<MacGUI>
ioView background {32125, 41634, 41120}
ioSlider {266, 7} {20, 98} 0.000000 1.000000 0.122449 amp
ioSlider {10, 29} {239, 22} 100.000000 1000.000000 258.158996 freq
ioGraph {8, 112} {265, 116} table 0.000000 1.000000 
ioListing {279, 112} {266, 266}
ioText {293, 44} {41, 24} label 0.000000 0.00100 "" left "Lucida Grande" 8 {0, 0, 0} {65280, 65280, 65280} background noborder Amp:
ioText {333, 44} {70, 24} display 0.000000 0.00100 "amp" left "Lucida Grande" 8 {0, 0, 0} {65280, 65280, 65280} background noborder 0.1837
ioText {66, 57} {41, 24} label 0.000000 0.00100 "" left "Lucida Grande" 8 {0, 0, 0} {65280, 65280, 65280} background noborder Freq:
ioText {106, 57} {69, 24} display 0.000000 0.00100 "freq" left "Lucida Grande" 8 {0, 0, 0} {65280, 65280, 65280} background noborder 261.9247
ioText {425, 6} {120, 100} label 0.000000 0.00100 "" left "Lucida Grande" 8 {0, 0, 0} {65280, 65280, 65280} nobackground border 
ioText {449, 68} {78, 24} display 0.000000 0.00100 "freqsweep" center "DejaVu Sans" 8 {0, 0, 0} {14080, 31232, 29696} background border 999.6769
ioButton {435, 24} {100, 30} event 1.000000 "Button 1" "Sweep" "/" i1 0 10
ioGraph {8, 233} {266, 147} scope 2.000000 -1.000000 
</MacGUI>

<EventPanel name="" tempo="60.00000000" loop="8.00000000" x="0" y="0" width="596" height="322"> 
 
 
 
 
 
 
 
 
 </EventPanel>