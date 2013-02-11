`include "defs.v"

module fdsynch
(
	output q,
	input d,
	input ld,
	input clk
);
wire qt;
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// DUPLO.NET (293) - qt : fd1e
fd1e qt_inst
(
	.q(qt), // OUT
	.qn(qb), // OUT
	.d(q_obuf), // IN
	.cp(clk), // IN
	.ti(d), // IN
	.te(ld)  // IN
);

// DUPLO.NET (294) - dummy : dummy

// DUPLO.NET (295) - q : nivh
assign q_obuf = qt;
endmodule
