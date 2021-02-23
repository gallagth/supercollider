{[SinOsc.ar(440, 0, 0.2), SinOsc.ar(442, 0, 0.2)]}.play;

f = {
	"TOTO".postln;
};
f.value;
f.value;
f.value;

f = { "Evaluating...".postln; 2 + 3; };
f.value;

f = { 3.0.rand; };
f.value;
f.value;
f.value;

f = { arg a; a.value + 3; };
f.value(4);
g = { 3.0.rand };
f.value(g);

// Multiple args
(
f = {
	arg a, b;
	a - b
};
f.value(1, 2);
)

// Named args
(
f = { arg a, b, c; (a + b) / c };
f.value(5, b:10, c: 2);
)

// Default values
(
f = { arg a, b = 2; a + b };
f.value(-1);
)

// Different way of declaring args
(
f = { |a, b| a + b };
f.value(1, 2);
)

// Variables need to declared at the top
(
f = {
	arg a, b;
	var firstResult, finalResult;
	firstResult = a + b;
	finalResult = 2 * firstResult;
	finalResult
};
f.value(2, 3);
)

// Variables scope in ()
(
var myFunc;
myFunc = { |input| input.postln };
myFunc.value("YO");
)
myFunc; // ERROR
