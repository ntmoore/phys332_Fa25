`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// 

module nathans_top_level_module(
    input [2:0] SW,
	output LED16_B,
	output LED16_G,
	output LED16_R,
	output LED17_B,
	output LED17_G,
	output LED17_R,    
	output [1:0] LED
    );
	
	assign LED16_B = SW[0];
	assign LED16_G = SW[1];
	assign LED16_R = SW[2];
	
    nand2 g1( .a(SW[0]), .b(SW[1]), .c(LED[0]));
	
	wire a1;
	
	and2 g2( .a(SW[1]), .b(SW[0]), .c(a1) );
	assign LED[1] = ~ a1;

	wire a2,a3,a4;
	nand2 g3( .a(SW[1]), .b(1'b1), .c(a2));
	nand2 g4( .a(1'b1), .b(SW[0]), .c(a3));	
	nand2 g5( .a(a2), .b(a3), .c(a4));

	assign LED17_B = a4;
	assign LED17_G = 1'b0;
	assign LED17_R = ~a4;
	
	    
endmodule 

module and2(
    input a,
    input b,
    output c
    );
    assign c = a & b;
endmodule


module nand2(
    input a,
    input b,
    output c
    );
    assign c = ~( a & b);
endmodule