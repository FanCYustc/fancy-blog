---
aliases: [Prokhorov Theorem, 普罗霍罗夫定理]
info: 弱收敛相对紧性与一致胎紧性的等价关系
date: 2025-12-15-星期一 14:25
update: 
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
id: wiki20251215142501
banner: "![[astrowalk.gif]]"
---

# Prokhorov 定理

**Prokhorov 定理** (Prokhorov Theorem) 是概率论中关于弱收敛的最重要定理之一。它建立了概率测度族在弱拓扑下的 **相对紧性 (Relative Compactness)** 与 **[[Wiki - 胎紧性|一致胎紧性]] (Uniform Tightness)** 之间的等价关系。

## 定理表述

设 $(S, d)$ 是一个 **Polish 空间**（完备可分度量空间），$\mathcal{M} \subset \mathcal{P}(S)$ 是一族概率测度 [[Wiki - 概率测度]]。

[[Wiki - 度量空间的完备性]]、[[Wiki - 度量空间的稠密性|度量空间的可分性]]

$\mathcal{M}$ 在弱拓扑下是 **相对紧的** (Relatively Compact) $\iff$ $\mathcal{M}$ 是 **一致胎紧的** (Uniformly Tight)。


### 术语解释

1.  **相对紧**: 指 $\mathcal{M}$ 在弱拓扑下的闭包[[Wiki - 度量空间的内部外部|闭包和内部]] $\overline{\mathcal{M}}$ 是紧的。这意味着 $\mathcal{M}$ 中的任意序列 $\{\mu_n\}$ 都包含一个弱收敛的子列 $\mu_{n_k} \Longrightarrow \mu$（其中极限 $\mu$ 也是一个概率测度）。[[Wiki - 复变函数内闭一致收敛|相对紧]]
2.  **一致胎紧**: 参见 [[Wiki - 胎紧性#概率测度族的一致胎紧性]]。

## 意义与应用

Prokhorov 定理的重要性在于它提供了一种**证明弱收敛子列存在**的可操作方法。在无穷维空间（如随机过程的轨道空间 $C[0,1]$）中，直接构造收敛子列非常困难，而验证一致胎紧性往往通过具体的判别准则（如 Arzelà-Ascoli 定理的随机版本）来实现。

[[Wiki - 一致等度连续|Arzelà-Ascoli 定理]]
### 典型应用步骤

1.  **目标**: 证明随机变量序列 $X_n$ 依分布收敛到 $X$。[[Wiki - 依分布收敛]]
2.  **步骤 1 (胎紧性)**: 证明序列 $\{X_n\}$ 的分布族是一致胎紧的。由 Prokhorov 定理，这保证了至少存在一个收敛子列。
3.  **步骤 2 (有限维投影/唯一性)**: 证明所有可能的收敛子列的极限都是同一个分布（通常通过特征函数、矩或有限维分布的收敛来确定）。
4.  **结论**: 整个序列收敛到该极限。

## Helly 选择定理的关系

Prokhorov 定理可以看作是实数轴上 **Helly 选择定理** 的推广。Helly 定理指出，对于任意分布函数序列，总存在一个子列模糊收敛 (vague convergence) 到一个非降右连续函数。Prokhorov 定理补充了“质量不损失”（即极限仍为概率测度）的条件，即一致胎紧性。
