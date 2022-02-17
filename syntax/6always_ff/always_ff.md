# 电路语句（四）：`always_ff`

`always_ff`用于描述触发器。

```verilog
always_ff @(posedge clk) begin
    if (~resetn) begin
        q <= '0;
    end else if (en) begin
        q <= d;
    end
end
```

`always_ff`里可以描述很复杂的逻辑，但那样写不直观。写代码时，也应该参考理论课上讲的**状态方程**。

```verilog
logic [3:0] a, a_nxt;

always_ff @(posedge clk) begin
    if (~resetn) begin
        a <= '0;
    end else if (en) begin
        {a, b} <= {a_nxt, b_nxt};
    end
end

always_comb begin
    a_nxt = a;
    // ...
    unique case(a)
        4'd3: begin
            a_nxt = 4'd2;
        end
        default: begin
            
        end
    endcase
end
```

