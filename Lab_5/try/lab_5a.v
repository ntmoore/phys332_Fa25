module lab_5a(
input [3:0] SW,
output [1:0] LED,
output LED16_R,
output LED16_G,
output LED16_B
);
	assign LED[0] = SW[0];
	assign LED[1] = SW[1]&SW[2];
	
	assign LED16_R = 1'b1;
	assign LED16_G = SW[3];
	assign LED16_B = 1'b1;
	
endmodule