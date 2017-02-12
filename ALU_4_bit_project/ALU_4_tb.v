`timescale 1ns / 1ps


module ALU_4_tb;

	// Inputs
	reg [8:0] a;
	reg [8:0] b;
	reg [1:0] sel;

	// Outputs
	wire [8:0] z;

	// Instantiate the Unit Under Test (UUT)
	ALU_4 uut (
		.z(z), 
		.a(a), 
		.b(b), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		a = 30; b = 20; 
		sel = 00;#10;
		sel = 01;#10;
		sel = 10;#10;
		sel = 11;#10;
		// Wait 100 ns for global reset to finish
		$stop;
        
		// Add stimulus here

	end
      
endmodule

