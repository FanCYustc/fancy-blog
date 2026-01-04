---
aliases:
  - 调和函数
info: 
date: 2024-03-07-星期四 10:14
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 复分析/全纯函数
  - 数学分析/多变量微积分
id: wiki20240307101403
banner: "![[astrowalk.gif]]"
---
---

## Def 1 调和函数

```ad-definition
title: Definition 1

设 $u$ 是域 $D$ 上的实值函数，如果 $u\in C^2(D)$, 且对任意 $z\in D$, 有
$$\Delta u(z)=\frac{\partial^2u(z)}{\partial x^2}+\frac{\partial^2u(z)}{\partial y^2}=0,$$
就称 $u$ 是 D 中的调和函数. $\Delta = \frac {\partial ^2}{\partial x^2}+ \frac {\partial ^2}{\partial v^2}$ 称为 Laplace 算子.

```


[[Wiki - 散度，旋度，laplace算子#Def3 laplace 算子]]

## Pro 1

```ad-proposition
title: Propositon 1


如果 $f (z)= u (z)+ iv(z)$ 为全纯函数 ，则 u，v 都是调和函数

```

[[Wiki - 全纯函数]]


## Def 2 共轭调和函数

```ad-definition
title: Definition 2

```
设 $u$ 和 $v$ 是 $D$ 上的一对调和函数，如果它们还
满足 Cauchy-Riemann 方程[[Wiki - Cauchy-Riemann方程]]
$$\begin{cases}\dfrac{\partial u}{\partial x}=\dfrac{\partial v}{\partial y},\\\dfrac{\partial u}{\partial y}=-\dfrac{\partial v}{\partial x},\end{cases}$$
就称 $\upsilon$ 为 u 的**共轭调和函数**


## The 1 全纯函数构造

```ad-theorem
title: Theorem 1

```
设 u 是**单连通域** D [[Wiki - 连通区域#Definition 2 区域]] 上的调和函数，则**必存在** $u$ 的共轭调和函数 $\upsilon$, 使得 $u+$ i $v$ 是 $D$ 上的全纯函数

