`timescale 1 ns/10 ps

`celldefine
module AN2 (A, B, Z);
  input A, B;
  output Z;
  and (Z, A, B);
endmodule
`endcelldefine

`celldefine
module OR2 (A, B, Z);
  input A, B;
  output Z;
  or (Z, A, B);
endmodule
`endcelldefine

`celldefine
module IV (A, Z);
  input A;
  output Z;
  not (Z, A);
endmodule
`endcelldefine

`celldefine
module IVP (A, Z);
  input A;
  output Z;
  not (Z, A);
endmodule
`endcelldefine

`celldefine
module IVA (A, Z);
  input A;
  output Z;
  not (Z, A);
endmodule
`endcelldefine

`celldefine
module IVAP (A, Z);
  input A;
  output Z;
  not (Z, A);
endmodule
`endcelldefine

`celldefine
module IVDA (A, Y, Z);
  input A;
  output Y, Z;
  not (Y, A);
  not (Z, Y);
endmodule
`endcelldefine

`celldefine
module IVDAP (A, Y, Z);
  input A;
  output Y, Z;
  not (Y, A);
  not (Z, Y);
endmodule
`endcelldefine

`celldefine
module B5I (A, Z);
  input A;
  output Z;
  not (Z, A);
endmodule
`endcelldefine

`celldefine
module B5IP (A, Z);
  input A;
  output Z;
  not (Z, A);
endmodule
`endcelldefine

`celldefine
module B4I (A, Z);
  input A;
  output Z;
  not (Z, A);
endmodule
`endcelldefine

`celldefine
module B4IP (A, Z);
  input A;
  output Z;
  not (Z, A);
endmodule
`endcelldefine

`celldefine
module ND2 (A, B, Z);
  input A, B;
  output Z;
  nand (Z, A, B);
endmodule
`endcelldefine

`celldefine
module ND2P (A, B, Z);
  input A, B;
  output Z;
  nand (Z, A, B);
endmodule
`endcelldefine

`celldefine
module NR2 (A, B, Z);
  input A, B;
  output Z;
  nor (Z, A, B);
endmodule
`endcelldefine

`celldefine
module NR2P (A, B, Z);
  input A, B;
  output Z;
  nor (Z, A, B);
endmodule
`endcelldefine

`celldefine
module EN (A, B, Z);
  input A, B;
  output Z;
  xnor (Z, A, B);
endmodule
`endcelldefine

`celldefine
module EO (A, B, Z);
  input A, B;
  output Z;
  xor (Z, A, B);
endmodule
`endcelldefine

`celldefine
module ND3 (A, B, C, Z);
  input A, B, C;
  output Z;
  nand (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module ND3P (A, B, C, Z);
  input A, B, C;
  output Z;
  nand (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module NR3 (A, B, C, Z);
  input A, B, C;
  output Z;
  nor (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module NR3P (A, B, C, Z);
  input A, B, C;
  output Z;
  nor (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module AN3 (A, B, C, Z);
  input A, B, C;
  output Z;
  and (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module OR3 (A, B, C, Z);
  input A, B, C;
  output Z;
  or (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module ND4 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  nand (Z, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module ND4P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  nand (Z, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NR4 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  nor (Z, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module ND5 (A, B, C, D, E, Z);
  input A, B, C, D, E;
  output Z;
  nand (Z, A, B, C, D, E);
endmodule
`endcelldefine

`celldefine
module AO6 (A, B, C, Z);
  input A, B, C;
  output Z;
  //function : "((A B)+C)'";
  and (z1, A, B);
  nor (Z, z1, C);
endmodule
`endcelldefine

`celldefine
module AO6P (A, B, C, Z);
  input A, B, C;
  output Z;
  //function : "((A B)+C)'";
  and (z1, A, B);
  nor (Z, z1, C);
endmodule
`endcelldefine

`celldefine
module AO7 (A, B, C, Z);
  input A, B, C;
  output Z;
  //function : "((A+B)C)'";
  or (z1, A, B);
  nand (Z, z1, C);
endmodule
`endcelldefine

`celldefine
module AO7P (A, B, C, Z);
  input A, B, C;
  output Z;
  //function : "((A+B)C)'";
  or (z1, A, B);
  nand (Z, z1, C);
endmodule
`endcelldefine

`celldefine
module AO2 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "(A B+C D)'";
  and (z1, A, B);
  and (z2, C, D);
  nor (Z, z1, z2);
endmodule
`endcelldefine

`celldefine
module AO2P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "(A B+C D)'";
  and (z1, A, B);
  and (z2, C, D);
  nor (Z, z1, z2);
endmodule
`endcelldefine

`celldefine
module AO4 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A+B)(C+D))'";
  or (z1, A, B);
  or (z2, C, D);
  nand (Z, z1, z2);
endmodule
`endcelldefine

`celldefine
module AO4P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A+B)(C+D))'";
  or (z1, A, B);
  or (z2, C, D);
  nand (Z, z1, z2);
endmodule
`endcelldefine

`celldefine
module AO1 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A B)+C+D)'";
  and (z1, A, B);
  nor (Z, z1, C, D);
endmodule
`endcelldefine

`celldefine
module AO3 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A+B)C D)'";
  or (z1, A, B);
  nand (Z, z1, C, D);
endmodule
`endcelldefine

`celldefine
module AO11 (A, B, C, D, E, F, Z);
  input A, B, C, D, E, F;
  output Z;
  //function : "(A B+C D+E F)'";
  and (z1, A, B);
  and (z2, C, D);
  and (z3, E, F);
  nor (Z, z1, z2, z3);
endmodule
`endcelldefine

`celldefine
module AN2P (A, B, Z);
  input A, B;
  output Z;
  and (Z, A, B);
endmodule
`endcelldefine

`celldefine
module AN3P (A, B, C, Z);
  input A, B, C;
  output Z;
  and (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module AN4 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  and (Z, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module AN4P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  and (Z, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module OR2P (A, B, Z);
  input A, B;
  output Z;
  or (Z, A, B);
endmodule
`endcelldefine

`celldefine
module OR3P (A, B, C, Z);
  input A, B, C;
  output Z;
  or (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module OR4 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  or (Z, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module OR4P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  or (Z, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module MUX21H (A, B, S, Z);
  input A, B, S;
  output Z;
  udp_mux21 (Z, A, B, S);
endmodule
`endcelldefine

primitive udp_mux21 (Z, A, B, S);
  input A, B, S;
  output Z;
  //function : "(S'A+S B)";
  table
//  A  B  S  : Z
    0  ?  0  : 0;
    1  ?  0  : 1;
    ?  0  1  : 0;
    ?  1  1  : 1;
    0  0  x  : 0;
    1  1  x  : 1;
  endtable
endprimitive

`celldefine
module MUX41 (D0, D1, D2, D3, A, B, Z);
  input D0, D1, D2, D3, A, B;
  output Z;
  udp_mux41 (Z, D0, D1, D2, D3, A, B);
endmodule
`endcelldefine

primitive udp_mux41 (Z, D0, D1, D2, D3, A, B);
  input D0, D1, D2, D3, A, B;
  output Z;
  //function : "((D0 A'B')+(D1 A B')+(D2 A'B)+(D3 A B))";
  table
//  D0 D1 D2 D3 A  B  : Z
    0  ?  ?  ?  0  0  : 0;
    1  ?  ?  ?  0  0  : 1;
    ?  0  ?  ?  1  0  : 0;
    ?  1  ?  ?  1  0  : 1;
    ?  ?  0  ?  0  1  : 0;
    ?  ?  1  ?  0  1  : 1;
    ?  ?  ?  0  1  1  : 0;
    ?  ?  ?  1  1  1  : 1;
    0  0  ?  ?  x  0  : 0;
    1  1  ?  ?  x  0  : 1;
    ?  ?  0  0  x  1  : 0;
    ?  ?  1  1  x  1  : 1;
    0  ?  0  ?  0  x  : 0;
    1  ?  1  ?  0  x  : 1;
    ?  0  ?  0  1  x  : 0;
    ?  1  ?  1  1  x  : 1;
    0  0  0  0  x  x  : 0;
    1  1  1  1  x  x  : 1;
  endtable
endprimitive

`celldefine
module NR5 (A, B, C, D, E, Z);
  input A, B, C, D, E;
  output Z;
  nor (Z, A, B, C, D, E);
endmodule
`endcelldefine

`celldefine
module ND6 (A, B, C, D, E, F, Z);
  input A, B, C, D, E, F;
  output Z;
  nand (Z, A, B, C, D, E, F);
endmodule
`endcelldefine

`celldefine
module NR6 (A, B, C, D, E, F, Z);
  input A, B, C, D, E, F;
  output Z;
  nor (Z, A, B, C, D, E, F);
endmodule
`endcelldefine

`celldefine
module ND8 (A, B, C, D, E, F, G, H, Z);
  input A, B, C, D, E, F, G, H;
  output Z;
  nand (Z, A, B, C, D, E, F, G, H);
endmodule
`endcelldefine

`celldefine
module NR8 (A, B, C, D, E, F, G, H, Z);
  input A, B, C, D, E, F, G, H;
  output Z;
  nor (Z, A, B, C, D, E, F, G, H);
endmodule
`endcelldefine

`celldefine
module EON1 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A+B)((C D)'))'";
  or (z1, A, B);
  nand (z2, C, D);
  nand (Z, z1, z2);
endmodule
`endcelldefine

`celldefine
module EO1 (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A B)+((C+D)'))'";
  and (z1, A, B);
  nor (z2, C, D);
  nor (Z, z1, z2);
endmodule
`endcelldefine

`celldefine
module ND5P (A, B, C, D, E, Z);
  input A, B, C, D, E;
  output Z;
  nand (Z, A, B, C, D, E);
endmodule
`endcelldefine

`celldefine
module NR5P (A, B, C, D, E, Z);
  input A, B, C, D, E;
  output Z;
  nor (Z, A, B, C, D, E);
endmodule
`endcelldefine

`celldefine
module ND6P (A, B, C, D, E, F, Z);
  input A, B, C, D, E, F;
  output Z;
  nand (Z, A, B, C, D, E, F);
endmodule
`endcelldefine

`celldefine
module NR6P (A, B, C, D, E, F, Z);
  input A, B, C, D, E, F;
  output Z;
  nor (Z, A, B, C, D, E, F);
endmodule
`endcelldefine

`celldefine
module ND8P (A, B, C, D, E, F, G, H, Z);
  input A, B, C, D, E, F, G, H;
  output Z;
  nand (Z, A, B, C, D, E, F, G, H);
endmodule
`endcelldefine

`celldefine
module NR8P (A, B, C, D, E, F, G, H, Z);
  input A, B, C, D, E, F, G, H;
  output Z;
  nor (Z, A, B, C, D, E, F, G, H);
endmodule
`endcelldefine

`celldefine
module NR16 (I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,Z);
  input I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;
  output Z;
  nor (Z,I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15);
endmodule
`endcelldefine

`celldefine
module NR16P (I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,Z);
  input I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;
  output Z;
  nor (Z,I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15);
endmodule
`endcelldefine

`celldefine
module ENP (A, B, Z);
  input A, B;
  output Z;
  xnor (Z, A, B);
endmodule
`endcelldefine

`celldefine
module EOP (A, B, Z);
  input A, B;
  output Z;
  xor (Z, A, B);
endmodule
`endcelldefine

`celldefine
module EO1P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A B)+((C+D)'))'";
  and (z1, A, B);
  nor (z2, C, D);
  nor (Z, z1, z2);
endmodule
`endcelldefine

`celldefine
module EON1P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A+B)((C D)'))'";
  or (z1, A, B);
  nand (z2, C, D);
  nand (Z, z1, z2);
endmodule
`endcelldefine

`celldefine
module AO1P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A B)+C+D)'";
  and (z1, A, B);
  nor (Z, z1, C, D);
endmodule
`endcelldefine

`celldefine
module AO3P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  //function : "((A+B)C D)'";
  or (z1, A, B);
  nand (Z, z1, C, D);
endmodule
`endcelldefine

`celldefine
module AO11P (A, B, C, D, E, F, Z);
  input A, B, C, D, E, F;
  output Z;
  //function : "(A B+C D+E F)'";
  and (z1, A, B);
  and (z2, C, D);
  and (z3, E, F);
  nor (Z, z1, z2, z3);
endmodule
`endcelldefine

`celldefine
module MUX21HP (A, B, S, Z);
  input A, B, S;
  output Z;
  udp_mux21 (Z, A, B, S);
endmodule
`endcelldefine

`celldefine
module MUX21L (A, B, S, Z);
  input A, B, S;
  output Z;
  udp_mux21 (z1, A, B, S);
  not (Z, z1);
endmodule
`endcelldefine

`celldefine
module MUX21LP (A, B, S, Z);
  input A, B, S;
  output Z;
  udp_mux21 (z1, A, B, S);
  not (Z, z1);
endmodule
`endcelldefine

`celldefine
module MUX31L (D0, D1, D2, A, B, Z);
  input D0, D1, D2, A, B;
  output Z;
  udp_mux31 (z1, D0, D1, D2, A, B);
  not (Z, z1);
endmodule
`endcelldefine

primitive udp_mux31 (Z, D0, D1, D2, A, B);
  input D0, D1, D2, A, B;
  output Z;
  //function : "((D0'A'B')+(D1'A B')+(D2'B))";
  table
//  D0 D1 D2 A  B  : Z
    0  ?  ?  0  0  : 0;
    1  ?  ?  0  0  : 1;
    ?  0  ?  1  0  : 0;
    ?  1  ?  1  0  : 1;
    ?  ?  0  ?  1  : 0;
    ?  ?  1  ?  1  : 1;
    0  0  ?  x  0  : 0;
    1  1  ?  x  0  : 1;
    0  ?  0  0  x  : 0;
    1  ?  1  0  x  : 1;
    ?  0  0  1  x  : 0;
    ?  1  1  1  x  : 1;
    0  0  0  x  x  : 0;
    1  1  1  x  x  : 1;
  endtable
endprimitive

`celldefine
module MUX31LP (D0, D1, D2, A, B, Z);
  input D0, D1, D2, A, B;
  output Z;
  udp_mux31 (z1, D0, D1, D2, A, B);
  not (Z, z1);
endmodule
`endcelldefine

`celldefine
module MUX41P (D0, D1, D2, D3, A, B, Z);
  input D0, D1, D2, D3, A, B;
  output Z;
  udp_mux41 (Z, D0, D1, D2, D3, A, B);
endmodule
`endcelldefine

`celldefine
module MUX21LA (SN, A, S, B, Z);
  input SN, A, S, B;
  output Z;
  udp_mux_onehot (Z, SN, A, S, B);
endmodule
`endcelldefine

primitive udp_mux_onehot (Z, SN, A, S, B);
  input SN, A, S, B;
  output Z;
  //function : "( (A S' SN) + (B S SN') )'";
  table
//  SN A  S  B  : Z
    1  0  0  ?  : 1;
    1  1  0  ?  : 0;
    0  ?  1  0  : 1;
    0  ?  1  1  : 0;
  endtable
endprimitive

`celldefine
module MUX51H (D0, D1, D2, D3, D4, A, B, C, Z);
  input D0, D1, D2, D3, D4, A, B, C;
  output Z;
  udp_mux51 (Z, D0, D1, D2, D3, D4, A, B, C);
endmodule
`endcelldefine

primitive udp_mux51 (Z, D0, D1, D2, D3, D4, A, B, C);
  input D0, D1, D2, D3, D4, A, B, C;
  output Z;
  //function : "((D0 A'B'C')+(D1 A B'C')+(D2 A'B C')+(D3 A B C')+(D4 C))";
  table
//  D0 D1 D2 D3 D4 A  B  C  : Z
    0  ?  ?  ?  ?  0  0  0  : 0;
    1  ?  ?  ?  ?  0  0  0  : 1;
    ?  0  ?  ?  ?  1  0  0  : 0;
    ?  1  ?  ?  ?  1  0  0  : 1;
    ?  ?  0  ?  ?  0  1  0  : 0;
    ?  ?  1  ?  ?  0  1  0  : 1;
    ?  ?  ?  0  ?  1  1  0  : 0;
    ?  ?  ?  1  ?  1  1  0  : 1;
    0  0  ?  ?  ?  x  0  0  : 0;
    1  1  ?  ?  ?  x  0  0  : 1;
    ?  ?  0  0  ?  x  1  0  : 0;
    ?  ?  1  1  ?  x  1  0  : 1;
    0  ?  0  ?  ?  0  x  0  : 0;
    1  ?  1  ?  ?  0  x  0  : 1;
    ?  0  ?  0  ?  1  x  0  : 0;
    ?  1  ?  1  ?  1  x  0  : 1;
    0  0  0  0  ?  x  x  0  : 0;
    1  1  1  1  ?  x  x  0  : 1;
    ?  ?  ?  ?  0  ?  ?  1  : 0;
    ?  ?  ?  ?  1  ?  ?  1  : 1;
    0  0  ?  ?  0  x  0  x  : 0;
    1  1  ?  ?  1  x  0  x  : 1;
    ?  ?  0  0  0  x  1  x  : 0;
    ?  ?  1  1  1  x  1  x  : 1;
    0  ?  0  ?  0  0  x  x  : 0;
    1  ?  1  ?  1  0  x  x  : 1;
    ?  0  ?  0  0  1  x  x  : 0;
    ?  1  ?  1  1  1  x  x  : 1;
    0  0  0  0  0  x  x  x  : 0;
    1  1  1  1  1  x  x  x  : 1;
  endtable
endprimitive

`celldefine
module MUX51HP (D0, D1, D2, D3, D4, A, B, C, Z);
  input D0, D1, D2, D3, D4, A, B, C;
  output Z;
  udp_mux51 (Z, D0, D1, D2, D3, D4, A, B, C);
endmodule
`endcelldefine

`celldefine
module MUX81 (D0, D1, D2, D3, D4, D5, D6, D7, A, B, C, Z);
  input D0, D1, D2, D3, D4, D5, D6, D7, A, B, C;
  output Z;
  //function : "((D0 A'B'C')+(D1 A B'C')+(D2 A'B C')+(D3 A B C')+
  //  (D4 A'B'C)+(D5 A B'C)+(D6 A'B C)+(D7 A B C))";
  udp_mux41 (z1, D0, D1, D2, D3, A, B);
  udp_mux41 (z2, D4, D5, D6, D7, A, B);
  udp_mux21 (Z, z1, z2, C);
endmodule
`endcelldefine

`celldefine
module MUX81P (D0, D1, D2, D3, D4, D5, D6, D7, A, B, C, Z);
  input D0, D1, D2, D3, D4, D5, D6, D7, A, B, C;
  output Z;
  //function : "((D0 A'B'C')+(D1 A B'C')+(D2 A'B C')+(D3 A B C')+
  //  (D4 A'B'C)+(D5 A B'C)+(D6 A'B C)+(D7 A B C))";
  udp_mux41 (z1, D0, D1, D2, D3, A, B);
  udp_mux41 (z2, D4, D5, D6, D7, A, B);
  udp_mux21 (Z, z1, z2, C);
endmodule
`endcelldefine

`celldefine
module AO5 (A, B, C, Z);
  input A, B, C;
  output Z;
  //function : "((A B)+(A C)+(B C))'";
  and (z1, A, B);
  and (z2, A, C);
  and (z3, B, C);
  nor (Z, z1, z2, z3);
endmodule
`endcelldefine

`celldefine
module AO5P (A, B, C, Z);
  input A, B, C;
  output Z;
  //function : "((A B)+(A C)+(B C))'";
  and (z1, A, B);
  and (z2, A, C);
  and (z3, B, C);
  nor (Z, z1, z2, z3);
endmodule
`endcelldefine

`celldefine
module EN3 (A, B, C, Z);
  input A, B, C;
  output Z;
  xnor (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module EN3P (A, B, C, Z);
  input A, B, C;
  output Z;
  xnor (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module EO3 (A, B, C, Z);
  input A, B, C;
  output Z;
  xor (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module EO3P (A, B, C, Z);
  input A, B, C;
  output Z;
  xor (Z, A, B, C);
endmodule
`endcelldefine

`celldefine
module AO12 (A, B, C, D, E, F, G, H, Z);
  input A, B, C, D, E, F, G, H;
  output Z;
  //function : "((A+B)(C+D)(E+F)(G+H))'";
  or (z1, A, B);
  or (z2, C, D);
  or (z3, E, F);
  or (z4, G, H);
  nand (Z, z1, z2, z3, z4);
endmodule
`endcelldefine

`celldefine
module AO12P (A, B, C, D, E, F, G, H, Z);
  input A, B, C, D, E, F, G, H;
  output Z;
  //function : "((A+B)(C+D)(E+F)(G+H))'";
  or (z1, A, B);
  or (z2, C, D);
  or (z3, E, F);
  or (z4, G, H);
  nand (Z, z1, z2, z3, z4);
endmodule
`endcelldefine

`celldefine
module B1I (A, Z);
  input A;
  output Z;
  buf (Z, A);
endmodule
`endcelldefine

`celldefine
module MUX21LAP (SN, A, S, B, Z);
  input SN, A, S, B;
  output Z;
  udp_mux_onehot (Z, SN, A, S, B);
endmodule
`endcelldefine

`celldefine
module NR4P (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  nor (Z, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module FD1 (D, CP, Q, QN);
  input D, CP;
  output Q, QN;
  supply1 CD, SD;
  udp_dff (z, D, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

primitive udp_dff (Q, D, CP, CD, SD);
  input D, CP, CD, SD;
  output Q;
  reg Q;
  table
//  D    CP   CD   SD   : q0 : Q
    *    b    ?    ?    : ?  : -;
    0    r    ?    1    : ?  : 0;
    1    r    1    ?    : ?  : 1;
    0    *    ?    1    : 0  : 0;
    1    *    1    ?    : 1  : 1;
    ?    f    ?    ?    : ?  : -;
    ?    ?    0    ?    : ?  : 0;
    ?    b    *    1    : 0  : 0;
    0    x    *    1    : 0  : 0;
    ?    ?    1    0    : ?  : 1;
    ?    b    1    *    : 1  : 1;
    0    x    1    *    : 1  : 1;
  endtable
endprimitive

`celldefine
module FD1P (D, CP, Q, QN);
  input D, CP;
  output Q, QN;
  supply1 CD, SD;
  udp_dff (z, D, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD1S (D, CP, TI, TE, Q, QN);
  input D, CP, TI, TE;
  output Q, QN;
  supply1 CD, SD;
  udp_mux21 (d1, D, TI, TE);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD1SP (D, CP, TI, TE, Q, QN);
  input D, CP, TI, TE;
  output Q, QN;
  supply1 CD, SD;
  udp_mux21 (d1, D, TI, TE);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD2 (D, CP, CD, Q, QN);
  input D, CP, CD;
  output Q, QN;
  supply1 SD;
  udp_dff (z, D, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD2P (D, CP, CD, Q, QN);
  input D, CP, CD;
  output Q, QN;
  supply1 SD;
  udp_dff (z, D, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD2S (D, CP, CD, TI, TE, Q, QN);
  input D, CP, CD, TI, TE;
  output Q, QN;
  supply1 SD;
  udp_mux21 (d1, D, TI, TE);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD2SP (D, CP, CD, TI, TE, Q, QN);
  input D, CP, CD, TI, TE;
  output Q, QN;
  supply1 SD;
  udp_mux21 (d1, D, TI, TE);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD3 (D, CP, CD, SD, Q, QN);
  input D, CP, CD, SD;
  output Q, QN;
  udp_dff (z, D, CP, CD, SD);
  buf #0.01 (Q, z);
  not (q1, z);
  and #0.01 (QN, q1, SD);
endmodule
`endcelldefine

`celldefine
module FD3P (D, CP, CD, SD, Q, QN);
  input D, CP, CD, SD;
  output Q, QN;
  udp_dff (z, D, CP, CD, SD);
  buf #0.01 (Q, z);
  not (q1, z);
  and #0.01 (QN, q1, SD);
endmodule
`endcelldefine

`celldefine
module FD3S (D, CP, CD, SD, TI, TE, Q, QN);
  input D, CP, CD, SD, TI, TE;
  output Q, QN;
  udp_mux21 (d1, D, TI, TE);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not (q1, z);
  and #0.01 (QN, q1, SD);
endmodule
`endcelldefine

`celldefine
module FD3SP (D, CP, CD, SD, TI, TE, Q, QN);
  input D, CP, CD, SD, TI, TE;
  output Q, QN;
  udp_mux21 (d1, D, TI, TE);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not (q1, z);
  and #0.01 (QN, q1, SD);
endmodule
`endcelldefine

`celldefine
module FD4 (D, CP, SD, Q, QN);
  input D, CP, SD;
  output Q, QN;
  supply1 CD;
  udp_dff (z, D, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD4P (D, CP, SD, Q, QN);
  input D, CP, SD;
  output Q, QN;
  supply1 CD;
  udp_dff (z, D, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD4S (D, CP, SD, TI, TE, Q, QN);
  input D, CP, SD, TI, TE;
  output Q, QN;
  supply1 CD;
  udp_mux21 (d1, D, TI, TE);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FD4SP (D, CP, SD, TI, TE, Q, QN);
  input D, CP, SD, TI, TE;
  output Q, QN;
  supply1 CD;
  udp_mux21 (d1, D, TI, TE);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FJK1 (J, K, CP, Q, QN);
  input J, K, CP;
  output Q, QN;
  supply1 CD, SD;
  udp_jkqd (d1, J, K, Q);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

primitive udp_jkqd (D, J, K, Q);
  input J, K, Q;
  output D;
  //next_state : "(J' K' IQ) + (J K') + (J K IQ') ";
  table
//  J  K  Q  : D
    0  ?  0  : 0;
    ?  0  1  : 1;
    0  1  ?  : 0;
    1  0  ?  : 1;
    1  ?  0  : 1;
    ?  1  1  : 0;
  endtable
endprimitive

`celldefine
module FJK1P (J, K, CP, Q, QN);
  input J, K, CP;
  output Q, QN;
  supply1 CD, SD;
  udp_jkqd (d1, J, K, Q);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FJK1S (J, K, CP, TI, TE, Q, QN);
  input J, K, CP, TI, TE;
  output Q, QN;
  supply1 CD, SD;
  udp_jkqd (d1, J, K, Q);
  udp_mux21 (d2, d1, TI, TE);
  udp_dff (z, d2, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FJK1SP (J, K, CP, TI, TE, Q, QN);
  input J, K, CP, TI, TE;
  output Q, QN;
  supply1 CD, SD;
  udp_jkqd (d1, J, K, Q);
  udp_mux21 (d2, d1, TI, TE);
  udp_dff (z, d2, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FJK2 (J, K, CP, CD, Q, QN);
  input J, K, CP, CD;
  output Q, QN;
  supply1 SD;
  udp_jkqd (d1, J, K, Q);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FJK2P (J, K, CP, CD, Q, QN);
  input J, K, CP, CD;
  output Q, QN;
  supply1 SD;
  udp_jkqd (d1, J, K, Q);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FJK2S (J, K, CP, CD, TI, TE, Q, QN);
  input J, K, CP, CD, TI, TE;
  output Q, QN;
  supply1 SD;
  udp_jkqd (d1, J, K, Q);
  udp_mux21 (d2, d1, TI, TE);
  udp_dff (z, d2, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FJK2SP (J, K, CP, CD, TI, TE, Q, QN);
  input J, K, CP, CD, TI, TE;
  output Q, QN;
  supply1 SD;
  udp_jkqd (d1, J, K, Q);
  udp_mux21 (d2, d1, TI, TE);
  udp_dff (z, d2, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FJK3 (J, K, CP, CD, SD, Q, QN);
  input J, K, CP, CD, SD;
  output Q, QN;
  udp_jkqd (d1, J, K, Q);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not (q1, z);
  and #0.01 (QN, q1, SD);
endmodule
`endcelldefine

`celldefine
module FJK3P (J, K, CP, CD, SD, Q, QN);
  input J, K, CP, CD, SD;
  output Q, QN;
  udp_jkqd (d1, J, K, Q);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not (q1, z);
  and #0.01 (QN, q1, SD);
endmodule
`endcelldefine

`celldefine
module FJK3S (J, K, CP, CD, SD, TI, TE, Q, QN);
  input J, K, CP, CD, SD, TI, TE;
  output Q, QN;
  udp_jkqd (d1, J, K, Q);
  udp_mux21 (d2, d1, TI, TE);
  udp_dff (z, d2, CP, CD, SD);
  buf #0.01 (Q, z);
  not (q1, z);
  and #0.01 (QN, q1, SD);
endmodule
`endcelldefine

`celldefine
module FJK3SP (J, K, CP, CD, SD, TI, TE, Q, QN);
  input J, K, CP, CD, SD, TI, TE;
  output Q, QN;
  udp_jkqd (d1, J, K, Q);
  udp_mux21 (d2, d1, TI, TE);
  udp_dff (z, d2, CP, CD, SD);
  buf #0.01 (Q, z);
  not (q1, z);
  and #0.01 (QN, q1, SD);
endmodule
`endcelldefine

`celldefine
module LD1 (D, G, Q, QN);
  input D, G;
  output Q, QN;
  supply1 CD;
  udp_dlat (z, D, G, CD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

primitive udp_dlat (Q, D, G, CD);
  input D, G, CD;
  output Q;
  reg Q;
  table
//  D    G    CD   : q0 : Q
    0    1    ?    : ?  : 0;
    1    1    1    : ?  : 1;
    ?    0    1    : ?  : -;
    ?    ?    0    : ?  : 0;
    0    ?    ?    : 0  : 0;
    1    ?    1    : 1  : 1;
  endtable
endprimitive

`celldefine
module LD1P (D, G, Q, QN);
  input D, G;
  output Q, QN;
  supply1 CD;
  udp_dlat (z, D, G, CD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module LD2 (D, GN, Q, QN);
  input D, GN;
  output Q, QN;
  supply1 CD;
  not (g1, GN);
  udp_dlat (z, D, g1, CD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module LD2P (D, GN, Q, QN);
  input D, GN;
  output Q, QN;
  supply1 CD;
  not (g1, GN);
  udp_dlat (z, D, g1, CD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module LD3 (D, G, CD, Q, QN);
  input D, G, CD;
  output Q, QN;
  udp_dlat (z, D, G, CD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module LD3P (D, G, CD, Q, QN);
  input D, G, CD;
  output Q, QN;
  udp_dlat (z, D, G, CD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module LD4 (D, GN, CD, Q, QN);
  input D, GN, CD;
  output Q, QN;
  not (g1, GN);
  udp_dlat (z, D, g1, CD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module LD4P (D, GN, CD, Q, QN);
  input D, GN, CD;
  output Q, QN;
  not (g1, GN);
  udp_dlat (z, D, g1, CD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module B2I (A, Z1, Z2);
  input A;
  output Z1, Z2;
  not (Z1, A);
  not (Z2, Z1);
endmodule
`endcelldefine

`celldefine
module B2IP (A, Z1, Z2);
  input A;
  output Z1, Z2;
  not (Z1, A);
  not (Z2, Z1);
endmodule
`endcelldefine

`celldefine
module B3I (A, Z1, Z2);
  input A;
  output Z1, Z2;
  not (Z1, A);
  not (Z2, Z1);
endmodule
`endcelldefine

`celldefine
module B3IP (A, Z1, Z2);
  input A;
  output Z1, Z2;
  not (Z1, A);
  not (Z2, Z1);
endmodule
`endcelldefine

`celldefine
module D24L (A, B, Z0, Z1, Z2, Z3);
  input A, B;
  output Z0, Z1, Z2, Z3;
  not (a1, A);
  not (b1, B);
  //function : "A B' + A' B + A B";
  nand (Z0, a1, b1);
  //function : "A' B' + A' B + A B";
  nand (Z1, A, b1);
  //function : "A' B' + A B' + A B";
  nand (Z2, a1, B);
  //function : "A' B' + A B' + A' B";
  nand (Z3, A, B);
endmodule
`endcelldefine

`celldefine
module D24LP (A, B, Z0, Z1, Z2, Z3);
  input A, B;
  output Z0, Z1, Z2, Z3;
  not (a1, A);
  not (b1, B);
  //function : "A B' + A' B + A B";
  nand (Z0, a1, b1);
  //function : "A' B' + A' B + A B";
  nand (Z1, A, b1);
  //function : "A' B' + A B' + A B";
  nand (Z2, a1, B);
  //function : "A' B' + A B' + A' B";
  nand (Z3, A, B);
endmodule
`endcelldefine

`celldefine
module FA1 (CI, A, B, S, CO);
  input CI, A, B;
  output S, CO;
  //function : "CI A' B' + CI' A B' + CI' A' B + CI A B";
  xor (S, CI, A, B);
  //function : "CI A B' + CI A' B + CI' A B + CI A B";
  and (co1, CI, A);
  and (co2, CI, B);
  and (co3, A, B);
  or (CO, co1, co2, co3);
endmodule
`endcelldefine

`celldefine
module FA1A (CI, A, B, S, CO);
  input CI, A, B;
  output S, CO;
  //function : "CI A' B' + CI' A B' + CI' A' B + CI A B";
  xor (S, CI, A, B);
  //function : "CI A B' + CI A' B + CI' A B + CI A B";
  and (co1, CI, A);
  and (co2, CI, B);
  and (co3, A, B);
  or (CO, co1, co2, co3);
endmodule
`endcelldefine

`celldefine
module FA1AP (CI, A, B, S, CO);
  input CI, A, B;
  output S, CO;
  //function : "CI A' B' + CI' A B' + CI' A' B + CI A B";
  xor (S, CI, A, B);
  //function : "CI A B' + CI A' B + CI' A B + CI A B";
  and (co1, CI, A);
  and (co2, CI, B);
  and (co3, A, B);
  or (CO, co1, co2, co3);
endmodule
`endcelldefine

`celldefine
module FA1P (CI, A, B, S, CO);
  input CI, A, B;
  output S, CO;
  //function : "CI A' B' + CI' A B' + CI' A' B + CI A B";
  xor (S, CI, A, B);
  //function : "CI A B' + CI A' B + CI' A B + CI A B";
  and (co1, CI, A);
  and (co2, CI, B);
  and (co3, A, B);
  or (CO, co1, co2, co3);
endmodule
`endcelldefine

`celldefine
module HA1 (A, B, S, CO);
  input A, B;
  output S, CO;
  //function : "A' B +  A B'";
  xor (S, A, B);
  //function : "A B";
  and (CO, A, B);
endmodule
`endcelldefine

`celldefine
module HA1P (A, B, S, CO);
  input A, B;
  output S, CO;
  //function : "A' B +  A B'";
  xor (S, A, B);
  //function : "A B";
  and (CO, A, B);
endmodule
`endcelldefine

`celldefine
module FDS2 (D, CP, CR, Q, QN);
  input D, CP, CR;
  output Q, QN;
  supply1 CD, SD;
  //next_state : "D CR";
  and (d1, D, CR);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FDS2L (D, CP, CR, LD, Q, QN);
  input D, CP, CR, LD;
  output Q, QN;
  supply1 CD, SD;
  //next_state : "CR (D LD + IQ LD')";
  udp_mux21 (d1, Q, D, LD);
  and (d2, d1, CR);
  udp_dff (z, d2, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FDS2LP (D, CP, CR, LD, Q, QN);
  input D, CP, CR, LD;
  output Q, QN;
  supply1 CD, SD;
  //next_state : "CR (D LD + IQ LD')";
  udp_mux21 (d1, Q, D, LD);
  and (d2, d1, CR);
  udp_dff (z, d2, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FDS2P (D, CP, CR, Q, QN);
  input D, CP, CR;
  output Q, QN;
  supply1 CD, SD;
  //next_state : "D CR";
  and (d1, D, CR);
  udp_dff (z, d1, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FT2 (CP, CD, Q, QN);
  input CP, CD;
  output Q, QN;
  supply1 SD;
  udp_dff (z, QN, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FT2P (CP, CD, Q, QN);
  input CP, CD;
  output Q, QN;
  supply1 SD;
  udp_dff (z, QN, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FT4 (CP, SD, Q, QN);
  input CP, SD;
  output Q, QN;
  supply1 CD;
  udp_dff (z, QN, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module FT4P (CP, SD, Q, QN);
  input CP, SD;
  output Q, QN;
  supply1 CD;
  udp_dff (z, QN, CP, CD, SD);
  buf #0.01 (Q, z);
  not #0.01 (QN, z);
endmodule
`endcelldefine

`celldefine
module LD1X4 (D0, D1, D2, D3, G, Q0, Q1, Q2, Q3, Q0N, Q1N, Q2N, Q3N);
  input D0, D1, D2, D3, G;
  output Q0, Q1, Q2, Q3, Q0N, Q1N, Q2N, Q3N;
  supply1 CD;
  udp_dlat (z0, D0, G, CD);
  udp_dlat (z1, D1, G, CD);
  udp_dlat (z2, D2, G, CD);
  udp_dlat (z3, D3, G, CD);
  buf #0.01 (Q0, z0);
  buf #0.01 (Q1, z1);
  buf #0.01 (Q2, z2);
  buf #0.01 (Q3, z3);
  not #0.01 (Q0N, z0);
  not #0.01 (Q1N, z1);
  not #0.01 (Q2N, z2);
  not #0.01 (Q3N, z3);
endmodule
`endcelldefine

`celldefine
module LD1X4P (D0, D1, D2, D3, G, Q0, Q1, Q2, Q3, Q0N, Q1N, Q2N, Q3N);
  input D0, D1, D2, D3, G;
  output Q0, Q1, Q2, Q3, Q0N, Q1N, Q2N, Q3N;
  supply1 CD;
  udp_dlat (z0, D0, G, CD);
  udp_dlat (z1, D1, G, CD);
  udp_dlat (z2, D2, G, CD);
  udp_dlat (z3, D3, G, CD);
  buf #0.01 (Q0, z0);
  buf #0.01 (Q1, z1);
  buf #0.01 (Q2, z2);
  buf #0.01 (Q3, z3);
  not #0.01 (Q0N, z0);
  not #0.01 (Q1N, z1);
  not #0.01 (Q2N, z2);
  not #0.01 (Q3N, z3);
endmodule
`endcelldefine

/*
`celldefine
module LS1 (D1, C1, D2, C2, Q, QN);
  input D1, C1, D2, C2;
  output Q, QN;
//  state ("IQ","IQN") {
//    force_01 : "C1' D2' C2 + D1' C1 C2'";
//    force_10 : "C1' D2 C2 + D1 C1 C2' + D1 C1 C2 + C1 D2 C2'";
//  }  // Sequential modeling due to non-disjunct equations
endmodule
`endcelldefine
*/

/*
`celldefine
module LS1P (D1, C1, D2, C2, Q, QN);
  input D1, C1, D2, C2;
  output Q, QN;
//  state ("IQ","IQN") {
//    force_01 : "C1' D2' C2 + D1' C1 C2'";
//    force_10 : "C1' D2 C2 + D1 C1 C2' + D1 C1 C2 + C1 D2 C2'";
//  }  // Sequential modeling due to non-disjunct equations
endmodule
`endcelldefine
*/

/*
`celldefine
module LSR0 (S, R, Q, QN);
  input S, R;
  output Q, QN;
//  state ("IQ","IQN") {
//    force_00 : "S' R'";
//    force_01 : "S  R'";
//    force_10 : "S' R";
//  }
endmodule
`endcelldefine
*/

/*
`celldefine
module LSR0P (S, R, Q, QN);
  input S, R;
  output Q, QN;
//  state ("IQ","IQN") {
//    force_00 : "S' R'";
//    force_01 : "S  R'";
//    force_10 : "S' R";
//  }
endmodule
`endcelldefine
*/

/*
`celldefine
module LSR2 (S, R, G, SD, RD, Q, QN);
  input S, R, G, SD, RD;
  output Q, QN;
//  state ("IQ","IQN") {
//    force_01 : "SD RD' + S R' G' SD RD";
//    force_10 : "SD' RD + S' R G' SD RD";
//    force_11 : "SD' RD' + S' R' G' SD RD";
//  }
endmodule
`endcelldefine
*/

`celldefine
module BTS4 (A, E, Z);
  input A, E;
  output Z;
  bufif1 (Z, A, E);
endmodule
`endcelldefine

`celldefine
module BTS4P (A, E, Z);
  input A, E;
  output Z;
  bufif1 (Z, A, E);
endmodule
`endcelldefine

`celldefine
module BTS5 (A, E, Z);
  input A, E;
  output Z;
  notif1 (Z, A, E);
endmodule
`endcelldefine

`celldefine
module BTS5P (A, E, Z);
  input A, E;
  output Z;
  notif1 (Z, A, E);
endmodule
`endcelldefine

`celldefine
module FD2TS (D, CP, CD, RD, Z, Q);
  input D, CP, CD, RD;
  output Z, Q;
  supply1 SD;
  udp_dff (x, D, CP, CD, SD);
  buf #0.01 (Q, x);
  bufif1 #0.01 (Z, x, RD);
endmodule
`endcelldefine

`celldefine
module FD2TSP (D, CP, CD, RD, Z, Q);
  input D, CP, CD, RD;
  output Z, Q;
  supply1 SD;
  udp_dff (x, D, CP, CD, SD);
  buf #0.01 (Q, x);
  bufif1 #0.01 (Z, x, RD);
endmodule
`endcelldefine

`celldefine
module RAM1 (D, WR, WRN, RD, ZN, QN);
  input D, WR, WRN, RD;
  output ZN, QN;
  supply1 CD;
  supply1 A;
  supply0 B;
  udp_mux_onehot (g1, WRN, A, WR, B);
  udp_dlat (x, D, g1, CD);
  notif1 #0.01 (ZN, x, RD);
  not #0.01 (QN, x);
endmodule
`endcelldefine
