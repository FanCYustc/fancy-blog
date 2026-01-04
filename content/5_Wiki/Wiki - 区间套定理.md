---
aliases:
  - 闭球套定理
info: 区间套定理
date: 2023-09-14-星期四 08:33
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 数学分析/实数
  - 几何学/度量空间
id: wiki20230914083322
banner: "![[astrowalk.gif]]"
---
---


## The 1 区间套定理
```ad-theorem
title: Theorem 1


设有一列闭区间 $[a_n,\: b_n],\:n=1, 2,\cdots$ ，满足下列条件
$$
1^\circ\:[a_1,\:b_1]\supset[a_2,\:b_2]\supset\cdots\supset[a_n,\:b_n]\supset\cdots 
$$
$$
2^{\circ}\quad\lim_{n\to\infty}(b_n-a_n)=0,
$$
则存在唯一的实数 x 属于所有 $[a_{n},b_{n}]$


```

[[Wiki - 实数的定义]]
### Proof

左端点、右端点都构成 cauchy 列 [[Wiki - 柯西收敛准则]]
由于 $\lim_{ n \to \infty }(b_{n}-a_{n})=0$, 两 cauchy 列极限相等
唯一性反证即可


## The 2 推广闭球套定理

设度量空间 [[Wiki - 度量空间]] $(X, d)$ 完备[[Wiki - 度量空间的完备性]]，$\{B_n\}_{n=1}^\infty$ 是一列闭球, 使得

$$\begin{aligned}&1. B_1\supset B_2\supset\cdots\\&2. \mathrm{diam}B_n\to0\end{aligned}$$

则存在唯一的 $x\in X$，使得 $\bigcap_{n=1}^{\infty}B_{n} =\{x\}$

