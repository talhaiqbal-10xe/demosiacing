module mult7x5(
output [11:0] out1,out2,
input [6:0] A,
input [4:0] B );


integer i;
 reg[6:0] PP[ 0:4];
always@*
begin
   for ( i=0 ; i<5; i = i+1 )
   begin
      PP[i]= A & {7{B[i]}};
   end
end



///////////// Iteration Number =1///////////////////





wire Hi1L4_inp1, Hi1L4_inp2;
assign Hi1L4_inp1 = PP[0][4];
assign Hi1L4_inp2 = PP[1][3];
wire sHi1L4, cHi1L4;
HA Hi1L4 ( sHi1L4,cHi1L4,Hi1L4_inp1,Hi1L4_inp2 );

wire F1i1L5_inp1, F1i1L5_inp2, F1i1L5_inp3;
assign F1i1L5_inp1 = PP[0][5];
assign F1i1L5_inp2 = PP[1][4];
assign F1i1L5_inp3 = PP[2][3];
wire sF1i1L5, cF1i1L5;
FA F1i1L5( sF1i1L5,cF1i1L5,F1i1L5_inp1,F1i1L5_inp2,F1i1L5_inp3 );

wire F1i1L6_inp1, F1i1L6_inp2, F1i1L6_inp3;
assign F1i1L6_inp1 = PP[0][6];
assign F1i1L6_inp2 = PP[1][5];
assign F1i1L6_inp3 = PP[2][4];
wire sF1i1L6, cF1i1L6;
FA F1i1L6( sF1i1L6,cF1i1L6,F1i1L6_inp1,F1i1L6_inp2,F1i1L6_inp3 );

wire Hi1L7_inp1, Hi1L7_inp2;
assign Hi1L7_inp1 = PP[1][6];
assign Hi1L7_inp2 = PP[2][5];
wire sHi1L7, cHi1L7;
HA Hi1L7 ( sHi1L7,cHi1L7,Hi1L7_inp1,Hi1L7_inp2 );



///////////// Iteration Number =2///////////////////





wire Hi2L3_inp1, Hi2L3_inp2;
assign Hi2L3_inp1 = PP[0][3];
assign Hi2L3_inp2 = PP[1][2];
wire sHi2L3, cHi2L3;
HA Hi2L3 ( sHi2L3,cHi2L3,Hi2L3_inp1,Hi2L3_inp2 );

wire F1i2L4_inp1, F1i2L4_inp2, F1i2L4_inp3;
assign F1i2L4_inp1 = PP[2][2];
assign F1i2L4_inp2 = PP[3][1];
assign F1i2L4_inp3 = PP[4][0];
wire sF1i2L4, cF1i2L4;
FA F1i2L4( sF1i2L4,cF1i2L4,F1i2L4_inp1,F1i2L4_inp2,F1i2L4_inp3 );

wire F1i2L5_inp1, F1i2L5_inp2, F1i2L5_inp3;
assign F1i2L5_inp1 = PP[3][2];
assign F1i2L5_inp2 = PP[4][1];
assign F1i2L5_inp3 = cHi1L4;
wire sF1i2L5, cF1i2L5;
FA F1i2L5( sF1i2L5,cF1i2L5,F1i2L5_inp1,F1i2L5_inp2,F1i2L5_inp3 );

wire F1i2L6_inp1, F1i2L6_inp2, F1i2L6_inp3;
assign F1i2L6_inp1 = PP[3][3];
assign F1i2L6_inp2 = PP[4][2];
assign F1i2L6_inp3 = cF1i1L5;
wire sF1i2L6, cF1i2L6;
FA F1i2L6( sF1i2L6,cF1i2L6,F1i2L6_inp1,F1i2L6_inp2,F1i2L6_inp3 );

wire F1i2L7_inp1, F1i2L7_inp2, F1i2L7_inp3;
assign F1i2L7_inp1 = PP[3][4];
assign F1i2L7_inp2 = PP[4][3];
assign F1i2L7_inp3 = cF1i1L6;
wire sF1i2L7, cF1i2L7;
FA F1i2L7( sF1i2L7,cF1i2L7,F1i2L7_inp1,F1i2L7_inp2,F1i2L7_inp3 );

wire F1i2L8_inp1, F1i2L8_inp2, F1i2L8_inp3;
assign F1i2L8_inp1 = PP[2][6];
assign F1i2L8_inp2 = PP[3][5];
assign F1i2L8_inp3 = PP[4][4];
wire sF1i2L8, cF1i2L8;
FA F1i2L8( sF1i2L8,cF1i2L8,F1i2L8_inp1,F1i2L8_inp2,F1i2L8_inp3 );



///////////// Iteration Number =3///////////////////





wire Hi3L2_inp1, Hi3L2_inp2;
assign Hi3L2_inp1 = PP[0][2];
assign Hi3L2_inp2 = PP[1][1];
wire sHi3L2, cHi3L2;
HA Hi3L2 ( sHi3L2,cHi3L2,Hi3L2_inp1,Hi3L2_inp2 );

wire F1i3L3_inp1, F1i3L3_inp2, F1i3L3_inp3;
assign F1i3L3_inp1 = PP[2][1];
assign F1i3L3_inp2 = PP[3][0];
assign F1i3L3_inp3 = sHi2L3;
wire sF1i3L3, cF1i3L3;
FA F1i3L3( sF1i3L3,cF1i3L3,F1i3L3_inp1,F1i3L3_inp2,F1i3L3_inp3 );

wire F1i3L4_inp1, F1i3L4_inp2, F1i3L4_inp3;
assign F1i3L4_inp1 = sHi1L4;
assign F1i3L4_inp2 = cHi2L3;
assign F1i3L4_inp3 = sF1i2L4;
wire sF1i3L4, cF1i3L4;
FA F1i3L4( sF1i3L4,cF1i3L4,F1i3L4_inp1,F1i3L4_inp2,F1i3L4_inp3 );

wire F1i3L5_inp1, F1i3L5_inp2, F1i3L5_inp3;
assign F1i3L5_inp1 = sF1i1L5;
assign F1i3L5_inp2 = cF1i2L4;
assign F1i3L5_inp3 = sF1i2L5;
wire sF1i3L5, cF1i3L5;
FA F1i3L5( sF1i3L5,cF1i3L5,F1i3L5_inp1,F1i3L5_inp2,F1i3L5_inp3 );

wire F1i3L6_inp1, F1i3L6_inp2, F1i3L6_inp3;
assign F1i3L6_inp1 = sF1i1L6;
assign F1i3L6_inp2 = cF1i2L5;
assign F1i3L6_inp3 = sF1i2L6;
wire sF1i3L6, cF1i3L6;
FA F1i3L6( sF1i3L6,cF1i3L6,F1i3L6_inp1,F1i3L6_inp2,F1i3L6_inp3 );

wire F1i3L7_inp1, F1i3L7_inp2, F1i3L7_inp3;
assign F1i3L7_inp1 = sHi1L7;
assign F1i3L7_inp2 = cF1i2L6;
assign F1i3L7_inp3 = sF1i2L7;
wire sF1i3L7, cF1i3L7;
FA F1i3L7( sF1i3L7,cF1i3L7,F1i3L7_inp1,F1i3L7_inp2,F1i3L7_inp3 );

wire F1i3L8_inp1, F1i3L8_inp2, F1i3L8_inp3;
assign F1i3L8_inp1 = cHi1L7;
assign F1i3L8_inp2 = cF1i2L7;
assign F1i3L8_inp3 = sF1i2L8;
wire sF1i3L8, cF1i3L8;
FA F1i3L8( sF1i3L8,cF1i3L8,F1i3L8_inp1,F1i3L8_inp2,F1i3L8_inp3 );

wire F1i3L9_inp1, F1i3L9_inp2, F1i3L9_inp3;
assign F1i3L9_inp1 = PP[3][6];
assign F1i3L9_inp2 = PP[4][5];
assign F1i3L9_inp3 = cF1i2L8;
wire sF1i3L9, cF1i3L9;
FA F1i3L9( sF1i3L9,cF1i3L9,F1i3L9_inp1,F1i3L9_inp2,F1i3L9_inp3 );


assign out1 ={{1'b0},{PP[4][6]},{cF1i3L8},{cF1i3L7},{cF1i3L6},{cF1i3L5},{cF1i3L4},{cF1i3L3},{cHi3L2},{PP[2][0]},{PP[0][1]},{PP[0][0]}};
assign out2 ={{1'b0},{cF1i3L9},{sF1i3L9},{sF1i3L8},{sF1i3L7},{sF1i3L6},{sF1i3L5},{sF1i3L4},{sF1i3L3},{sHi3L2},{PP[1][0]},{1'b0}} ;
endmodule