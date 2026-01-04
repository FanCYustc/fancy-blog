---
aliases:
  - 选择公理
info: 
date: 2024-03-17-星期日 16:26
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
id: wiki20240317162650
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - lebesgue可测]]

之前说明 [[Wiki - lebesgue可测集的性质#Pro 1]]，即 $B_{\mathbb{R}^{d}}\subset \mathcal{L}_{\mathbb{R}^{d}}$，即存在可测的非 borel 集

下面构造 $\mathcal{L}_{\mathbb{R}^{d}}\subset P(\mathbb{R}^{d})$，即存在不可测集

## The 1 Vitali 反例

```ad-theorem
title: Theorem 1

存在 $\mathbb{R}$ 上的不可测集

```


考虑 $[0,1]$ 上的等价关系[[Wiki - 等价关系]] $x\sim y\leftrightarrow x-y\in \mathbb{Q}$

Suppose equivalence class $E_{\alpha}=\{ x\in \mathbb{R}: \alpha\sim x\}$. We can know that different E either is the same set or don't have a same member.

Choose one menber $x_{\alpha}$ from each $E_{\alpha}$ to compose set N, then $N\cap [0,1]$ is 不可测

## The 2

```ad-theorem
title: Theorem 2

A, B 有界，存在 A, B 的有限划分 $A=A_{1} \cup \dots \cup A_{k}, B=B_{1} \cup \dots \cup B_{k}$，s.t.every $B_{i}$ 可以从 $A_{i}$ 平移旋转得到

```



## The 3 选择公理

```ad-theorem
title: Theorem 3

E 为非空集合，$E_{\alpha}\subset E$ 为 E 的非空子集族，$\alpha\in I$ 则存在一个选择函数，$\alpha\in I\to x_{\alpha}\in E_{\alpha}$，s.t. $\forall \alpha\in I, x_{\alpha}\in E_{\alpha}$

```


```ad-note

**选择公理是 N 可以构造出的前提**


```
