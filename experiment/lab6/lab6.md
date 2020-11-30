# 实验六 有限状态机

> 人有悲欢离合，月有阴晴圆缺。
>
> 今人未见古时月，今月曾经照古人。古人今人若流水，共看明月皆如此。

## 1 必做内容

### 1.1 数字时钟

显示时、分、秒。

为方便检测，时钟里秒的频率可以是几十赫兹。

### 1.2 十字路口红绿灯

我们要控制一组红绿灯。

绿灯维持3秒变为黄灯；黄灯维持1秒变为红灯，此时另一边变绿。

其中，有一条路车很少，我们加了一个sensor，检测这条路上有没有车（用一个开关控制）。如果没车，下一时刻就转到边绿灯，并一直为绿灯。

![image-20201129222132265](C:\Users\JimmyTan\AppData\Roaming\Typora\typora-user-images\image-20201129222132265.png)

### 1.3 加法计数器的精妙设计

```verilog
module mod_cnt #(
    parameter logic [30:0] N = 31'd100_000_000,
    parameter int W = 8 // default value
)(
	input logic clk, resetn,
    input logic en,
    output logic [W-1:0] counter,
    output logic carry // `carry` as `en` of another instance
);
    logic [W-1:0]counter_nxt;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            counter <= '0;
        end else if (en) begin
            counter <= counter_nxt;
        end
    end
    always_comb begin
        if (counter == N - 1) begin
            counter_nxt = '0;
        end else begin
            counter_nxt = counter + 1;
        end
    end
    assign carry = en && (counter == N - 1);
endmodule

module foo();
    mod_cnt #(.N(100_000), .W(4)) cnt_inst1(/*TODO*/);
    mod_cnt cnt_inst2(/*TODO*/);
endmodule
```

### 1.4 参考思路

数字时钟：

1. 确定计数器级联结构
2. 连接各计数器
3. 处理输出

红绿灯：

1. 理解状态机
2. 生成1秒和3秒的进位信号
3. 实现状态机

## 2 选做内容

有限状态机的运用是很广泛的。

### 2.1 有限状态机与组合电路

延迟很高的组合逻辑电路，我们可以分步做了。

乘法器、除法器、浮点数运算、甚至加法器。

### 2.2 有限状态机与现实世界

用有限状态机的视角去描述世界