module RegisterFile(rsaddr,rtaddr,rsdata,rtdata,result);


input [4:0] rsaddr;	
input [4:0] rtaddr;	
output [31:0] rsdata;	
output [31:0] rtdata;		
input [31:0] result;	


reg [31:0] mem [31:0];
initial begin
	mem[0] = 32'b00000000000000000000000000000010;		//Register File initialized with random values
        mem[1] = 32'b00000000000000000000000000000001;
        mem[2] = 32'b00000000000000000000000000001000;
        mem[3] = 32'b00000000000000000000000000000110;
        mem[4] = 32'b00000000000000000000000001000000;
        mem[5] = 32'b00000000000000000000000000100000;
        mem[6] = 32'b00000000000000000000000000010000;
        mem[7] = 32'b00000000000000000000001000000000;
        mem[8] = 32'b00000000000000000000000010000000;
        mem[9] = 32'b00000000000000000000000000100000;
        mem[10] = 32'b00000000000000000000010000000000;
        mem[11] = 32'b00000000000000000000000100000000;
        mem[12] = 32'b00000000000000000000000000010010;
        mem[13] = 32'b00000000000000000000000010100000;
        mem[14] = 32'b00000000000000000000000000111000;
        mem[15] = 32'b00000000000000000000011001000000;
        mem[16] = 32'b00000000000000000000000000100000;
        mem[17] = 32'b00000000000000000000000000010000;
        mem[18] = 32'b00000000000000000000000010100000;
        mem[19] = 32'b00000000000000000000000001000000;
        mem[20] = 32'b00000000000000000000000101000000;
        mem[21] = 32'b00000000000000000010000000000000;
        mem[22] = 32'b00000000000000000001000000000000;
        mem[23] = 32'b00000000000000000000100000000000;
        mem[24] = 32'b00000000000000001000000100000000;
        mem[25] = 32'b00000000000000001100100000000000;
        mem[26] = 32'b00000000000000000000000100000000;
        mem[27] = 32'b00000000000000000100100000000000;
        mem[28] = 32'b00000000000000000000100001000000;
        mem[29] = 32'b00000000000000000000000100010000;
        mem[30] = 32'b00000000000010100010000000000000;
        mem[31] = 32'b00000000000000010000100101100000;

	end

		
	always@ (*)
	
	begin
		 mem[rtaddr] = result;
end
		assign rsdata = mem[rsaddr];
		assign rtdata = mem[rtaddr];
	
	
endmodule


