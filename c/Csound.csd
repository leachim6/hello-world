//creating a basic Csound program to generate a simple sine wave, providing an audible representation of "Hello World".
<CsoundSynthesizer>

<CsOptions>
; Select audio/midi flags here according to platform
-odac -+rtaudio=alsa -iadc
; Real-time audio output and input
</CsOptions>

<CsInstruments>
; Initialize the global variables.
sr = 44100
ksmps = 32
nchnls = 2

; Instrument #1.
instr 1
  aout vco2 0.5, 440
  outs aout, aout
endin
</CsInstruments>

<CsScore>
; Table #1, a sine wave.
f 1 0 16384 10 1

; Play Instrument #1 for one second.
i 1 0 1
</CsScore>

</CsoundSynthesizer>
