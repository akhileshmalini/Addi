module top;


wire [31:0] inst;
wire [5:0] opcode;
wire [4:0] rs;
wire [4:0] rt;
wire [15:0] imm;
wire [31:0] extendimm;
wire [31:0] rsdata;
wire [31:0] result;
wire [31:0] rtdata;





Splitter SP(inst,opcode,rs,rt,imm);

SignExtend SE(imm,extendimm);  	

RegisterFile RF(rs,rt,rsdata,rtdata,result);

ALU al(opcode,rsdata,extendimm,result);

RegisterFile WB(rs,rt,rsdata,rtdata,result);

endmodule


