---
aliases: 
info: 
date: 2024-04-13-星期六 16:55
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 代数
  - 数学分析/集合
  - 实分析
id: wiki20240413165519
banner: "![[astrowalk.gif]]"
---
---

## Def 1 $\sigma$ 代数

```ad-definition
title: Definition 1



$$
\begin{aligned}
&\text{ 若 }\mathcal{A}\subset\mathcal{P}(X)\text{ 满足}\\&1.\emptyset\in\mathcal{A}.\\&2.A\in\mathcal{A}\quad\Longrightarrow\quad A^c\in\mathcal{A}.\\&3.A_n\in\mathcal{A},n\in\mathbb{N},\quad\Longrightarrow\quad\bigcup_{n=1}^\infty A_n\in\mathcal{A}.\\&\text{则称 }\mathcal{A}\text{ 为 }X\text{ 上的一个 }\sigma\text{-代数}.
\end{aligned}
$$

其中P(X)是集合X的子集全体

```

**常见的σ-代数:**

$\{\emptyset，X \}$ 是最小的 $\sigma-$ 代数，$X$ 的所有集合构成 X 最大的 $\sigma-$ 代数


```ad-example
title: Example 2

Borel 集为 $\mathbb{R}^{d}$ 中所有开集 生成的 $\sigma-$ 代数，其中包括 $\mathbb{R}^{d}$ 的所有开集、闭集，$G_{\delta}$ 集=开集的可数交，$F_{\sigma}$ =闭集的可数并

```

[[Wiki - 度量空间的开集闭集]]

![[Wiki - Borel域#Cal 1 一维 borel 域]]

Lebesgue 可测集是 $\mathbb{R}^{d}$ 上的 $\sigma-$ 代数 [[Wiki - lebesgue可测集的性质]]

## Def 2 生成 $\sigma$ 代数

```ad-definition
title: Definition 2

Suppose $\{M_{\alpha}\}_{\alpha\in I}$ 都是 X 上的 $\sigma-$ 代数，则 $\cap_{\alpha\in I}M_{\alpha}$ 也为 $\sigma-$ 代数，因此对 $\forall \epsilon\in P(X)$，存在唯一最小的包含 $\epsilon$ 的 $\sigma-$ 代数，记为 $\sigma(\epsilon)$，称为由 $\epsilon$ 生成的 $\sigma-$ 代数
```

