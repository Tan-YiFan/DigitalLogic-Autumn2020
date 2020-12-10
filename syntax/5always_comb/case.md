# always_comb中的控制语句：case

case语句常用于描述选择器和译码器。

## `unique case`

```verilog
always_comb begin
    b = 1'b0;
    unique case (a[3:0])
        4'd1: begin
            b = 1'b1;
        end
        4'd0: begin
            b = 1'b0;
        end
        default: begin
            
        end
    endcase
end
```

如果没列举所有情况且没有`default`，如何？

## `priority case`

```verilog
always_comb begin
    priority case (1'b1)
        a[3]: begin
            
        end
        a[2]: begin
            
        end
        default: begin
            
        end
    endcase
end
```

```verilog
always_comb begin
    if(a[3]) begin
        
    end else if(a[2]) begin
        
    end else if() begin  end //...
end
```

