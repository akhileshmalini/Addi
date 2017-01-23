module onebitadder(x,y,sum,carryout,carryin);
input x,y,carryin;
output sum,carryout;

        //sum = x XOR y XOR z, where z is carry in
        //carryout = x XOR y multiplied by z plus xy

xor XOR1(p,x,y);
xor XOR2(sum,p,carryin);
        //At this stage, we have sum with us

and ANDp(q,p,carryin);
and ANDxy(r,x,y);
or ORing(carryout,q,r);
        //At this stage, we have carryout also with us

endmodule

module thirtytwobitadder(a,b,carryout,s,carryin);

input carryin;
input [31:0] a;
input [31:0] b;
output carryout;
output [31:0] s;

onebitadder adder0(a[0],b[0],s[0],c1,carryin);
onebitadder adder1(a[1],b[1],s[1],c2,c1);
onebitadder adder2(a[2],b[2],s[2],c3,c2);
onebitadder adder3(a[3],b[3],s[3],c4,c3);
onebitadder adder4(a[4],b[4],s[4],c5,c4);
onebitadder adder5(a[5],b[5],s[5],c6,c5);
onebitadder adder6(a[6],b[6],s[6],c7,c6);
onebitadder adder7(a[7],b[7],s[7],c8,c7);
onebitadder adder8(a[8],b[8],s[8],c9,c8);
onebitadder adder9(a[9],b[9],s[9],c10,c9);
onebitadder adder10(a[10],b[10],s[10],c11,c10);
onebitadder adder11(a[11],b[11],s[11],c12,c11);
onebitadder adder12(a[12],b[12],s[12],c13,c12);
onebitadder adder13(a[13],b[13],s[13],c14,c13);
onebitadder adder14(a[14],b[14],s[14],c15,c14);
onebitadder adder15(a[15],b[15],s[15],c16,c15);
onebitadder adder16(a[16],b[16],s[16],c17,c16);
onebitadder adder17(a[17],b[17],s[17],c18,c17);
onebitadder adder18(a[18],b[18],s[18],c19,c18);
onebitadder adder19(a[19],b[19],s[19],c20,c19);
onebitadder adder20(a[20],b[20],s[20],c21,c20);
onebitadder adder21(a[21],b[21],s[21],c22,c21);
onebitadder adder22(a[22],b[22],s[22],c23,c22);
onebitadder adder23(a[23],b[23],s[23],c24,c23);
onebitadder adder24(a[24],b[24],s[24],c25,c24);
onebitadder adder25(a[25],b[25],s[25],c26,c25);
onebitadder adder26(a[26],b[26],s[26],c27,c26);
onebitadder adder27(a[27],b[27],s[27],c28,c27);
onebitadder adder28(a[28],b[28],s[28],c29,c28);
onebitadder adder29(a[29],b[29],s[29],c30,c29);
onebitadder adder30(a[30],b[30],s[30],c31,c30);
onebitadder adder31(a[31],b[31],s[31],carryout,c31);

endmodule


