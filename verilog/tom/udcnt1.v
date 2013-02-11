`include "defs.v"

module udcnt1
(
	output q,
	output co,
	input clk,
	input ci,
	input up,
	input resl
);
wire d1;
wire q1;

// Output buffers
wire q_obuf;
wire co_obuf;


// Output buffers
assign q = q_obuf;
assign co = co_obuf;


// LEGO.NET (218) - q : fd2q
fd2q q_inst
(
	.q(q_obuf), // OUT
	.d(d1), // IN
	.cp(clk), // IN
	.cd(resl)  // IN
);

// LEGO.NET (219) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (220) - q1 : en
assign q1 = ~(q_obuf ^ up);

// LEGO.NET (221) - co : an2
assign co_obuf = ci & q1;
endmodule
