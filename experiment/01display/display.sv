module display (
    input logic CLK100MHZ, CPU_RESETN,
    output logic [7:0] AN,
    output logic [6:0] A2G,
    input logic [7:0] SW,
    output logic [7:0] LED
);
    assign LED = SW;
    logic[7:0][6:0]segs;
    controller ctler(.*);

    logic [2:0] an_ctl;
    always_ff @(posedge CLK100MHZ) begin
        if (~CPU_RESETN) begin
            an_ctl <= '0;
        end else begin
            an_ctl <= an_ctl + 1;
        end
    end
    for (genvar i = 0; i < 8; i++) begin
        AN[i] = i != an_ctl;
    end
    assign A2G = segs[an_ctl];
    
endmodule

module controller (
    input logic CLK100MHZ, CPU_RESETN,
    input logic[7:0] SW,
    output logic[7:0][6:0] segs
);
    logic clk;
    logic[31:0] clk_ctl;
    always_ff @(posedge CLK100MHZ) begin
        if (~CPU_RESETN) begin
            clk_ctl <= '0;
            clk <= '0;
        end else begin
            clk_ctl <= clk_ctl + 1 + SW;
            if (clk_ctl > 100_000_000) begin
                clk_ctl <= '0;
                clk <= 1'b1;
            end else begin
                clk <= 1'b0;
            end
        end
    end

    logic [5：0]state;
    always_ff @(posedge clk) begin
        if (~CPU_RESETN) begin
            state <= '0;
        end else begin
            state <= state + 1;
            if (state == 6'd46) begin
                state <= '0;
            end
        end
    end
    mylut mylut(.state, .segs);
    
endmodule

module mylut (
    input logic [5:0] state,
    output logic[7:0][6:0]segs
);
    always_comb begin
        segs <= '1;
        unique case(state) begin
            'd0: {segs[7][4], segs[7][5], segs[7][0], segs[7][1], segs[7][2], segs[6][4], segs[6][5]} = '0;
            'd1: {segs[6][0], segs[7][5], segs[7][0], segs[7][1], segs[7][2], segs[6][4], segs[6][5]} = '0;
            'd2: {segs[6][0], segs[6][1], segs[7][0], segs[7][1], segs[7][2], segs[6][4], segs[6][5]} = '0;
            'd3: {segs[6][0], segs[6][1], segs[6][2], segs[7][1], segs[7][2], segs[6][4], segs[6][5]} = '0;
            'd4: {segs[6][0], segs[6][1], segs[6][2], segs[5][4], segs[7][2], segs[6][4], segs[6][5]} = '0;
            'd5: {segs[6][0], segs[6][1], segs[6][2], segs[5][4], segs[5][5], segs[6][4], segs[6][5]} = '0;
            'd6: {segs[6][0], segs[6][1], segs[6][2], segs[5][4], segs[5][5], segs[5][0], segs[6][5]} = '0;
            'd7: {segs[6][0], segs[6][1], segs[6][2], segs[5][4], segs[5][5], segs[5][0], segs[5][1]} = '0;
            'd8: {segs[5][2], segs[6][1], segs[6][2], segs[5][4], segs[5][5], segs[5][0], segs[5][1]} = '0;
            'd9: {segs[5][2], segs[4][4], segs[6][2], segs[5][4], segs[5][5], segs[5][0], segs[5][1]} = '0;
            'd10: {segs[5][2], segs[4][4], segs[4][5], segs[5][4], segs[5][5], segs[5][0], segs[5][1]} = '0;
            'd11: {segs[5][2], segs[4][4], segs[4][5], segs[4][0], segs[5][5], segs[5][0], segs[5][1]} = '0;
            'd12: {segs[5][2], segs[4][4], segs[4][5], segs[4][0], segs[4][1], segs[5][0], segs[5][1]} = '0;
            'd13: {segs[5][2], segs[4][4], segs[4][5], segs[4][0], segs[4][1], segs[4][2], segs[5][1]} = '0;
            'd14: {segs[5][2], segs[4][4], segs[4][5], segs[4][0], segs[4][1], segs[4][2], segs[3][4]} = '0;
            'd15: {segs[3][5], segs[4][4], segs[4][5], segs[4][0], segs[4][1], segs[4][2], segs[3][4]} = '0;
            'd16: {segs[3][5], segs[3][0], segs[4][5], segs[4][0], segs[4][1], segs[4][2], segs[3][4]} = '0;
            'd17: {segs[3][5], segs[3][0], segs[3][1], segs[4][0], segs[4][1], segs[4][2], segs[3][4]} = '0;
            'd18: {segs[3][5], segs[3][0], segs[3][1], segs[3][2], segs[4][1], segs[4][2], segs[3][4]} = '0;
            'd19: {segs[3][5], segs[3][0], segs[3][1], segs[3][2], segs[2][4], segs[4][2], segs[3][4]} = '0;
            'd20: {segs[3][5], segs[3][0], segs[3][1], segs[3][2], segs[2][4], segs[2][5], segs[3][4]} = '0;
            'd21: {segs[3][5], segs[3][0], segs[3][1], segs[3][2], segs[2][4], segs[2][5], segs[2][0]} = '0;
            'd22: {segs[2][1], segs[3][0], segs[3][1], segs[3][2], segs[2][4], segs[2][5], segs[2][0]} = '0;
            'd23: {segs[2][1], segs[2][2], segs[3][1], segs[3][2], segs[2][4], segs[2][5], segs[2][0]} = '0;
            'd24: {segs[2][1], segs[2][2], segs[1][4], segs[3][2], segs[2][4], segs[2][5], segs[2][0]} = '0;
            'd25: {segs[2][1], segs[2][2], segs[1][4], segs[1][5], segs[2][4], segs[2][5], segs[2][0]} = '0;
            'd26: {segs[2][1], segs[2][2], segs[1][4], segs[1][5], segs[1][0], segs[2][5], segs[2][0]} = '0;
            'd27: {segs[2][1], segs[2][2], segs[1][4], segs[1][5], segs[1][0], segs[1][1], segs[2][0]} = '0;
            'd28: {segs[2][1], segs[2][2], segs[1][4], segs[1][5], segs[1][0], segs[1][1], segs[1][2]} = '0;
            'd29: {segs[0][4], segs[2][2], segs[1][4], segs[1][5], segs[1][0], segs[1][1], segs[1][2]} = '0;
            'd30: {segs[0][4], segs[0][5], segs[1][4], segs[1][5], segs[1][0], segs[1][1], segs[1][2]} = '0;
            'd31: {segs[0][4], segs[0][5], segs[0][0], segs[1][5], segs[1][0], segs[1][1], segs[1][2]} = '0;
            'd32: {segs[0][4], segs[0][5], segs[0][0], segs[0][1], segs[1][0], segs[1][1], segs[1][2]} = '0;
            'd33: {segs[0][4], segs[0][5], segs[0][0], segs[0][1], segs[0][2], segs[1][1], segs[1][2]} = '0;
            'd34: {segs[0][4], segs[0][5], segs[0][0], segs[0][1], segs[0][2], segs[0][3], segs[1][2]} = '0;
            'd35: {segs[0][4], segs[0][5], segs[0][0], segs[0][1], segs[0][2], segs[0][3], segs[1][3]} = '0;
            'd36: {segs[2][3], segs[0][5], segs[0][0], segs[0][1], segs[0][2], segs[0][3], segs[1][3]} = '0;
            'd37: {segs[2][3], segs[3][3], segs[0][0], segs[0][1], segs[0][2], segs[0][3], segs[1][3]} = '0;
            'd38: {segs[2][3], segs[3][3], segs[4][3], segs[0][1], segs[0][2], segs[0][3], segs[1][3]} = '0;
            'd39: {segs[2][3], segs[3][3], segs[4][3], segs[5][3], segs[0][2], segs[0][3], segs[1][3]} = '0;
            'd40: {segs[2][3], segs[3][3], segs[4][3], segs[5][3], segs[6][3], segs[0][3], segs[1][3]} = '0;
            'd41: {segs[2][3], segs[3][3], segs[4][3], segs[5][3], segs[6][3], segs[7][3], segs[1][3]} = '0;
            'd42: {segs[2][3], segs[3][3], segs[4][3], segs[5][3], segs[6][3], segs[7][3], segs[7][4]} = '0;
            'd43: {segs[7][0], segs[3][3], segs[4][3], segs[5][3], segs[6][3], segs[7][3], segs[7][4]} = '0;
            'd44: {segs[7][0], segs[7][1], segs[4][3], segs[5][3], segs[6][3], segs[7][3], segs[7][4]} = '0;
            'd45: {segs[7][0], segs[7][1], segs[7][2], segs[5][3], segs[6][3], segs[7][3], segs[7][4]} = '0;
            'd46: {segs[7][0], segs[7][1], segs[7][2], segs[6][4], segs[6][3], segs[7][3], segs[7][4]} = '0;
            default: begin
                
            end
        end
    end
    
endmodule

