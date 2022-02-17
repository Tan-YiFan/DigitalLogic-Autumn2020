module sim (
    
);

    logic [3:0]b, gray;
    decoder decoder(.b, .gray);
    logic [0:15][3:0]ans;
    assign ans = {
        4'b0000,
        4'b0001,
        4'b0011,
        4'b0010,
        4'b0110,
        4'b0111,
        4'b0101,
        4'b0100,
        4'b1100,
        4'b1101,
        4'b1111,
        4'b1110,
        4'b1010,
        4'b1011,
        4'b1001,
        4'b1000
    };

    task check(input logic[3:0]b);
        #10
        if (ans[b] != gray) begin
            $display("[%d ns]: expected: 0x%x, got 0x%x!\n", $time, ans[b], gray);
            #10 $finish;
        end
    endtask
    initial begin
        b = 4'b1001;
        #10 check(b);
        #10 b = 4'b0101;
        #10 check(b);
        #10 b = 4'b1111;
        #10 check(b);

        $display("PASS!\n");
        #10 $finish;
    end
endmodule
