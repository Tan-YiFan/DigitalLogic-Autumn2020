# **always_comb中的控制语句：if和for**

`if`和`for`是`always_comb`中的常用语法。

## if

`if`和`else`用于条件判断。

```verilog
always_comb begin
    b = 1'b0;
    if (a[3]) begin
        b = 1'b1;
    end else if (a[2]) begin
        b = 1'b0;
    end else begin
        
    end
end
```

和`case`要有`default`类似，在`always_comb`中，`if`也应有`else`。

## for

`for`在always_comb中，会被解释为循环展开。

`for`相关的语句：`break`，`continue`

```verilog
logic [15:0]a;
logic [3:0] b;

always_comb begin
    b = '0;
    for (int i = 15; i >= 0; i--) begin
        if (a[i]) begin
            b = i[3:0];
            break;
        end
    end
end
```

循环变量的上下界都应为常数。

```verilog
always_comb begin
    for (int i = 0 ; i < 16; i ++) begin
        if (i >= n) break;
    end
end
```

`for`和`if`即可表示行为，也可生成电路。

```verilog
always_comb begin
    for (int i = 0; i < 16; i++) begin
        a[i] = b[i] & (c[i] == d[i] | e[i]); // 编译器不认为i是常数，a[i:i+3]非法
    end
end

for (genvar i = 0; i < 16; i++) begin
    assign a[i] = b[i] & (c[i] == d[i] | e[i]); // 编译器认为i是常数，a[i:i+3]合法
    always_comb begin
        
    end
end
```

