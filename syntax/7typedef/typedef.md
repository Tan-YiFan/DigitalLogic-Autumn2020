# 高级语法（1）：typedef

数字电路中，万物皆为二进制。

类型同一为`logic`，符合这一规律。但这对程序员，可能不太友好。

* 需要管理变量的位数
* 同一位数的信号，可能意义完全不同

对此，引入自定义类型语法`typedef`。

## 1 typedef基础

基本格式为：`typedef 已有类型 新类型;`

```verilog
typedef logic[31:0] word_t;
typedef logic[5:0] entry_t;
typedef entry_t[31:0] table_t;
```

声明与使用变量的语法：

```verilog
word_t a, b;
assign b = {a[15:0], a[31:16]};

table_t table1; // logic [31:0][5:0]
assign table1[1] = '0;
assign table1[0][1] = '0;
```

用途举例：

```verilog
typedef logic[3:0] code_t;
typedef logic[15:0] info_t;

typedef logic[31:0] paddr_t; // physical address
typedef logic[31:0] vaddr_t; // virtual address
```



## 2 struct

结构体struct可以描述一组相关的数据。

以译码器为例，按以前的写法，可能需要这样写：

```verilog
alufunc_t alufunc;
logic mem_read;
logic mem_write;
logic regwrite;

logic [6:0] control;
assign control = {alufunc, mem_read, mem_write, regwrite};
```

结构体类型相关的语法如下：

```verilog
// type definition
typedef struct packed {
    logic [3:0] alufunc;
    logic mem_read;
    logic mem_write;
    logic regwrite;
    logic [3:0] reg_addr;
} control_t;

// variable declaration
control_t control;

logic regwrite;
assign regwrite = control.regwrite;

// using structs without typedef
struct packed {
    logic [3:0] alufunc;
    logic mem_read;
    logic mem_write;
    logic regwrite;
} control_without_typedef;
```

struct语法有很多好处，用途也很广。

```verilog
typedef struct packed {
    
} pipeline_decode_t;

pipeline_decode_t p, p_nxt;
always_ff @(posedge clk) begin
    p <= p_nxt;
end
```



## 3 enum

枚举的语法形式为：

```verilog
typedef enum <datatype> {
    IDEN_1, IDEN_2
} typename;
```

举例：

```verilog
typedef enum logic [3:0] {
    ALU_ADD, ALU_AND, ALU_SUB
} alufunc_t;

alufunc_t alufunc;

enum logic [3:0] {
    ALU_ADD, ALU_AND, ALU_SUB
} alufunc_without_typedef;
```

enum语法常用于编码（包括状态机的编码）。

enum类型的变量，在Vivado仿真里会显示枚举项。（参考我的视频《编码和译码的应用》）

枚举项被视为常量，各枚举类型的枚举项名字不能冲突。

enum类型的变量，赋值时只能用枚举项。

```verilog
typedef enum logic [1:0] {
    STATE_0, STATE_1, STATE_2
} state_t;

state_t state, state_nxt;
always_ff @(posedge clk) begin
    if (~resetn) begin
        // state <= '0;
        state <= state_t'(0);
    end else begin
        state <= state_nxt;
    end
end
```

## 4 union

联合类型的语法：

```verilog
typedef union packed {
    struct packed {
        logic zero;
        logic [31:0] aluout;
    } alu;
    struct packed {
        logic branch_taken;
        logic [31:0] pcbranch;
    } branch;
    struct packed {
        logic [31:0] addr;
        logic mem_read;
    } memory;
} result_t;

result_t res;

logic [31:0] addr, aluout;
assign addr = res.memory.addr; // assign addr = res[32:1]
assign aluout = res.alu.aluout; // assign aluout = res[31:0]

assign res.alu.aluout = '1;
```

对union类型的变量进行赋值时，要注意多驱动。