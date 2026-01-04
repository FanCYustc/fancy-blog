---
aliases: 
info: 分布的特征函数的唯一性
date: 2023-11-22-星期三 21:25
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/特征
  - fourier分析
id: wiki20231122212551
banner: "![[astrowalk.gif]]"
---
---

## The 1 

```ad-theorem
title: Theorem 1
```
分布函数 [[Wiki - 分布函数]]由其特征函数 [[Wiki - 随机变量的特征函数]]唯一确定


### Proof

设 $F_1$ 和 $F_2$ 是两个 cdf，有共同的c.f. 下面证明 $F_1=F_2.$ 为此，设 $a,b\in C(F_1)\cap C(F_2)$, $a<b$, 则由逆转公式 [[Wiki - 特征函数的逆转公式]]知

$$
F_1(b)-F_1(a)=F_2(b)-F_2(a).
$$

令 a 沿 $C(F_1)\cap C(F_2)$ 趋于 $-\infty$, 则得

$$
F_1(b)=F_2(b),
$$

即在 $C(F_1)\cap C(F_2)$ 上，$F_1=F_2$. 从而由 cdf 的右连续性知，在 $\mathbb{R}$ 上 $F_1=F_2$.




