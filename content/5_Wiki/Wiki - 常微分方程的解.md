---
aliases: []
info: ODE解的定义、通解
date: 2023-09-07-星期四 10:16
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 微分方程/ODE
id: wiki20230907101629
banner: "![[astrowalk.gif]]"
---
---

## Def 1 常微分方程的解

```ad-definition
title: Definition 1

设函数 $y= \varphi(x)$ 在区间 J 上连续, 且有直到 n 阶的导数. 如果把 $y= \varphi(x)$ 及其相应的各阶导数代入方程 , 得到关于x的恒等式，即
$$
F(x,\varphi(x),\varphi'(x),\dots,\varphi^{(n)}(x))=0
$$

对一切 $x\in J$ 都成立, 则 $y= \varphi (x)$ 叫作微分方程在区间 J 上的一个解


```

## Def  2 通解

```ad-definition
title: Definition 2

N 阶微分方程的解
$$
y=\varphi(x,C_{1},C_{2},\dots,C_{n})
$$
包含 n 个**独立的**常数 $C_{i}$，称为通解
独立性指
$$\frac{D[\varphi,\varphi^{\prime},\cdots,\varphi^{(n-1)}]}{D[C_{1}^{^{\prime}},C_{2},\cdots,C_{n}]}\neq0,$$
```

[[Wiki - 雅各比矩阵]]

[[Wiki - 行列式与可逆]]


## Def 3 特解

```ad-definition
title: Definition 3

当解不含任意常数 $C_{i}$，称为特解

```

```ad-info


对有 n 个独立常数的理解：
1、n 阶导积 n 次分，每次多一个常数
2、定初值求特解，需要 n 个初值，才能由局部解得到全局解


```



