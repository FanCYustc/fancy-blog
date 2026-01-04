---
aliases:
  - RCD
info:
date: 2025-12-11-星期四
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/期望方差
  - 实分析/测度论
id: wiki20251211112000
banner: "![[astrowalk.gif]]"
---

## Def 1 正则条件分布 (Regular Conditional Distribution)

设 $(\Omega, \mathcal{F}, \mathbb{P})$ 是一个概率空间，$X$ 是取值于可测空间 [[Wiki - 概率空间]] $(S, \mathcal{S})$ 的随机变量，$\mathcal{G} \subset \mathcal{F}$ 是一个子 $\sigma$ -代数。

$X$ 给定 $\mathcal{G}$ 的**正则条件分布**是一个函数 $\mu: \Omega \times \mathcal{S} \to [0, 1]$，满足以下三个条件：

1.  **微观正则性（是测度）**：对于每一个固定的 $\omega \in \Omega$，集函数 $\mu(\omega, \cdot)$ 是 $(S, \mathcal{S})$ 上是一个**概率测度**。[[Wiki - 概率测度]]
2.  **宏观可测性（是随机变量）**：对于每一个固定的 $B \in \mathcal{S}$，函数 $\omega \mapsto \mu(\omega, B)$ 是 $\mathcal{G}$-可测的。
3.  **一致性（是条件概率）**：对于任意 $B \in \mathcal{S}$，有
    $$ \mu(\cdot, B) = \mathbb{P}(X \in B | \mathcal{G}) \quad \text{a.s.} $$
    即对于任意 $A \in \mathcal{G}$，有 $\int_A \mu(\omega, B) \mathbb{P}(d\omega) = \mathbb{P}(A \cap \{X \in B\})$。

### 为什么需要它？
普通的条件概率 $\mathbb{P}(X \in B | \mathcal{G})$ 对于每个 $B$ 只是几乎处处定义的。当我们需要同时处理不可数个 $B$ 时（例如证明某些随机过程的性质），零测集的并可能不再是零测集，导致对于固定的 $\omega$，$\mathbb{P}(X \in \cdot | \mathcal{G})(\omega)$ 可能不是一个概率测度。正则条件分布修补了这个问题，确保在每个 $\omega$ 上都是合法的分布。

## The 1 存在性定理

```ad-theorem
title: 定理 1.1 (存在性)

如果 $(S, \mathcal{S})$ 是一个 **Polish 空间**（完备可分的度量空间）及其 Borel $\sigma$-代数（例如 $\mathbb{R}^n$），则 $X$ 给定 $\mathcal{G}$ 的正则条件分布**一定存在**。
```


[[Wiki - 度量空间的稠密性|度量空间的可分性]]、[[Wiki - 度量空间的完备性]] 这涵盖了绝大多数实际应用场景。

## The 2 变量变换公式 (积分公式)

一旦有了正则条件分布 $\mu(\omega, dx)$，计算条件期望就转化为计算普通的积分。

```ad-theorem
title: 定理 1.2 (积分公式)

设 $f: S \to \mathbb{R}$ 是有界或非负的可测函数，则：
$$ \mathbb{E}[f(X) | \mathcal{G}](\omega) = \int_S f(x) \mu(\omega, dx) \quad \text{a.s.} $$
```

这个公式极其强大，它允许我们将条件期望看作是对于固定 $\omega$ 的普通期望计算。

[[Wiki - 条件期望]]
