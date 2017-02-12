`timescale 1ns / 100ps

/////////////////////////////////////////////////
//
//  Time check for add, sub, mul, div at a time 
//
/////////////////////////////////////////////////

 module ALU_4(z,a,b,sel);

				input [8:0]a,b;
				input [1:0]sel;
				output[8:0]z;

		reg [8:0]z;

		always @(sel,a,b)
			begin
				case(sel)
					2'b00: z = a+b;
					2'b01: z = a-b;
					2'b10: z = a*b;
					2'b11: z = a&b;
				endcase
			end
 endmodule
