---
aliases: 
info: 分布函数的对称性
date: 2023-11-22-星期三 21:35
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/特征
id: wiki20231122213519
banner: "![[astrowalk.gif]]"
---
---

## Def 1 分布函数的对称

设 $X\sim F$, 称 $X$ 或 F [[Wiki - 分布函数]] 是对称的，如果 $X\overset{\mathrm{d}}{\operatorname*{=}}-X$, 或

$$
F(-x)=1-F(x-),\quad x\in\Re.
$$

## The 1 与特征函数的关系

```ad-theorem
title: Theorem 1

设 $f$ 为 cdf F 的 cf, 则$f$ 为实值函数 $\Longleftrightarrow F$ 是对称的.

```

 [[Wiki - 随机变量的特征函数]]
### Proof

若 $f$ 为实值函数，则

$$
\mathbb{E}\left[e^{\mathrm{i}tX}\right]=f(t)=\overline{f(-t)}=f(-t)=\mathbb{E}\left[e^{\mathrm{i}t(-X)}\right]
$$

于是 $X$ 与 $-X$ 同分布. 再由 [[Wiki - 特征函数的唯一性定理]]可证


