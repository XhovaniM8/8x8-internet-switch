//Keegan Walsh
//ELEN603, Dr. Greene
//December 9, 2015
//Project
//
module demux_in (
	input reg [31:0] payload_in_d,
	input reg [3:0] addr_sel_d, 	
	output reg [31:0] payload_out_d0,
	output reg [31:0] payload_out_d1,
	output reg [31:0] payload_out_d2,
	output reg [31:0] payload_out_d3,
	output reg [31:0] payload_out_d4,
	output reg [31:0] payload_out_d5,
	output reg [31:0] payload_out_d6,
	output reg [31:0] payload_out_d7); 	
//payload_in_d		= input, 32-bit data from input.v
//addr_sel_de		= input, select control, from input.v 4-bit address @ addr_from_input[i]
//payload_out_d		= outputs 0-7, 32-bit data to mux.v 
//
always @ (*)
begin
	case (addr_sel_d)
	4'b?000: payload_out_d0 = payload_in_d;
	4'b?001: payload_out_d1 = payload_in_d;
	4'b?010: payload_out_d2 = payload_in_d;
	4'b?011: payload_out_d3 = payload_in_d;
	4'b?100: payload_out_d4 = payload_in_d;
	4'b?101: payload_out_d5 = payload_in_d;
	4'b?110: payload_out_d6 = payload_in_d;
	4'b?111: payload_out_d7 = payload_in_d;
	//default: payload_in_d = 32'd0;
	endcase
end //begin
//
endmodule
