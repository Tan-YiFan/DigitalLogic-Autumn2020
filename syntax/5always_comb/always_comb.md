# 电路语句（三）：always_comb

always_comb用于描述复杂电路

```verilog
always_comb begin
    a = 1'b1;
    b = a;
    a = 1'b0;
    c = a;
end
```

always_comb内部每条语句都是赋值语句。不能出现电路语句。

always_comb内部描述电路行为。

always_comb有以下性质：

* 内部覆盖性

* 对外原子性

  ```verilog
  assign a = b;
  always_comb begin
      b = 1'b1;
      c = a; // c = b
      b = 1'b0;
  end
  ```

* 阻塞赋值

always_comb内部允许if，case等控制语句。