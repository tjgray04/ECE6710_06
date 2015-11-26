`timescale 1ns / 1ps

//
// Sign extends an 8-bit immediate to 16-bits
//

`include "defines.v"

module signext
	(input  [`IMMWIDTH-1:0] imm,
	output [`DATAWIDTH-1:0] immExt);

	assign immExt = {{8{imm[`IMMWIDTH-1]}}, imm};

endmodule
