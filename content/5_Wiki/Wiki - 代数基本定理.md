---
aliases: 
info: 代数基本定理
date: 2023-09-18-星期一 09:02
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230918090240
banner: "![[astrowalk.gif]]"
---
---

## The 1 代数基本定理

次数≥1 的复系数多项式 f (x) 在复数域 [[Wiki - 数域]]中至少有一个根 [[Wiki - 多项式的根]].

### Proof

1、运用反证法，如果没有根，则 $\frac{1}{f(z)}$ 是有界整函数，再用 [[Wiki - 整函数的Liouville定理]]推出是常值函数，矛盾

2、用幅角原理[[Wiki - 幅角原理]]

3、用 rouche 定理 [[Wiki - Rouche定理]]

## Cal 1
```ad-theorem
title: Theorem 1

复数域 $\mathbb{C}$ 上每个次数 n≥1 的多项式 $f(\:x\:)\:=\:a_{n}x^{n}\:+a_{n-1}x^{n-1}+\cdots+a_{1}x+a_{0}$ 都可以**唯一地分解为一次因式的乘积**

$$
f(\:x\:)=\:a_{n}(\:x-x_{1})\cdots(\:x-x_{n})
$$


```

[[Wiki - 多项式因式分解定理]]
### Proof

对 n 归纳



