---
aliases:
  - 测度空间
info: 抽象测度的定义
date: 2024-05-27-星期一 09:47
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/测度论
id: wiki20240527094703
banner: "![[astrowalk.gif]]"
---
---

## Def 1 可测空间

```ad-definition
title: Definition 1

设 $\mathcal{M}\subset \mathcal{P}(X)$ 为 X 上的 $\sigma-$ 代数，则称 $(X,\mathcal{M})$ 为一个可测空间

```
 
 [[Wiki - σ-代数]]

## Def 2 测度空间

```ad-definition
title: Definition 2

在可测空间上定义抽象测度 $\mu: \mathcal{M}\to [0,\infty]$，满足**可数可加性**，即若 $\{E_{j}\}\subset \mathcal{M}$ 两两不交，则 $\mu(\cup_{j=1}^{\infty}E_{j})=\sum_{j=1}^{\infty}\mu(E_{j})$，称 $\mu$ 为 $(X,\mathcal{M})$ 上的一个测度，$(X,\mathcal{M},\mu)$ 为一个**测度空间**


```


```ad-example
```
[[Wiki - lebesgue可测]]为一个例子

还有 [[Wiki - 平面区域的面积|Jordan可测]]

若 $\mu(X)<\infty$ 称为有限测度；若 $\mu(X)=1$，称为**概率测度**[[Wiki - 概率空间]]

## Pro 1 测度的性质

```ad-proposition
title: Propositon 1

设 $(X,\mathcal{M},\mu)$ 是一个测度空间. 则

$(i)$ (单调性) 对任意 $E_1,E_2\in\mathcal{M}$, 若 $E_1\subset E_2$, 则 $\mu(E_1)\leq\mu(E_2).$ 

(ii) (次可数可加性) $\{E_j\}_j=1^\infty\subset\mathcal{M}$, 则 $\mu(\bigcup_j=1^\infty E_j)\leq\sum_{j=1}^\infty\mu(E_j).$ 

(iii) (单调集列测度连续性) 设 $\{E_j\}_{j=1}^{\infty}\subset\mathcal{M}$
- 若 $E_j\nearrow$, 则 $\mu(\bigcup_{j=1}^{\infty} E_j)=\lim_{j\to\infty}\mu(E_j).$
- 若 $E_j\searrow$ 且存在 $k\geq1$ 使得 $\mu(E_k)<\infty$, 则 $\mu(\bigcap_{j=1}^{\infty}E_j)=\lim_{j\to\infty}\mu(E_j).$

```


[[Wiki - lebesgue可测集的性质]]对比哪些是共通的

### Proof

都是基于可数可加性

1、拆成 $E_{1}\cup E_{2} / E_{1}$

2、拆成 $F_{k} =E_{k} / \bigcup_{j=1}^{k-1}E_{j}$

