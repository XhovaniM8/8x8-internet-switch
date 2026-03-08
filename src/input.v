//Keegan Walsh
//ELEN603, Dr. Greene
//November 21, 2015
//Project

`timescale 1ns / 1ps
//-----------------------------------------------
//8x8 Internet Switch, Input Module
//
module portin (
	input clock, reset_n, frame_n, valid_n, di,
	output reg [3:0] addr,
	output reg [31:0] payload, 
	output reg vld); 
//clock		= clock
//reset_n 	= reset, active low
//frame_n 	= input address 
//vald_n 	= input validation check
//di		= input variable, 36-bit (addr+payload)
//addr 		= output, 4-bit address 
//payload	= output, 32-bit payload
//vld		= output, 1-bit to arbiter
//
reg [5:0] cnta,cntp;
//cnta	= count address
//cntp	= count payload
//
  always @(posedge clock, negedge reset_n) 
    if (!reset_n) begin //continue if reset_n not equal to "1"
       cnta <= 0; //non-blocking count address = "0"
       cntp <= 0; //non-blocking count payload = "0"
       vld <= 0; //non-blocking validation = "0"
    end
//
    else begin 
       if (!frame_n && valid_n) begin //&&, logical AND, "1",0","x" outputs
         if (cnta < 4) addr[cnta] <= di; //pick 4-bit address
         cnta <= cnta + 1; 
       end 
//	   
       else if (!frame_n && !valid_n) begin 
         payload[cntp] <= di; //start pick remaining 32-bit payload
         cntp <= cntp + 1; 
       end
//	   
       else if (frame_n && !valid_n) begin 
         payload[cntp] <= di; //end pick remaining 32-bit payload
         vld <= 1; //send "1" validation to arbiter
         cnta <= 0; 
         cntp <= 0; 
         $strobe("DBG: %t : %d %h", $time, addr, payload); 
       end
//	   
       else begin 
         vld <= 0; 
         cnta <= 0; 
         cntp <= 0; 
       end
//	   
    end //end else-begin
endmodule //end input
