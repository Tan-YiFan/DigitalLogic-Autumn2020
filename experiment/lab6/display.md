# 有限状态机

有限状态机是时序电路的一种应用。

## 1 计数器

我们已经写过了两位加法计数器。

可以用真值表来描述这个计数器。在这个真值表中，计数变量有次态和现态。我们也可以用状态图来描述这个计数器：

<img src="C:\Users\JimmyTan\AppData\Roaming\Typora\typora-user-images\image-20201203223159232.png" alt="image-20201203223159232" style="zoom:50%;" />

## 2 触发器模型

次态对应D触发器的输入D，现态对应D触发器的输出Q

$D = Q_{nxt} = F(\ ...)$

有限状态机的方程（D可为多位）：

$D = Q_{nxt} = F(Q, \ ...)$

## 3 有限状态机

### 3.1 状态机电路→状态转换图（现实意义）

以D触发器为例：先找有没有一部分D触发器，除时钟外的输入都来自外界。这部分D触发器不是状态机的部分。

其他，每个1位的D触发器的输出Q即1位状态变量。

然后，列状态方程，画出状态图。

### 3.2 （现实意义→）状态转换图→状态机电路

对一个随时间变化的现象，先抽象出有限个状态。

对这些状态进行编码，得到状态变量，画出状态图（处理多余状态）。

每位状态变量为一个触发器，写出状态方程后，就可以写电路了。

## 4 语法

### 4.1 计数器类型

按正常的D触发器语法即可。

```verilog
logic [3:0]q, q_nxt;

always_ff @(posedge clk) begin
    q <= q_nxt;
end

always_comb begin
    q_nxt = q + 1;
    if (~en) begin
        q_nxt = q;
    end
end
```

### 4.2 状态有实际意义

1. 枚举所有状态。

2. 计算状态用多少位来存储。

3. ```verilog
   typedef enum logic [2-1:0] {
       SOUTH_EAST_GREEN, SOUTH_EAST_YELLOW
   } state_t;
   ```

4. ```verilog
   state_t state, state_nxt;
   always_ff @(posedge clk) begin
       if (~resetn) begin
           state <= state_t'('0);
       end else begin
           state <= state_nxt;
       end
   end
   
   always_comb begin
       unique case(state)
           SOUTH_EAST_GREEN: begin
               if ...
               state_nxt = SOUTH_EAST_YELLOW;
           end
           SOUTH_EAST_YELLOW: begin
               state_nxt = SOUTH_EAST_GREEN;
           end
       endcase
   end
   
   // outputs that are related to the state
   
   logic allowed_to_go;
   assign allowed_to_go = state == SOUTH_EAST_GREEN;
   ```

   