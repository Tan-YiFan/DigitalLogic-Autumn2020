# SV语法：Decoder and Encoder

## always_comb

`always_comb`用于描述复杂电路。

```verilog
always_comb begin

end
```

`begin end`中的语句为串行执行。

`always_comb`中的语句为`val1 = val2;`的形式。

把`always_comb`看成一个模块：所有`=`左边的变量为输出，`=`右边的（且没在`=`左边出现过）为输入。

各`always_comb`为并行关系。

## unique case

```verilog
logic [3:0]a;
logic b;
always_comb begin
    unique case(a)
        4'b1: begin
            b = 1'b1;
        end
        4'b10: begin
            b = 1'b1;
        end
        default: begin
            b = 1'b0;
        end
    endcase
end
```

## priority case

```verilog
logic [3:0]a;
always_comb begin
    priority case(1'b1) 
        a[3]: begin
            
        end
        a[2]: begin
            
        end
        a[1]: begin
            
        end
        a[0]: begin
            
        end
        
    endcase
end
```

