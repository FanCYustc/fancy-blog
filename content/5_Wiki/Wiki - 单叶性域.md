---
aliases: 
info: 多值函数分成单叶
date: 2024-03-07-星期四 11:25
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 复分析/全纯函数
id: wiki20240307112525
banner: "![[astrowalk.gif]]"
---
---

## Def 1 单叶性域

```ad-definition
title: Definition 1

对函数 $f:\Omega\to \mathbb{C}$，满足只要 $z_{1}\neq z_{2}$，就有 $f(z_{1})\neq f(z_{2})$，就称 $\Omega$ 为 f 的一个单叶性域，f 在 $\Omega$ 上**单叶**

特别的既单叶又全纯的函数称为 $\Omega$ 上的**双全纯函数**

```

[[Wiki - 全纯函数]]

## Pro1 导数不为 0

```ad-proposition
title: Propositon 1

若 f 是域 D 内的单叶全纯函数，那么 $f' (z)\neq \forall z\in D$

```

**反过来不成立！**

### Proof 

反证，如果 $f'(z_{0})=0$，那么 $z_{0}$ 是 $f(z)-f(z_{0})$ 的至少 2 级零点，由 ![[Wiki - 唯一性定理#Cal 1]]
也就是说，存在 $z_{1}, z_{2}\in B(z_{0},\rho)$，使得 $f (z_{1})=f (z_{2})=a\in B(f(z_{0}),\delta)$，与单叶性矛盾


## Cal1 

对 $f\in H (D), f' (z_{0})\neq 0, z_{0}\in D$，则 $f$ 在 $z_{0}$ 邻域内是单叶的