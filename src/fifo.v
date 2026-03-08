//Keegan Walsh
//ELEN603, Dr. Greene
//November 21, 2015
//Project
//

`timescale 1ns / 1ps
//-----------------------------------------------
//8x8 Internet Switch, FIFO Memory
//
module fifo(
	output full, 
	output empty, 
	output reg [31:0] data_out, 
	input [31:0] data_in,
    	input clk, reset, push, pop);
//full		= output, control signal
//empty		= output, control signal to output.v
//data_out	= output, 32-bit payload
//data_in	= input, 32-bit payload
//clk		= clock
//reset		= reset
//push		= input, control signal from arbiter.v
//pop		= input, control signal from output.v
//
parameter       WIDTH = 32; 
parameter       DEPTH = 128; 
//
reg [WIDTH-1:0] mem [DEPTH-1:0]; //Memory "mem" array, 128x 32-bit values
reg [6:0] head,tail;
reg [7:0] cnt;
//
assign data_out = mem[tail];
assign empty = cnt ==0;
assign full = cnt==128;
//
always @(posedge clk or negedge reset)
    begin
        if ( !reset )
          begin
             head <= 0;
             tail <= 0;
             cnt <= 0;
          end // if
//
	else begin
           if ( pop && !empty )
		begin
		        tail <= tail + 1;
		        cnt <= cnt - 1;
		end //else if: (pop && !empty)
//
           else if ( push && !full )
             	begin
		        mem[ head ] <= data_in;
		        head <= head + 1;
		        cnt <= cnt + 1;
             	end //else if: (push && full)
// 
          end // else: !if( reset )
     end // always @ (posedge clk or posedge reset)
endmodule // fifo
