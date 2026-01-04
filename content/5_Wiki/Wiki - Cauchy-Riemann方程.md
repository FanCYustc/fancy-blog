---
aliases: 
info: 
date: 2024-03-07-星期四 10:13
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 复分析/全纯函数
id: wiki20240307101343
banner: "![[astrowalk.gif]]"
---
---

## The 1 Cauchy-Riemann 方程

```ad-theorem
title: Theorem 1

```
将复变函数写成 $f (z)= u (x, y) +iv(x,y)$，其中 $z=x +iy$

则 f 在 $z_{0}$ 复可微 [[Wiki - 全纯函数]]等价于 u, v 在 $(x,y)$ 实可微 [[Wiki - 映射的微分]]，且满足 cauchy-Riemann 方程：

$$
\begin{cases}
\frac{{\partial u}}{\partial x} = \frac{{\partial v}}{\partial y}\\ 
\frac{{\partial u}}{\partial y} = - \frac{{\partial v}}{\partial x}
\end{cases}
$$



## Cal 1 

如果 u, v 在 $\Omega$ 上连续可微 $\in C^{1}(\Omega)$，且满足 cauchy-Riemann 方程，则 f（z）是 $\Omega$ 上的全纯函数

