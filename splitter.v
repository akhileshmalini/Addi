module Splitter(inst,opcode,rs,rt,imm);  //32 bit Instruction 31-26 Opcode
					       //rs 25-21 rt 20-16 immidiate value 15-0
input [31:0] inst;


output [5:0] opcode;
output [4:0] rs;
output [4:0] rt;
output [15:0] imm;


reg [4:0] rs;
reg [4:0] rt;
reg [15:0] imm;

assign opcode = inst[31:26];

always @(opcode)//If Opcode Value is Zero we can Ignore because its going to be R Type 
		//This is required for assiging values to registers
begin
  
	//For I-Type Instructions Only 
	rs = inst[25:21];
	rt = inst[20:16];
	imm = inst[15:0];
	

end

endmodule


