---
aliases:
  - 全纯函数零点的孤立性
info: 
date: 2024-05-16-星期四 11:21
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析
id: wiki20240516112145
banner: "![[astrowalk.gif]]"
---
---

## The 1 零点的孤立性

```ad-theorem
title: Theorem 1

```
不恒为 0 的全纯函数 [[Wiki - 全纯函数]]的零点是孤立[[Wiki - 聚点和孤立点]]的


### Proof

对 m 阶零点 $z_{0}$，设 $f (z)=(z-z_{0})^{m}g (z), z\in B(z_{0},r)$，且 $g (z)\in H(B(z_{0},r)),g(z)\neq 0$ [[Wiki - 全纯函数的Taylor展开#Pro 1]]

所以 $f (z)\neq 0, z\in B(z_{0},r)$

## Cal 1 

```ad-proposition

设 $f$ 是域 $D$ 中的全纯函数，$z_0\in D$, 记 $w_0=$ $f(\boldsymbol{z}_0)$, 如果 $\boldsymbol z_0$ 是 $f(\boldsymbol z)-\boldsymbol w_0$ 的 $m$ 阶零点，那么对于充分小的 $\rho>$ $0,必存在\delta>0$, 使得对于任意 $a\in B(\boldsymbol w_0,\delta),f(\boldsymbol{z})$ 一 $a$ 在 $B(\boldsymbol{z}_0,\boldsymbol{\rho})$中恰有 $m$ 个零点.

```

### Proof

用到 [[Wiki - Rouche定理]]，见 [[Book - 复变函数]]定理 4.4.4

## The 2 唯一性定理

```ad-theorem
title: Theorem 2

```
$\Omega \subset \mathbb{C}$ 为区域 [[Wiki - 连通区域]]，$E\subset\Omega$ 在 $\Omega$ 中有聚点 [[Wiki - 聚点和孤立点]]，且有 $f (z), g (z)\in H (\Omega), f (z)=g (z)\forall z\in E$，则 $f (z)\equiv g (z), z\in \Omega$


### Proof

用 The 1，见史济怀 [[Book - 复变函数]] 4.3 节证明 
