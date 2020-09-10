module controller (
    input logic clk, resetn,
    input logic[7:0]sw,
    output logic [7:0][6:0]segs
);
    logic one_clk;
    logic[32:0]cnt;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            cnt <= '0;
            one_clk <= '0;
        end else begin
            cnt <= cnt + sw + 12;
            one_clk <= '0;
            if (cnt >= 32'd100_000_000) begin
                cnt <= '0;
                one_clk <= '1;
            end
        end
    end
    logic [6:0]state;
    always_ff @(posedge one_clk, negedge resetn) begin
        if (~resetn) begin
            state <= '0;
        end else begin
            state <= state + 1;
            if (state == 7'd98) begin
                state <= 7'd15;
            end
        end
    end
    mylut mylut(.state, .segs);
endmodule

module mylut (
    input logic [6:0] state,
    output logic[7:0][6:0]segs
);
    always_comb begin
        segs = '1;
        unique case(state)
            0: ;
            1: {segs[0][0]} = '0;
            2: {segs[1][0], segs[0][0]} = '0;
            3: {segs[2][0], segs[1][0], segs[0][0]} = '0;
            4: {segs[3][0], segs[2][0], segs[1][0], segs[0][0]} = '0;
            5: {segs[4][0], segs[3][0], segs[2][0], segs[1][0], segs[0][0]} = '0;
            6: {segs[5][0], segs[4][0], segs[3][0], segs[2][0], segs[1][0], segs[0][0]} = '0;
            7: {segs[5][0], segs[4][0], segs[3][0], segs[2][0], segs[1][0], segs[6][0]} = '0;
            8: {segs[5][0], segs[4][0], segs[3][0], segs[2][0], segs[7][0], segs[6][0]} = '0;
            9: {segs[5][0], segs[4][0], segs[3][0], segs[7][5], segs[7][0], segs[6][0]} = '0;
            10: {segs[5][0], segs[4][0], segs[7][4], segs[7][5], segs[7][0], segs[6][0]} = '0;
            11: {segs[5][0], segs[7][3], segs[7][4], segs[7][5], segs[7][0], segs[6][0]} = '0;
            12: {segs[6][3], segs[7][3], segs[7][4], segs[7][5], segs[7][0], segs[6][0]} = '0;
            13: {segs[6][3], segs[7][3], segs[7][4], segs[7][5], segs[7][0], segs[5][3]} = '0;
            14: {segs[6][3], segs[7][3], segs[7][4], segs[7][5], segs[4][3], segs[5][3]} = '0;
            15: {segs[6][3], segs[7][3], segs[7][4], segs[3][3], segs[4][3], segs[5][3]} = '0;
            16: {segs[6][3], segs[7][3], segs[2][3], segs[3][3], segs[4][3], segs[5][3]} = '0;
            17: {segs[6][3], segs[1][3], segs[2][3], segs[3][3], segs[4][3], segs[5][3]} = '0;
            18: {segs[0][3], segs[1][3], segs[2][3], segs[3][3], segs[4][3], segs[5][3]} = '0;
            19: {segs[0][3], segs[1][3], segs[2][3], segs[3][3], segs[4][3], segs[0][2]} = '0;
            20: {segs[0][3], segs[1][3], segs[2][3], segs[3][3], segs[0][1], segs[0][2]} = '0;
            21: {segs[0][3], segs[1][3], segs[2][3], segs[0][0], segs[0][1], segs[0][2]} = '0;
            22: {segs[0][3], segs[1][3], segs[0][5], segs[0][0], segs[0][1], segs[0][2]} = '0;
            23: {segs[0][3], segs[0][4], segs[0][5], segs[0][0], segs[0][1], segs[0][2]} = '0;
            24: {segs[1][3], segs[0][4], segs[0][5], segs[0][0], segs[0][1], segs[0][2]} = '0;
            25: {segs[1][3], segs[0][4], segs[0][5], segs[0][0], segs[0][1], segs[1][4]} = '0;
            26: {segs[1][3], segs[0][4], segs[0][5], segs[0][0], segs[1][5], segs[1][4]} = '0;
            27: {segs[1][3], segs[0][4], segs[0][5], segs[2][0], segs[1][5], segs[1][4]} = '0;
            28: {segs[1][3], segs[0][4], segs[2][5], segs[2][0], segs[1][5], segs[1][4]} = '0;
            29: {segs[1][3], segs[2][4], segs[2][5], segs[2][0], segs[1][5], segs[1][4]} = '0;
            30: {segs[3][3], segs[2][4], segs[2][5], segs[2][0], segs[1][5], segs[1][4]} = '0;
            31: {segs[3][3], segs[2][4], segs[2][5], segs[2][0], segs[1][5], segs[3][4]} = '0;
            32: {segs[3][3], segs[2][4], segs[2][5], segs[2][0], segs[3][5], segs[3][4]} = '0;
            33: {segs[3][3], segs[2][4], segs[2][5], segs[4][0], segs[3][5], segs[3][4]} = '0;
            34: {segs[3][3], segs[2][4], segs[4][5], segs[4][0], segs[3][5], segs[3][4]} = '0;
            35: {segs[3][3], segs[4][4], segs[4][5], segs[4][0], segs[3][5], segs[3][4]} = '0;
            36: {segs[5][3], segs[4][4], segs[4][5], segs[4][0], segs[3][5], segs[3][4]} = '0;
            37: {segs[5][3], segs[4][4], segs[4][5], segs[4][0], segs[3][5], segs[5][4]} = '0;
            38: {segs[5][3], segs[4][4], segs[4][5], segs[4][0], segs[5][5], segs[5][4]} = '0;
            39: {segs[5][3], segs[4][4], segs[4][5], segs[6][0], segs[5][5], segs[5][4]} = '0;
            40: {segs[5][3], segs[4][4], segs[6][5], segs[6][0], segs[6][5], segs[5][4]} = '0;
            41: {segs[5][3], segs[6][4], segs[6][5], segs[6][0], segs[6][5], segs[5][4]} = '0;
            42: {segs[7][3], segs[6][4], segs[6][5], segs[6][0], segs[6][5], segs[5][4]} = '0;
            43: {segs[7][3], segs[6][4], segs[6][5], segs[6][0], segs[6][5], segs[7][4]} = '0;
            44: {segs[7][3], segs[6][4], segs[6][5], segs[6][0], segs[7][6], segs[7][4]} = '0;
            45: {segs[7][3], segs[6][4], segs[6][5], segs[6][6], segs[7][6], segs[7][4]} = '0;
            46: {segs[7][3], segs[6][4], segs[5][6], segs[6][6], segs[7][6], segs[7][4]} = '0;
            47: {segs[7][3], segs[4][6], segs[5][6], segs[6][6], segs[7][6], segs[7][4]} = '0;
            48: {segs[3][6], segs[4][6], segs[5][6], segs[6][6], segs[7][6], segs[7][4]} = '0;
            49: {segs[3][6], segs[4][6], segs[5][6], segs[6][6], segs[7][6], segs[2][6]} = '0;
            50: {segs[3][6], segs[4][6], segs[5][6], segs[6][6], segs[1][6], segs[2][6]} = '0;
            51: {segs[3][6], segs[4][6], segs[5][6], segs[0][6], segs[1][6], segs[2][6]} = '0;
            52: {segs[3][6], segs[4][6], segs[0][1], segs[0][6], segs[1][6], segs[2][6]} = '0;
            53: {segs[3][6], segs[0][0], segs[0][1], segs[0][6], segs[1][6], segs[2][6]} = '0;
            54: {segs[1][0], segs[0][0], segs[0][1], segs[0][6], segs[1][6], segs[2][6]} = '0;
            55: {segs[1][0], segs[0][0], segs[0][1], segs[0][6], segs[1][6], segs[2][0]} = '0;
            56: {segs[1][0], segs[0][0], segs[0][1], segs[0][6], segs[3][0], segs[2][0]} = '0;
            57: {segs[1][0], segs[0][0], segs[0][1], segs[4][0], segs[3][0], segs[2][0]} = '0;
            58: {segs[1][0], segs[0][0], segs[5][0], segs[4][0], segs[3][0], segs[2][0]} = '0;
            59: {segs[1][0], segs[6][0], segs[5][0], segs[4][0], segs[3][0], segs[2][0]} = '0;
            60: {segs[7][0], segs[6][0], segs[5][0], segs[4][0], segs[3][0], segs[2][0]} = '0;
            61: {segs[7][0], segs[6][0], segs[5][0], segs[4][0], segs[3][0], segs[7][5]} = '0;
            62: {segs[7][0], segs[6][0], segs[5][0], segs[4][0], segs[7][4], segs[7][5]} = '0;
            63: {segs[7][0], segs[6][0], segs[5][0], segs[7][3], segs[7][4], segs[7][5]} = '0;
            64: {segs[7][0], segs[6][0], segs[7][2], segs[7][3], segs[7][4], segs[7][5]} = '0;
            65: {segs[7][0], segs[7][1], segs[7][2], segs[7][3], segs[7][4], segs[7][5]} = '0;
            66: {segs[6][0], segs[7][1], segs[7][2], segs[7][3], segs[7][4], segs[7][5]} = '0;
            67: {segs[6][0], segs[7][1], segs[7][2], segs[7][3], segs[7][4], segs[6][1]} = '0;
            68: {segs[6][0], segs[7][1], segs[7][2], segs[7][3], segs[6][2], segs[6][1]} = '0;
            69: {segs[6][0], segs[7][1], segs[7][2], segs[5][3], segs[6][2], segs[6][1]} = '0;
            70: {segs[6][0], segs[7][1], segs[5][2], segs[5][3], segs[6][2], segs[6][1]} = '0;
            71: {segs[6][0], segs[5][1], segs[5][2], segs[5][3], segs[6][2], segs[6][1]} = '0;
            72: {segs[4][0], segs[5][1], segs[5][2], segs[5][3], segs[6][2], segs[6][1]} = '0;
            73: {segs[4][0], segs[5][1], segs[5][2], segs[5][3], segs[6][2], segs[4][1]} = '0;
            74: {segs[4][0], segs[5][1], segs[5][2], segs[5][3], segs[4][2], segs[4][1]} = '0;
            75: {segs[4][0], segs[5][1], segs[5][2], segs[3][3], segs[4][2], segs[4][1]} = '0;
            76: {segs[4][0], segs[5][1], segs[3][2], segs[3][3], segs[4][2], segs[4][1]} = '0;
            77: {segs[4][0], segs[3][1], segs[3][2], segs[3][3], segs[4][2], segs[4][1]} = '0;
            78: {segs[2][0], segs[3][1], segs[3][2], segs[3][3], segs[4][2], segs[4][1]} = '0;
            79: {segs[2][0], segs[3][1], segs[3][2], segs[3][3], segs[4][2], segs[2][1]} = '0;
            80: {segs[2][0], segs[3][1], segs[3][2], segs[3][3], segs[2][2], segs[2][1]} = '0;
            81: {segs[2][0], segs[3][1], segs[3][2], segs[1][3], segs[2][2], segs[2][1]} = '0;
            82: {segs[2][0], segs[3][1], segs[1][2], segs[1][3], segs[2][2], segs[2][1]} = '0;
            83: {segs[2][0], segs[1][1], segs[1][2], segs[1][3], segs[2][2], segs[2][1]} = '0;
            84: {segs[0][0], segs[1][1], segs[1][2], segs[1][3], segs[2][2], segs[2][1]} = '0;
            85: {segs[0][0], segs[1][1], segs[1][2], segs[1][3], segs[2][2], segs[0][1]} = '0;
            86: {segs[0][0], segs[1][1], segs[1][2], segs[1][3], segs[0][6], segs[0][1]} = '0;
            87: {segs[0][0], segs[1][1], segs[1][2], segs[1][6], segs[0][6], segs[0][1]} = '0;
            88: {segs[0][0], segs[1][1], segs[2][6], segs[1][6], segs[0][6], segs[0][1]} = '0;
            89: {segs[0][0], segs[3][6], segs[2][6], segs[1][6], segs[0][6], segs[0][1]} = '0;
            90: {segs[4][6], segs[3][6], segs[2][6], segs[1][6], segs[0][6], segs[0][1]} = '0;
            91: {segs[4][6], segs[3][6], segs[2][6], segs[1][6], segs[0][6], segs[5][6]} = '0;
            92: {segs[4][6], segs[3][6], segs[2][6], segs[1][6], segs[6][6], segs[5][6]} = '0;
            93: {segs[4][6], segs[3][6], segs[2][6], segs[7][6], segs[6][6], segs[5][6]} = '0;
            94: {segs[4][6], segs[3][6], segs[7][4], segs[7][6], segs[6][6], segs[5][6]} = '0;
            95: {segs[4][6], segs[7][3], segs[7][4], segs[7][6], segs[6][6], segs[5][6]} = '0;
            96: {segs[6][3], segs[7][3], segs[7][4], segs[7][6], segs[6][6], segs[5][6]} = '0;
            97: {segs[6][3], segs[7][3], segs[7][4], segs[7][6], segs[6][6], segs[5][3]} = '0;
            98: {segs[6][3], segs[7][3], segs[7][4], segs[7][6], segs[4][3], segs[5][3]} = '0;
            default: begin
                
            end
        endcase
    end
    
endmodule
