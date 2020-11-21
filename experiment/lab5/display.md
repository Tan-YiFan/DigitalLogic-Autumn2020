# 时序电路入门：触发器

## 1. 简单的D触发器

![ff](asset\ff.jpg)

新的真值表：

| $D$  | 时钟$clk$ | $Q_{n+1}$ |
| ---- | --------- | --------- |
| x    | 0         | $Q_n$     |
| 0    | ↑         | 0         |
| 1    | ↑         | 1         |

```verilog
always_ff @(posedge clk) begin /* flip_flop */ 
    Q <= D;
end
```



## 2. 带复位的D触发器

![ff_reset](D:\2020Autumn\DigitalLogic\DigitalLogic-Autumn2020\experiment\lab5\asset\ff_reset.jpg)

| $D$  | $clk$ | $Reset$（低电平有效， 同步） | $Q_{n+1}$ |
| ---- | ----- | ---------------------------- | --------- |
| x    | 0     | x                            | $Q_n$     |
| x    | ↑     | 0                            | 0         |
|      | ↑     | 1                            | $D$       |

```verilog
always_ff @(posedge clk) begin
    if (~resetn)
    	Q <= '0;
    else
        Q <= D;
end
```

| $D$  | $clk$ | $R$（低电平有效， 异步） | $Q_{n+1}$ |
| ---- | ----- | ------------------------ | --------- |
| x    | x     | ↓                        | 0         |
| x    | 0     | 0 or 1 or ↑              | $Q_n$     |
| x    | ↑     | 0                        | 0         |
|      | ↑     | 1                        | $D$       |

```verilog
always_ff @(posedge clk, negedge resetn) begin
    if (~resetn)
    	Q <= '0;
    else
        Q <= D;
end
```

## 3. 带使能的D触发器

| $D$  | $clk$ | $en$ | $Q_{n+1}$ |
| ---- | ----- | ---- | --------- |
| x    | 0     | x    | $Q_n$     |
| x    | ↑     | 0    | $Q_n$     |
|      | ↑     | 1    | $D$       |

```verilog
always_ff　@(posedge clk) begin
    if (en) begin
        Q <= D;
    end
end
```

## 4. 抽象化的电路图

<img src="D:\2020Autumn\DigitalLogic\DigitalLogic-Autumn2020\experiment\lab5\asset\circuit.jpg" alt="circuit" style="zoom:50%;" />
$$
Q_{n+1} = F(Q_n)
$$

```verilog
logic q, q_nxt;
always_ff @(posedge clk) begin
    if (~resetn) begin
        q <= '0;
    end else if (en) begin
        q <= q_nxt;
    end
end

always_comb begin
    q_nxt = q;
    // ...
end
```

不要这么写：

```verilog
logic q, q_nxt;
always_ff @(posedge clk) begin
    q <= q_nxt;
    // q <= ~resetn & (en ? q : q_nxt);
end

always_comb begin
    q_nxt = q;
    // ...
    q_nxt = en ? q : q_nxt;
    q_nxt = q_nxt & resetn;
end
```

