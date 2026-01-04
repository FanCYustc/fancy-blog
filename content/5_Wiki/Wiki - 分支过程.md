---
aliases: 
info: 
date: 2024-06-13-星期四 22:53
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613225359
banner: "![[astrowalk.gif]]"
---
---

## Def 1 分支过程

```ad-definition
title: Definition 1

考虑一个群体的衍化，记 $X_n$ 为第 n 代群体的大小，$n\geq0.$ 每个个体在
其生命结束时都会独立地产生后代，产生的后代个体数 Z 的 pmf 为
$\{p_i,i\geq0\}.$ MC $\{X_n,n\geq0\}$ 称为分支过程

```

[[Wiki - markov链]] 

分支过程是一种特殊的 markov 链

## The 1 

定义 $\pi_{0}=\lim_{ n \to \infty }P(X_{n}=0)$

对 $X_{1}$ 取条件 [[Wiki - 条件概率与独立性]]，有 $\pi_{0} = \sum_{j=0}^{\infty}p_{j}\pi_{0}^{j}$（每一只单独的后代都灭绝）

```ad-theorem
title: Theorem 1

$\pi_{0}$ 是满足 $\pi_{0}=\sum_{j=0}^{\infty} p_{j}\pi_{0}^{j}$ 的**最小正解**
所以有 $\pi_{0}=1\leftrightarrow \mu=EZ\leq 1$

```
