{ SinOsc.ar(440, 0.0, 0.1) }.play;

(
f = {
	arg rate, mul;
	SinOsc.kr(rate, 1.5*pi, mul, mul);
};
{ SinOsc.ar(440, 0, f.value(0.5, 0.1)); }.play;
{ SinOsc.ar(220, 0, f.value(100, 0.2)); }.play;
{ SinOsc.ar(440, 0, f.value(440, 0.2)); }.play;
{ SinOsc.ar(880, 0, f.value(220, 0.2)); }.play;
)

s.quit;