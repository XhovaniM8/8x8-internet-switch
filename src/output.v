//Keegan Walsh
//ELEN603, Dr. Greene
//December 9, 2015
//Project

`timescale 1ns / 1ps
//-----------------------------------------------
//8x8 Internet Switch, Output (SIPO)
//
// 
module portout (
	input reg [31:0] payload_in,
	input vld_o,
	input clock,reset_n,
	output reg valido_n,frameo_n,
	output reg dout,
	output reg pop);
//payload_in	= input variable, serialized 32-bit payload
//vld_o			= input control variable, input from fifo.v **removed, not really used**
//clock 		= clock
//reset_n		= reset, active low
//valido_n		= output, state control variable
//frameo_n 		= output, state control variable
//dout			= output variable, serialized 32-bit payload
//pop			= control variable, output to fifo.v
//
//
reg [5:0] cntp_o;
reg [31:0] payload_in_save;
reg [1:0] state;
//cntp_o 			= output count payload
//payload_in_save	= temp state for payload
//state				= case control
//
//	
always @(posedge clock, negedge reset_n)
//
	if (!reset_n) begin //continue if reset_n not equal to "1"
       	cntp_o <= 0; //non-blocking count payload = "0"
		state <= 0; //move to state 0
       	pop <= 0; //do not issue 'pop'
		frameo_n <= 1; //'x' state 
		valido_n <= 1; //'x' state
    end //if 
//
	else begin        
//
		case (state)
			0: begin
		   		if (vld_o) begin
					cntp_o <= 0; //start count at '0'
					pop <= 1; //issue pop to fifo.v
					state <= 1; //move to state 1
					payload_in_save <= payload_in; 
				end //if
			end //state 0
//
			1: begin
				pop <= 0; 
				state <= 2; //move to state 2
				frameo_n <= 0; //move frame to start payload state
			end //state 1
//	
			2: begin
				valido_n <= 0; //move valid to start payload state
				dout <= payload_in_save[cntp_o]; //parallel to serial transfer
				//$strobe("Output DBG: %t : %h %h", $time, payload_in_save, payload_in); 
				//
				if (cntp_o < 31) cntp_o <= cntp_o + 1; //stop condition
				//
				else begin
					state <= 0; //move to state 0
					frameo_n <= 1; //'x' state
					valido_n <= 1; //'x' state
				end //else
			end //state 2
		endcase
	end //else
endmodule
