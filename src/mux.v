//Keegan Walsh
//ELEN603, Dr. Greene
//December 9, 2015
//Project
//
module mux_out (
	input reg [31:0] payload_in_m0,
 	input reg [31:0] payload_in_m1,
	input reg [31:0] payload_in_m2,
	input reg [31:0] payload_in_m3,
	input reg [31:0] payload_in_m4,
	input reg [31:0] payload_in_m5,
	input reg [31:0] payload_in_m6,
	input reg [31:0] payload_in_m7,
	input reg [2:0] arb_sel_m, 	 
	output reg [31:0] payload_from_m); 	
//payload_in_m		= input 0-7, 8x 32-bit payload from demux.v
//arb_sel_m		= input, 3-bit, select control, from arbiter grand_index
//payload_from_m	= output, 1x 32-bit payload to fifo.v
//
always @ (*)
begin
	case (arb_sel_m)
	3'b000: payload_from_m = payload_in_m0;
	3'b001: payload_from_m = payload_in_m1;
	3'b010: payload_from_m = payload_in_m2;
	3'b011: payload_from_m = payload_in_m3;
	3'b100: payload_from_m = payload_in_m4;
	3'b101: payload_from_m = payload_in_m5;
	3'b110: payload_from_m = payload_in_m6;
	3'b111: payload_from_m = payload_in_m7;
	//default: payload_from_m = 32'd0;
	endcase
end //begin 
//
endmodule
