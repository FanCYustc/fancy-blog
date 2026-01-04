---
aliases: 
info: 有界变差的充要条件
date: 2024-05-20-星期一 16:04
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/函数
  - 实分析/测度论
id: wiki20240520160421
banner: "![[astrowalk.gif]]"
---
---

## The 1 Jordan 分解定理 (有界变差函数)

```ad-theorem
title: Theorem  1

$f\in BV[a,b]$ 当且仅当 $f=g-h$，$g, h:[a,b]\to \mathbb{R}$，单调递增

```

[[Wiki - 有界变差函数]]

[[Wiki - 单调函数的性质]] 
### Proof

若 $f=g-h$，$V_{a}^{b}(g)<\infty,V_{a}^{b}(h)<\infty$，由变差的性质 3 可知 $V_{a}^{b}(f)<\infty$ ![[Wiki - 有界变差函数#Pro 2 变差的性质]]

反过来，取 $f\in BV[a,b],g(x)=V_{a}^{x}(f)$，则 g 是单调递增函数，证 $h(x)=V_{a}^{x}(f)-f(x)$ 单调递增

即证 $V_{a}^{x_{2}}(f)-V_{a}^{x_{1}}(f) -(f (x_{2})-f (x_{1}))\geq 0,x_{2}>x_{1}$

## The 2 Jordan 分解定理 (符号测度)

对于任意符号测度 $\nu$，存在唯一的两个相互奇异的（正）测度 $\nu^+$ 和 $\nu^-$，使得：
$$ \nu = \nu^+ - \nu^- $$
且 $\nu^+ \perp \nu^-$（即存在 $A \in \mathcal{F}$ 使得 $\nu^+(A^c)=0$ 且 $\nu^-(A)=0$）。

*   $\nu^+$ 称为 $\nu$ 的**正变差部分** (positive variation)，定义为 $\nu^+(E) = \nu(E \cap P)$，其中 $P$ 为 Hahn 分解中的正集。
*   $\nu^-$ 称为 $\nu$ 的**负变差部分** (negative variation)，定义为 $\nu^-(E) = -\nu(E \cap N)$，其中 $N$ 为 Hahn 分解中的负集。
*   $|\nu| = \nu^+ + \nu^-$ 称为 $\nu$ 的**全变差** (total variation)。

[[Wiki - 符号测度]]


