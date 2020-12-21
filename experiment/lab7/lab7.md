# 实验七 总线

思想：信号线复用

## 多周期CPU的总线

| 信号   | 位数 |
| ------ | ---- |
| aluout | 64   |
| valA   | 64   |
| valC   | 64   |
|        |      |
|        |      |
|        |      |
|        |      |

新的语法：union

```verilog
typedef union packed {
    struct packed {
        
    } fetch;
    struct packed {
        
    } decode;
    struct packed {
        
    } execute;
    struct packed {
        
    } memory;
    struct packed {
        
    } writeback;
} reg_data_t;
```



## 接下来两周的内容

实验做完了，接下来两周，助教可以准备：

* 实验板上的逻辑部件
* 流水线