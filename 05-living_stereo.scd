// Stereo audio, left (220) and right (440) channels
{ [SinOsc.ar(220, 0, 0.2), SinOsc.ar(440, 1.5*pi, 0.2)] }.play;

a = ["foo", "bar"];
a[0];
a.at(1);
a.at(2);

// Multichannel argument expansion
{ SinOsc.ar([440, 442], 0, 0.2) }.play;


// 'Choose' randomly between mono / stereo outputs
(
{
	var freq;
    freq = [[660, 880], [440, 660], 1320, 880].choose;
	freq.postln;
    SinOsc.ar(freq, 0, 0.2);
}.play;
)

// Pan
// Slightly to the left
{ Pan2.ar(PinkNoise.ar(0.2), -0.3) }.play;
// Completely to the right
{ Pan2.ar(PinkNoise.ar(0.2), 1.0) }.play;
// Move left to right
{ Pan2.ar(PinkNoise.ar(0.2), SinOsc.kr(5, 0, 0.2)) }.play;

// Panning multi channel doesnt work?
{ Pan2.ar(SinOsc.ar([440, 442], 0, 0.2), 1.0) }.play;

// From the docs
// hear the difference, LinPan having a slight drop in the middle...
{LinPan2.ar(SinOsc.ar(440), Line.kr(-1,1,5))}.play

// ... whereas Pan2 is more smooth
{Pan2.ar(SinOsc.ar(440), Line.kr(-1,1,5))}.play
