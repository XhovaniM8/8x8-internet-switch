//Keegan Walsh
//ELEN603, Dr. Greene
//November 21, 2015
//Project

`timescale 1ns / 1ps
//
//-----------------------------------------------
//8x8 Internet Switch, Router (top level)
//
//
module  router (
     input clock, reset_n, 
     input [7:0] frame_n, valid_n, di, 
	 output [7:0] dout, valido_n, frameo_n);
//
//-----------------------------------------------
// input.v Instantiation
//
//
wire [3:0] addr_from_input [7:0]; //address input bus
wire [31:0] payload_from_input [7:0]; //payload input bus
wire vld_from_input [7:0]; //vld 1-bit bus array
//
genvar i; 
generate 
	for (i=0;i<8;i=i+1) begin :inst
		portin t (clock,reset_n,frame_n[i],valid_n[i],di[i],
        addr_from_input[i],payload_from_input[i],vld_from_input[i]); 
	end //end for
endgenerate
//
//-----------------------------------------------
// DW_arb_rr.v Instantiation
//
//
//wire grant_from_arb [7:0];
wire [2:0] grant_index_from_arb [7:0]; //3-bit array of 8x wires, select to mux.v
wire granted_from_arb [7:0]; //1-bit array of 8x wires, arb.v to fifo.v
reg mask_on = 8'b0000_0000; //~mask, on
//reg mask_off = 8'b1111_1111; //mask, off
reg enable_on = 1'b1; //enable on
//reg enable_off = 1'b0; //enable off
//
wire vld_payload_from_or [7:0];
//
eight_or_arb or0 (.in0(vld_from_input[0]),.in1(vld_from_input[1]),.in2(vld_from_input[2]),.in3(vld_from_input[3]),.in4(vld_from_input[4]),.in5(vld_from_input[5]),.in6(vld_from_input[6]),.in7(vld_from_input[7]),.or_out(vld_payload_from_or[0]));
eight_or_arb or1 (.in0(vld_from_input[0]),.in1(vld_from_input[1]),.in2(vld_from_input[2]),.in3(vld_from_input[3]),.in4(vld_from_input[4]),.in5(vld_from_input[5]),.in6(vld_from_input[6]),.in7(vld_from_input[7]),.or_out(vld_payload_from_or[1]));
eight_or_arb or2 (.in0(vld_from_input[0]),.in1(vld_from_input[1]),.in2(vld_from_input[2]),.in3(vld_from_input[3]),.in4(vld_from_input[4]),.in5(vld_from_input[5]),.in6(vld_from_input[6]),.in7(vld_from_input[7]),.or_out(vld_payload_from_or[2]));
eight_or_arb or3 (.in0(vld_from_input[0]),.in1(vld_from_input[1]),.in2(vld_from_input[2]),.in3(vld_from_input[3]),.in4(vld_from_input[4]),.in5(vld_from_input[5]),.in6(vld_from_input[6]),.in7(vld_from_input[7]),.or_out(vld_payload_from_or[3]));
eight_or_arb or4 (.in0(vld_from_input[0]),.in1(vld_from_input[1]),.in2(vld_from_input[2]),.in3(vld_from_input[3]),.in4(vld_from_input[4]),.in5(vld_from_input[5]),.in6(vld_from_input[6]),.in7(vld_from_input[7]),.or_out(vld_payload_from_or[4]));
eight_or_arb or5 (.in0(vld_from_input[0]),.in1(vld_from_input[1]),.in2(vld_from_input[2]),.in3(vld_from_input[3]),.in4(vld_from_input[4]),.in5(vld_from_input[5]),.in6(vld_from_input[6]),.in7(vld_from_input[7]),.or_out(vld_payload_from_or[5]));
eight_or_arb or6 (.in0(vld_from_input[0]),.in1(vld_from_input[1]),.in2(vld_from_input[2]),.in3(vld_from_input[3]),.in4(vld_from_input[4]),.in5(vld_from_input[5]),.in6(vld_from_input[6]),.in7(vld_from_input[7]),.or_out(vld_payload_from_or[6]));
eight_or_arb or7 (.in0(vld_from_input[0]),.in1(vld_from_input[1]),.in2(vld_from_input[2]),.in3(vld_from_input[3]),.in4(vld_from_input[4]),.in5(vld_from_input[5]),.in6(vld_from_input[6]),.in7(vld_from_input[7]),.or_out(vld_payload_from_or[7]));
//
DW_arb_rr u0 (clock,reset_n,init_n,enable_on,vld_payload_from_or[0],mask_on,granted_from_arb[0],grant_from_arb[0],grant_index_from_arb[0]);
DW_arb_rr u1 (clock,reset_n,init_n,enable_on,vld_payload_from_or[1],mask_on,granted_from_arb[1],grant_from_arb[1],grant_index_from_arb[1]);
DW_arb_rr u2 (clock,reset_n,init_n,enable_on,vld_payload_from_or[2],mask_on,granted_from_arb[2],grant_from_arb[2],grant_index_from_arb[2]);
DW_arb_rr u3 (clock,reset_n,init_n,enable_on,vld_payload_from_or[3],mask_on,granted_from_arb[3],grant_from_arb[3],grant_index_from_arb[3]);
DW_arb_rr u4 (clock,reset_n,init_n,enable_on,vld_payload_from_or[4],mask_on,granted_from_arb[4],grant_from_arb[4],grant_index_from_arb[4]);
DW_arb_rr u5 (clock,reset_n,init_n,enable_on,vld_payload_from_or[5],mask_on,granted_from_arb[5],grant_from_arb[5],grant_index_from_arb[5]);
DW_arb_rr u6 (clock,reset_n,init_n,enable_on,vld_payload_from_or[6],mask_on,granted_from_arb[6],grant_from_arb[6],grant_index_from_arb[6]);
DW_arb_rr u7 (clock,reset_n,init_n,enable_on,vld_payload_from_or[7],mask_on,granted_from_arb[7],grant_from_arb[7],grant_index_from_arb[7]);
//
//-----------------------------------------------
// Switch Fabric (deMUXs), 1-to-8, input.v to mux.v Ports
//
//
//
wire [31:0] payload_from_demux0 [7:0];
wire [31:0] payload_from_demux1 [7:0];
wire [31:0] payload_from_demux2 [7:0];
wire [31:0] payload_from_demux3 [7:0];
wire [31:0] payload_from_demux4 [7:0];
wire [31:0] payload_from_demux5 [7:0];
wire [31:0] payload_from_demux6 [7:0];
wire [31:0] payload_from_demux7 [7:0];
//
demux_in v0 (
.payload_in_d(payload_from_input[0]),
.addr_sel_d(addr_from_input[0]),
.payload_out_d0(payload_from_demux0[0]),
.payload_out_d1(payload_from_demux0[1]),
.payload_out_d2(payload_from_demux0[2]),
.payload_out_d3(payload_from_demux0[3]),
.payload_out_d4(payload_from_demux0[4]),
.payload_out_d5(payload_from_demux0[5]),
.payload_out_d6(payload_from_demux0[6]),
.payload_out_d7(payload_from_demux0[7])
);
//
demux_in v1 (
.payload_in_d(payload_from_input[1]),
.addr_sel_d(addr_from_input[1]),
.payload_out_d0(payload_from_demux1[0]),
.payload_out_d1(payload_from_demux1[1]),
.payload_out_d2(payload_from_demux1[2]),
.payload_out_d3(payload_from_demux1[3]),
.payload_out_d4(payload_from_demux1[4]),
.payload_out_d5(payload_from_demux1[5]),
.payload_out_d6(payload_from_demux1[6]),
.payload_out_d7(payload_from_demux1[7])
);
//
demux_in v2 (
.payload_in_d(payload_from_input[2]),
.addr_sel_d(addr_from_input[2]),
.payload_out_d0(payload_from_demux2[0]),
.payload_out_d1(payload_from_demux2[1]),
.payload_out_d2(payload_from_demux2[2]),
.payload_out_d3(payload_from_demux2[3]),
.payload_out_d4(payload_from_demux2[4]),
.payload_out_d5(payload_from_demux2[5]),
.payload_out_d6(payload_from_demux2[6]),
.payload_out_d7(payload_from_demux2[7])
);
//
demux_in v3 (
.payload_in_d(payload_from_input[3]),
.addr_sel_d(addr_from_input[3]),
.payload_out_d0(payload_from_demux3[0]),
.payload_out_d1(payload_from_demux3[1]),
.payload_out_d2(payload_from_demux3[2]),
.payload_out_d3(payload_from_demux3[3]),
.payload_out_d4(payload_from_demux3[4]),
.payload_out_d5(payload_from_demux3[5]),
.payload_out_d6(payload_from_demux3[6]),
.payload_out_d7(payload_from_demux3[7])
);
//
demux_in v4 (
.payload_in_d(payload_from_input[4]),
.addr_sel_d(addr_from_input[4]),
.payload_out_d0(payload_from_demux4[0]),
.payload_out_d1(payload_from_demux4[1]),
.payload_out_d2(payload_from_demux4[2]),
.payload_out_d3(payload_from_demux4[3]),
.payload_out_d4(payload_from_demux4[4]),
.payload_out_d5(payload_from_demux4[5]),
.payload_out_d6(payload_from_demux4[6]),
.payload_out_d7(payload_from_demux4[7])
);
//
demux_in v5 (
.payload_in_d(payload_from_input[5]),
.addr_sel_d(addr_from_input[5]),
.payload_out_d0(payload_from_demux5[0]),
.payload_out_d1(payload_from_demux5[1]),
.payload_out_d2(payload_from_demux5[2]),
.payload_out_d3(payload_from_demux5[3]),
.payload_out_d4(payload_from_demux5[4]),
.payload_out_d5(payload_from_demux5[5]),
.payload_out_d6(payload_from_demux5[6]),
.payload_out_d7(payload_from_demux5[7])
);
//
demux_in v6 (
.payload_in_d(payload_from_input[6]),
.addr_sel_d(addr_from_input[6]),
.payload_out_d0(payload_from_demux6[0]),
.payload_out_d1(payload_from_demux6[1]),
.payload_out_d2(payload_from_demux6[2]),
.payload_out_d3(payload_from_demux6[3]),
.payload_out_d4(payload_from_demux6[4]),
.payload_out_d5(payload_from_demux6[5]),
.payload_out_d6(payload_from_demux6[6]),
.payload_out_d7(payload_from_demux6[7])
);
//
demux_in v7 (
.payload_in_d(payload_from_input[7]),
.addr_sel_d(addr_from_input[7]),
.payload_out_d0(payload_from_demux7[0]),
.payload_out_d1(payload_from_demux7[1]),
.payload_out_d2(payload_from_demux7[2]),
.payload_out_d3(payload_from_demux7[3]),
.payload_out_d4(payload_from_demux7[4]),
.payload_out_d5(payload_from_demux7[5]),
.payload_out_d6(payload_from_demux7[6]),
.payload_out_d7(payload_from_demux7[7])
);
//
//-----------------------------------------------
// Switch Fabric (MUXs), 8-to-1, from demux.v to fifo.v Ports
//
//
wire [31:0] payload_from_mux [7:0]; 
//
mux_out w0 (
.payload_in_m0(payload_from_demux0[0]),
.payload_in_m1(payload_from_demux1[0]),
.payload_in_m2(payload_from_demux2[0]),
.payload_in_m3(payload_from_demux3[0]),
.payload_in_m4(payload_from_demux4[0]),
.payload_in_m5(payload_from_demux5[0]),
.payload_in_m6(payload_from_demux6[0]),
.payload_in_m7(payload_from_demux7[0]),
.arb_sel_m(grant_index_from_arb[0]),
.payload_from_m(payload_from_mux[0])
);
//
mux_out w1 (
.payload_in_m0(payload_from_demux0[1]),
.payload_in_m1(payload_from_demux1[1]),
.payload_in_m2(payload_from_demux2[1]),
.payload_in_m3(payload_from_demux3[1]),
.payload_in_m4(payload_from_demux4[1]),
.payload_in_m5(payload_from_demux5[1]),
.payload_in_m6(payload_from_demux6[1]),
.payload_in_m7(payload_from_demux7[1]),
.arb_sel_m(grant_index_from_arb[1]),
.payload_from_m(payload_from_mux[1])
);
//
mux_out w2 (
.payload_in_m0(payload_from_demux0[2]),
.payload_in_m1(payload_from_demux1[2]),
.payload_in_m2(payload_from_demux2[2]),
.payload_in_m3(payload_from_demux3[2]),
.payload_in_m4(payload_from_demux4[2]),
.payload_in_m5(payload_from_demux5[2]),
.payload_in_m6(payload_from_demux6[2]),
.payload_in_m7(payload_from_demux7[2]),
.arb_sel_m(grant_index_from_arb[2]),
.payload_from_m(payload_from_mux[2])
);
//
mux_out w3 (
.payload_in_m0(payload_from_demux0[3]),
.payload_in_m1(payload_from_demux1[3]),
.payload_in_m2(payload_from_demux2[3]),
.payload_in_m3(payload_from_demux3[3]),
.payload_in_m4(payload_from_demux4[3]),
.payload_in_m5(payload_from_demux5[3]),
.payload_in_m6(payload_from_demux6[3]),
.payload_in_m7(payload_from_demux7[3]),
.arb_sel_m(grant_index_from_arb[3]),
.payload_from_m(payload_from_mux[3])
);
//
mux_out w4 (
.payload_in_m0(payload_from_demux0[4]),
.payload_in_m1(payload_from_demux1[4]),
.payload_in_m2(payload_from_demux2[4]),
.payload_in_m3(payload_from_demux3[4]),
.payload_in_m4(payload_from_demux4[4]),
.payload_in_m5(payload_from_demux5[4]),
.payload_in_m6(payload_from_demux6[4]),
.payload_in_m7(payload_from_demux7[4]),
.arb_sel_m(grant_index_from_arb[4]),
.payload_from_m(payload_from_mux[4])
);
//
mux_out w5 (
.payload_in_m0(payload_from_demux0[5]),
.payload_in_m1(payload_from_demux1[5]),
.payload_in_m2(payload_from_demux2[5]),
.payload_in_m3(payload_from_demux3[5]),
.payload_in_m4(payload_from_demux4[5]),
.payload_in_m5(payload_from_demux5[5]),
.payload_in_m6(payload_from_demux6[5]),
.payload_in_m7(payload_from_demux7[5]),
.arb_sel_m(grant_index_from_arb[5]),
.payload_from_m(payload_from_mux[5])
);
//
mux_out w6 (
.payload_in_m0(payload_from_demux0[6]),
.payload_in_m1(payload_from_demux1[6]),
.payload_in_m2(payload_from_demux2[6]),
.payload_in_m3(payload_from_demux3[6]),
.payload_in_m4(payload_from_demux4[6]),
.payload_in_m5(payload_from_demux5[6]),
.payload_in_m6(payload_from_demux6[6]),
.payload_in_m7(payload_from_demux7[6]),
.arb_sel_m(grant_index_from_arb[6]),
.payload_from_m(payload_from_mux[6])
);
//
mux_out w7 (
.payload_in_m0(payload_from_demux0[7]),
.payload_in_m1(payload_from_demux1[7]),
.payload_in_m2(payload_from_demux2[7]),
.payload_in_m3(payload_from_demux3[7]),
.payload_in_m4(payload_from_demux4[7]),
.payload_in_m5(payload_from_demux5[7]),
.payload_in_m6(payload_from_demux6[7]),
.payload_in_m7(payload_from_demux7[7]),
.arb_sel_m(grant_index_from_arb[7]),
.payload_from_m(payload_from_mux[7])
);
//
//-----------------------------------------------
// Switch Fabric (ORs), 8-to-1, from demux.v to fifo.v Ports
//
//
/*
wire [31:0] payload_from_or [7:0];
//
eight_or or0 (.in0(payload_from_demux0[0]),.in1(payload_from_demux1[0]),.in2(payload_from_demux2[0]),.in3(payload_from_demux3[0]),.in4(payload_from_demux4[0]),.in5(payload_from_demux5[0]),.in6(payload_from_demux6[0]),.in7(payload_from_demux7[0]),.or_out(payload_from_or[0]));
eight_or or1 (.in0(payload_from_demux0[1]),.in1(payload_from_demux1[1]),.in2(payload_from_demux2[1]),.in3(payload_from_demux3[1]),.in4(payload_from_demux4[1]),.in5(payload_from_demux5[1]),.in6(payload_from_demux6[1]),.in7(payload_from_demux7[1]),.or_out(payload_from_or[1]));
eight_or or2 (.in0(payload_from_demux0[2]),.in1(payload_from_demux1[2]),.in2(payload_from_demux2[2]),.in3(payload_from_demux3[2]),.in4(payload_from_demux4[2]),.in5(payload_from_demux5[2]),.in6(payload_from_demux6[2]),.in7(payload_from_demux7[2]),.or_out(payload_from_or[2]));
eight_or or3 (.in0(payload_from_demux0[3]),.in1(payload_from_demux1[3]),.in2(payload_from_demux2[3]),.in3(payload_from_demux3[3]),.in4(payload_from_demux4[3]),.in5(payload_from_demux5[3]),.in6(payload_from_demux6[3]),.in7(payload_from_demux7[3]),.or_out(payload_from_or[3]));
eight_or or4 (.in0(payload_from_demux0[4]),.in1(payload_from_demux1[4]),.in2(payload_from_demux2[4]),.in3(payload_from_demux3[4]),.in4(payload_from_demux4[4]),.in5(payload_from_demux5[4]),.in6(payload_from_demux6[4]),.in7(payload_from_demux7[4]),.or_out(payload_from_or[4]));
eight_or or5 (.in0(payload_from_demux0[5]),.in1(payload_from_demux1[5]),.in2(payload_from_demux2[5]),.in3(payload_from_demux3[5]),.in4(payload_from_demux4[5]),.in5(payload_from_demux5[5]),.in6(payload_from_demux6[5]),.in7(payload_from_demux7[5]),.or_out(payload_from_or[5]));
eight_or or6 (.in0(payload_from_demux0[6]),.in1(payload_from_demux1[6]),.in2(payload_from_demux2[6]),.in3(payload_from_demux3[6]),.in4(payload_from_demux4[6]),.in5(payload_from_demux5[6]),.in6(payload_from_demux6[6]),.in7(payload_from_demux7[6]),.or_out(payload_from_or[6]));
eight_or or7 (.in0(payload_from_demux0[7]),.in1(payload_from_demux1[7]),.in2(payload_from_demux2[7]),.in3(payload_from_demux3[7]),.in4(payload_from_demux4[7]),.in5(payload_from_demux5[7]),.in6(payload_from_demux6[7]),.in7(payload_from_demux7[7]),.or_out(payload_from_or[7]));
*/
//
//
//-----------------------------------------------
// fifo.v Instantiation, Note for eight_or.v replace 'payload_from_mux' with 'payload_from_or'
//
//
//
wire [31:0] payload_from_fifo [7:0]; //fifo.v payload to output.v
wire empty_from_fifo [7:0]; //8x 1-bit bus array
wire pop_from_output [7:0]; //8x 1-bit bus array from output.v
//
genvar j; 
generate 
	for (j=0;j<8;j=j+1) begin :loop
		fifo x (full,empty_from_fifo[j],payload_from_fifo[j],payload_from_mux[j],
		clock,reset_n,granted_from_arb[j],pop_from_output[j]); 
	end //end for
endgenerate
//
//-----------------------------------------------
// output.v Instantiation
//
//
//wire [31:0] dout_output [7:0]; //output.v final payload
//
genvar k; 
generate 
	for (k=0;k<8;k=k+1) begin :circle
		portout y (payload_from_fifo[k],empty_from_fifo[k],clock,reset_n,valido_n[k],frameo_n[k],
		dout[k],pop_from_output[k]); 
	end //end for
endgenerate
//
//
//
endmodule //end router
