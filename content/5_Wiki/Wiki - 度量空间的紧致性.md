---
aliases:
  - 海涅定理
info: 抽象海涅定理的内容
date: 2023-11-11-星期六 22:35
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 几何学/度量空间
  - 泛函分析
id: wiki20231111223512
banner: "![[astrowalk.gif]]"
---
---

## The 1 heine-borel 定理

```ad-theorem
title: Theorem 1

```
度量空间是紧致的当且仅当它具有 heine-Borel 性质，即任何开覆盖都有有限子覆盖

[[Wiki - 紧致集合#Def 1 开覆盖]]

### Proof

需要引理

```ad-lemma
title: Lemma 

任何紧致度量空间存在至多可数的稠密子集

```

其他证明类似 [[Wiki - 紧致集合]]中的证明

## Pro 1 

在度量空间中，自列紧 [[Wiki - 列紧空间]]等价于紧致

### Proof


$\leftarrow:$ 首先说明紧集是闭集 [[Wiki - 度量空间的开集闭集]] ：

若 $A\neq X$，任取 $x\in X / A$，则 $\left\{ B\left(y, \frac{1}{3}d(x,y) \right)\right\}_{y\in A}$ 是 A 的开覆盖，则由紧性存在 $\left\{ B\left( y_{n}, \frac{1}{3} d(x, y_{n})  \right) \right\}$ 为有限子覆盖，取 $\delta = \frac{1}{3}\min_{n} d(x,y_{n})$，则 $B\left ( x, \frac{1}{2}\delta \right)\subset X /A$，所以 $X / A$ 为开集


假设紧致集不是自列紧的，即存在 $\{x_{n}\}$ 互不相同，没有收敛子列。设 $S_{n} = \{x_{k}\}_{k=1}^{\infty} / \{x_{n}\}$，则每个 $S_{n}$ 都是闭集，于是 $X / S_{n}$ 是开集

所以 $\bigcup_{n=1}^{\infty} (X / S_{n})=X / \bigcap_{n=1}^{\infty}S_{n}=X$，是有限开覆盖，矛盾

$\rightarrow$ ：假设 A 自列紧但不紧，则存在开覆盖 $\{G_{\alpha}\}_{\alpha\in I}$ 没有有限子覆盖

由于自列紧即完全有界，则 $\forall n, \exists N_{n} = \{y_{1}^{(n)},\dots, y_{m_{n}}^{(n)}\}$ 为 A 的有限 $\frac{1}{n}-$ 网。所以 $\forall n,\exists y_{n}\in N_{n},B\left( y_{n}, \frac{1}{n} \right)$ 不能被有限个 $G_{\alpha}$ 覆盖。

由自列紧，存在子列 $\{y_{n_{k}}\}\to y_{0}$，设 $y_{0}\in G_{\alpha_{0}}$，则 $\exists B (y_{0},\delta)\subset G_{\alpha_{0}}$。而当 $n_{k}$ 充分大时，有 $B\left ( y_{n_{k}}, \frac{1}{n_{k}} \right)\subset B (y_{0}, \delta) \subset G_{\alpha_{0}}$，矛盾