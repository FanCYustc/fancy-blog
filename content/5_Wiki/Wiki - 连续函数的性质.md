---
aliases:
  - 连续函数的最值定理
info: 连续函数的复合、拓扑性质
date: 2023-10-10-星期二 10:18
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 数学分析/函数
  - 连续
id: wiki20231010101803
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 连续函数复合

```ad-proposition
title: Propositon 1

设 $g$ 为 E 上的连续函数, $f$ 为 D 上的连续函数, 且 $f(D)\subset E$. 那么复合函数

$$
(g\circ f)(x):=g\bigl(f(x)\bigr)
$$
是 D 上的连续函数

```

[[Wiki - 函数的连续性]]

## Pro 2 连续函数的拓扑性质

[[Wiki - 函数连续的等价条件#Pro 2 连续与拓扑]]

```ad-proposition
title: Propositon 2

F 连续当且仅当把闭集映射为闭集


```

```ad-proposition
title: Propositon 3

F 是紧致集合  E 上的连续函数，则 F（E）也是紧致集合。

```

[[Wiki - 紧致集合]]
### Proof

证 f (E) 是有界闭集

由 $f$ 的连续性, 对于 $\varepsilon=1,x\in E$, 存在 $x$ 的一个开邻域 $U_x$ 使得对任意 $x^{\prime}\in E\cap U_x,$ 都有 $|f(x^{\prime})-f(x)|<1$, 因此 $|f(x^{\prime})|<|f(x)|+1$, 或者说 $|f|$ 在 $E\cap U_x$ 内有上界 $|f(x)|+1.$ 
开集族 $\{U_x\mid x\in E\}$ 构成了 $E$ 的一个开覆盖, 它有有限子覆盖 $\{U_{x_1},\cdots,U_{x_N}\},$ 则 $M=$ $1+\operatorname*{max}\{|f(x_1)|,\cdots,|f(x_n)|\}$ 是 $|f|$ 的上界.


## Cal 1 最值定理

设 f 是紧集[[Wiki - 紧致集合]] E 上的连续函数，则 f 在 E 上取到最大值和最小值

