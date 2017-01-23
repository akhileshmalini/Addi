module ALU(opcode,in1,in2,result);

input [5:0] opcode;
input [31:0] in1;
input [31:0] in2;
output [31:0] result;
reg [31:0] result;


wire [31:0] sum;

thirtytwobitadder ADD(in1,in2,carryout,sum,1'b0);


always @(*)
begin
        
        if(opcode==6'b001000)
        begin        
        result=sum;
        end
end



endmodule

