---
aliases: 
info: 逆映射定理
date: 2023-11-30-星期四 08:50
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 数学分析/微分
  - 数学分析/多变量微积分
id: wiki20231130085010
banner: "![[astrowalk.gif]]"
---
---
是 [[Wiki - 逆映射的微商]]高观点推广

## The 1 逆映射定理

```ad-theorem
title: Theorem 1

设 $f$ 是从 $\mathbb{R}^n$ 的开集  $A$ 到 $\mathbb{R}^n$ 的 $C^1$ 映射，对 $x^0\in A$, 记 $y^0=f(x^0)$. 如果 d $f_{x^0}$ 可逆 (因此在 $\mathbb{R}^n$ 的标准基下 $f$ 的 Jacobi 矩阵 $Jf(x^0)$ 可逆), 那么

1. 存在 R $^n$ 的开集 U，V 满足 $x^0\in U,\:y^0\in V$, 使得 $f$ 限制在 $U$ 上的映射是 U 与 V 之间的一一对应，因此存在定义在 $V$ 上的逆映射 $g$, 且逆映射连续；
2. $f$ 定义在 $V$ 上的逆映射 $g$ 是 $C^{1}$ 映射，且

$$
\mathrm{d}g_y=\left(\mathrm{d}f_{g(y)}\right)^{-1},\quad\forall y\in V
$$

因此在 $\mathbb{R}^n$ 的标准基下的 $Jacobi$ 矩阵满足

$$
Jg(y)=\left(Jf(g(y))\right)^{-1},\quad\forall y\in V.
$$


```

[[Wiki - 雅各比矩阵]]

[[Wiki - 度量空间的开集闭集]]

[[Wiki - 映射的微分]]
### Proof

记 $y=f(x)$，构造 $F(x,y)=y-f(x),\mathbb{R}^{n+n}\to \mathbb{R}^{n}$

则有 $F(x^{0},y^{0})=0,J_{x}F=-J_{x}f,J_{y}F=I_{n}$ [[Wiki - 雅各比矩阵]]

由于 df 可逆 [[Wiki - 可逆线性映射]]，则由隐映射定理 [[Wiki - 隐映射定理]]，$\exists x^{0}$ 邻域 U，$y^{0}$ 邻域 V，满足存在 $g: V\to U, g(y)=x$

有 $g (y^{0})=x^{0}, F (g (y), y)\equiv 0$

对雅各比矩阵，有
$$
Jg=-(J_{x}F)^{-1}(J_{y}F)=(J_{x}f)^{-1}
$$

由隐映射定理


 
