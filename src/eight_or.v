//Keegan Walsh
//ELEN603, Dr. Greene
//January 21, 2016
//Project
//
module  eight_or (
	input [31:0] in0,in1,in2,in3,in4,in5,in6,in7,
	output [31:0] or_out);
//in0-in7	= input, 32-bit data from demux.v
//or_out	= output, 32-bit data to fifo.v
//
assign or_out = in0|in1|in2|in3|in4|in5|in6|in7;
//
endmodule
