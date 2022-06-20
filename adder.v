module adder4x5(
output [6:0] out1,out2,
input [4:0]A,B,C,D );






///////////// Iteration Number =1///////////////////





wire Hi1L0_inp1, Hi1L0_inp2;
assign Hi1L0_inp1 = A[0];
assign Hi1L0_inp2 = B[0];
wire sHi1L0, cHi1L0;
HA Hi1L0 ( sHi1L0,cHi1L0,Hi1L0_inp1,Hi1L0_inp2 );

wire F1i1L1_inp1, F1i1L1_inp2, F1i1L1_inp3;
assign F1i1L1_inp1 = A[1];
assign F1i1L1_inp2 = B[1];
assign F1i1L1_inp3 = C[1];
wire sF1i1L1, cF1i1L1;
FA F1i1L1( sF1i1L1,cF1i1L1,F1i1L1_inp1,F1i1L1_inp2,F1i1L1_inp3 );

wire F1i1L2_inp1, F1i1L2_inp2, F1i1L2_inp3;
assign F1i1L2_inp1 = A[2];
assign F1i1L2_inp2 = B[2];
assign F1i1L2_inp3 = C[2];
wire sF1i1L2, cF1i1L2;
FA F1i1L2( sF1i1L2,cF1i1L2,F1i1L2_inp1,F1i1L2_inp2,F1i1L2_inp3 );

wire F1i1L3_inp1, F1i1L3_inp2, F1i1L3_inp3;
assign F1i1L3_inp1 = A[3];
assign F1i1L3_inp2 = B[3];
assign F1i1L3_inp3 = C[3];
wire sF1i1L3, cF1i1L3;
FA F1i1L3( sF1i1L3,cF1i1L3,F1i1L3_inp1,F1i1L3_inp2,F1i1L3_inp3 );

wire F1i1L4_inp1, F1i1L4_inp2, F1i1L4_inp3;
assign F1i1L4_inp1 = A[4];
assign F1i1L4_inp2 = B[4];
assign F1i1L4_inp3 = C[4];
wire sF1i1L4, cF1i1L4;
FA F1i1L4( sF1i1L4,cF1i1L4,F1i1L4_inp1,F1i1L4_inp2,F1i1L4_inp3 );



///////////// Iteration Number =2///////////////////





wire Hi2L0_inp1, Hi2L0_inp2;
assign Hi2L0_inp1 = C[0];
assign Hi2L0_inp2 = D[0];
wire sHi2L0, cHi2L0;
HA Hi2L0 ( sHi2L0,cHi2L0,Hi2L0_inp1,Hi2L0_inp2 );

wire F1i2L1_inp1, F1i2L1_inp2, F1i2L1_inp3;
assign F1i2L1_inp1 = D[1];
assign F1i2L1_inp2 = cHi1L0;
assign F1i2L1_inp3 = sF1i1L1;
wire sF1i2L1, cF1i2L1;
FA F1i2L1( sF1i2L1,cF1i2L1,F1i2L1_inp1,F1i2L1_inp2,F1i2L1_inp3 );

wire F1i2L2_inp1, F1i2L2_inp2, F1i2L2_inp3;
assign F1i2L2_inp1 = D[2];
assign F1i2L2_inp2 = cF1i1L1;
assign F1i2L2_inp3 = sF1i1L2;
wire sF1i2L2, cF1i2L2;
FA F1i2L2( sF1i2L2,cF1i2L2,F1i2L2_inp1,F1i2L2_inp2,F1i2L2_inp3 );

wire F1i2L3_inp1, F1i2L3_inp2, F1i2L3_inp3;
assign F1i2L3_inp1 = D[3];
assign F1i2L3_inp2 = cF1i1L2;
assign F1i2L3_inp3 = sF1i1L3;
wire sF1i2L3, cF1i2L3;
FA F1i2L3( sF1i2L3,cF1i2L3,F1i2L3_inp1,F1i2L3_inp2,F1i2L3_inp3 );

wire F1i2L4_inp1, F1i2L4_inp2, F1i2L4_inp3;
assign F1i2L4_inp1 = D[4];
assign F1i2L4_inp2 = cF1i1L3;
assign F1i2L4_inp3 = sF1i1L4;
wire sF1i2L4, cF1i2L4;
FA F1i2L4( sF1i2L4,cF1i2L4,F1i2L4_inp1,F1i2L4_inp2,F1i2L4_inp3 );


out1 ={{0},{cF1i1L4},{cF1i2L3},{cF1i2L2},{cF1i2L1},{cHi2L0},{sHi1L0}};
out2 ={{0},{cF1i2L4},{sF1i2L4},{sF1i2L3},{sF1i2L2},{sF1i2L1},{sHi2L0}} ;
endmodule