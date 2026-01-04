---
aliases: 
info: Lebesgue控制收敛定理
date: 2023-11-30-星期四 14:28
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/极限理论
  - 收敛
  - 实分析/lebesgue积分
id: wiki20231130142846
banner: "![[astrowalk.gif]]"
---
---

## The 1 Lebesgue 控制收敛定理

概率论形式：

```ad-theorem
title: Theorem 1
```
设 $X_n\xrightarrow{p}X$. 若存在随机变量 $Y\in L_1$, 使得对一切 $n\geqslant1$, 都有 $|X_n|\leqslant |Y|,$ 则 $X,X_n\in L_1$,[[Wiki - 数学期望]] 且 $\mathbb{E}X_n\to\mathbb{E}X.$[[Wiki - 平均收敛]]


类似 [[Wiki - 函数项级数的weierstrass定理]]


Lebesgue 积分形式：

```ad-theorem
title: Theorem 2
```
设 $E\subset\mathbb{R}^d$ 可测 [[Wiki - lebesgue可测]]，$\{f_k\}_{k=1}^\infty$ 是 $E$ 上的一列可测函数 [[Wiki - 可测函数]]且 $f_k$ 几乎逐点收敛 [[Wiki - 函数项级数]]到某个 $E$ 上函数 $f$. 若存在 $g\in L^1(E)$ [[Wiki - lebesgue积分]] 使得对任意 $k\geq1,\:|f_k|\leq g$, 则

$$
\lim_{k\to\infty}\int_E|f_k-f|\:dx=0.
$$

特别的，

$$
\lim_{k\to\infty}\int_Ef_k\:dx=\int_Ef\:dx.
$$
 

### Proof

对任意 $k\geq1$, 令 $h_k=|f_k-f|$. 因为 $|f_k|\leq g$ 且$f_k\to f$, a.e. $x\in E$, 我们有 $|f|\leq g$, a.e. $x\in E.$ 特别的，
$$h_k=|f_k-f|\leq|f_k|+|f|\leq2g,\quad\text{a.e.}x\in E.$$
从而 $2g-h_k\geq0$, a.e. $x\in E$. 对函数列 $\{2g-h_k\}_{k=1}^\infty$ 应用 Fatou 引理 [[Wiki - fatou引理]] 得
$$\int_E\lim\inf_{k\to\infty}(2g-h_k)\:\mathrm{d}x\leq\liminf_{k\to\infty}\int_E(2g-h_k)\:\mathrm{d}x.$$
因为 $f_k\to f$, a.e. $x\in E,h_k\to0$, a.e. $x\in E.$ 从而上式左端等于 2 $\int_Eg \,dx.$ 另

一方面易见上式右端等于  $2\int_{E}g \,d x-\lim\sup_{k\to\infty}\int_{E}h_{k} \,d x$。 从而
$$2\int_Eg\:\mathrm{d}x\leq2\int_Eg\:\mathrm{d}x-\lim\sup_{k\to\infty}\int_Eh_k\:\mathrm{d}x,$$

即 $\operatorname*{limsup}_{k\to\infty}\int_{E}h_{k}\leq0.$ 因为 $h_k\geq0$, 显然我们有 $\lim\inf_{k\to\infty}\int_{E}h_{k} \,d x\geq0.$ 比较两式即得 $\lim_{k\to\infty}\int_Eh_k(x) \,dx=0.$

