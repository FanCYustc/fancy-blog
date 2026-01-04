---
aliases:
info:
date: 2025-09-29-星期一 20:37
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 概率论/概率分布
  - 概率论/随机变量
id: wiki20250929203716
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 分布函数性质

```ad-proposition
title: Propositon 1

1. F (X) 单调递增
2. $\lim_{ x \to +\infty }F(x)=1;\lim_{ x \to -\infty }F(x)=0$
3. F (X) 右连续
4. 分布函数的凸组合依然是分布函数（$F(X)=\sum\alpha_{i}F_{n}(X)$ 是分布函数，$\sum\alpha_{i}=1$）

```

### Proof 

对性质 4，利用全概率公式，有 n 个群体，选中每个群体的概率为 $\alpha_{i}$，在群体 i 中的条件概率分布函数为 $F_{n}(X)$

## Cal 1 

分布函数由于是单调且右连续的 [[Wiki - 单调函数的性质]] [[Wiki - 连续函数的性质]]，分布函数的间断点只能是第二类间断点（即 $F(x-)\neq F(x+)$），且至多有可数个间断点

