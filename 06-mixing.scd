{ PinkNoise.ar(0.2) + SinOsc.ar(440, 0, 0.2) + Saw.ar(660, 0.2) }.play;

// one channel
{ Mix.new([SinOsc.ar(440, 0, 0.2), Saw.ar(660, 0.2)]).postln }.play;

// combine two stereo arrays
(
{
	var a, b;
	a = [SinOsc.ar(440, 0, 0.2), Saw.ar(442, 0.2)];
	b = [SinOsc.ar(221, 0, 0.2), Saw.ar(660, 0.2)];
	Mix([a, b]).postln;
}.play
)

// Mix fill
(
    var n = 32;
    { Mix.fill(n, { SinOsc.ar(500 + 500.0.rand, 0, 1 / n) }) }.play;
)

// Look at the post window for frequencies and indices
(
    var n = 8;
    {
        Mix.fill(n, { arg index;
            var freq;
            index.postln;
            freq = 440 * index;
            freq.postln;
		SinOsc.ar(freq , 0, 1 / (n))
        })
    }.play;
)