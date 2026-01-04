---
aliases: 
info: 随机向量的概率密度函数
date: 2023-10-07-星期六 11:03
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机向量
id: wiki20231007110330
banner: "![[astrowalk.gif]]"
---
---

## Def 1 概率密度函数

[[Wiki - 概率密度函数]]

对概率密度函数为 f 的随机向量 [[Wiki - 随机向量的概念]]，

```ad-definition
title: Definition 1


$$
P(X\in A)=\iint_{A}f(x)dx_{1}dx_{2}\dots dx_{n}
$$


```

**适用于连续型随机向量**

## Pro 1

```ad-proposition
title: Propositon 1

设 $\mathbf{x}=(X_1,\ldots,X_n)\sim F$, pdf 为 f 且连续, 则

$$
\mathrm{P}\left(x_1<X_1<x_1+h_1,\ldots,x_n<X_n<x_n+h_n\right)
$$

$$
=f(x_1,\ldots,x_n)h_1\cdots h_n+\circ(h_1\cdots h_n).
$$


```
