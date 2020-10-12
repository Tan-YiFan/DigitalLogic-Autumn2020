`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 23:17:35
// Design Name: 
// Module Name: decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab2(
    input  logic [31:0]instr,
    output logic [ 7:0]aluout
    );
    
logic [3:0]alucontrol;
logic      wmem;
logic      rmem;
logic      jump;
logic [5:0] op, funct;

logic [7:0]imm1;
logic [7:0]imm2;
logic [2:0]shamt;

assign op    = instr[31:26];
assign imm1  = instr[25:18];
assign imm2  = instr[17:10];
assign shamt = instr[9:7];
assign funct = instr[5:0];

always_comb
begin
    unique case(op)
    6'b000000:begin
        unique case(funct)
            6'b100000:alucontrol = 4'b0001;  
            6'b100010:alucontrol = 4'b0010; 
            6'b101010:alucontrol = 4'b0011;  
            6'b100100:alucontrol = 4'b0100;
            6'b100111:alucontrol = 4'b0101;
            6'b100101:alucontrol = 4'b0110;
            6'b100110:alucontrol = 4'b0111;   
            6'b101111:alucontrol = 4'b1000; 
            6'b000000:alucontrol = 4'b1001; 
            6'b000010:alucontrol = 4'b1010; 
            6'b000011:alucontrol = 4'b1011; 
            default:  alucontrol = 4'b0000; 
        endcase         
    end
    default:alucontrol = 4'b0000;
    endcase
end

assign rmem = (op == 6'b100011);
assign wmem = (op == 6'b101011);
assign jump = (op == 6'b000010) || (op == 6'b000100 && imm1 == imm2) || (op == 6'b000101 && imm1 != imm2);

always_comb
begin
    unique case(alucontrol)
        4'b0001: aluout = imm1 + imm2 ;
        4'b0010: aluout = imm1 - imm2 ;
        4'b0011: aluout = signed'(imm1) < signed'(imm2) ;
        4'b0100: aluout = imm1 & imm2 ;
        4'b0101: aluout = ~(imm1 | imm2) ;
        4'b0110: aluout = imm1 | imm2 ;
        4'b0111: aluout = imm1 ^ imm2 ;
        4'b1000: aluout = ~imm1 ;
        4'b1001: aluout = imm1 << shamt ;
        4'b1010: aluout = imm1 >> shamt ;
        4'b1011: aluout = (imm1) >>> shamt ;
        default: aluout = '0 ;
    endcase
end
    
    
    
endmodule
