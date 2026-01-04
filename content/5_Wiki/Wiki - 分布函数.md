---
aliases:
  - cdf
info: 分布函数的性质
date: 2023-08-20-星期日 11:43
update:
tags:
  - wiki/year2023
  - wiki/month08
  - 概率论/随机变量
id: wiki20230820114315
banner: "![[astrowalk.gif]]"
---
---
#概率论/概率分布 
## Def 1 随机变量的分布

```ad-definition
title: 随机变量的分布
设 $( \Omega, \mathcal{F}, P )$ 为概率空间，$X: (\Omega, \mathcal{F}) \to (S, \mathcal{S})$ 为随机变量。对任意 $B \in \mathcal{S}$，定义 $P_X(B) := P(X^{-1}(B))$，则称 $P_X$ 为随机变量 $X$ 的分布。

如果 $(S, \mathcal{S}) = (\mathbb{R}, \mathcal{B}(\mathbb{R}))$，则称如下函数 $F_X(x) := P_X((-\infty, x]) = P(X \leq x), x \in \mathbb{R}$ 为 $X$ 的分布函数。

根据分布函数的性质，$F_X(x)$ 是单调不减、右连续的，且满足 $F_X(-\infty) = 0$，$F_X(+\infty) = 1$。
```

[[Wiki - 概率空间]]、[[Wiki - 随机变量]]

## The 1 分布函数的性质的充要性

定义在实数域 $\mathbb{R}$ 上的函数 $F (x)$是一个分布函数, 当且仅当它具有非降性、右连续性和规范性 3 条性质


[[Wiki - 分布函数的逆]]、[[Wiki - 分布函数的性质]]

## The 2 

设 X, Y 是两个取值于 S 的随机变量，$\mathcal{A}$ 是一个 $\pi-$ 类满足 $S= \sigma(\mathcal{A})$。如果 $P_{X}(A)= P_{Y}(A),\forall A\in \mathcal{A}$，则 X 与 Y 同分布（即 $P(X=Y)=1$）

### Proof

应用 [[Wiki - π-λ定理]]

