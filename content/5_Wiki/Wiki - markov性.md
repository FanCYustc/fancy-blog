---
aliases: 
info: 
date: 2024-06-13-星期四 20:00
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613200020
banner: "![[astrowalk.gif]]"
---
---

## Def 1 markov 性

```ad-definition
title: Definition 1

对随机过程 $\{X (t), t\in \Gamma \subset \mathbb{R}\}$，状态空间为 S，$\forall t_1<t_2<\cdots<t_n<t,t_i,t\in\Gamma,x_i\in S$, $B\in\mathcal{B}(S)$, 
$$\mathrm{P}\left (X (t)\in B\mid X (t_1)=x_1,\ldots, X (t_{n-1})=x_{n-1}, X (t_n)=x_n\right) =\mathrm{P}\left (X (t)\in B|X (t_n)=x_n\right)
$$

即只与最近的一次局部历史有关，称为 markov 性

```

Poison 过程 [[Wiki - poison过程]]，[[Wiki - 非齐时poison过程]]， [[Wiki - brown运动]]都具有 markov 性

