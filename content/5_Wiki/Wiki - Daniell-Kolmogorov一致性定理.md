---
aliases: Kolmogorov存在性定理
info:
date: 2025-12-19-星期五 12:05
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程
id: wiki20251219120500
banner: "![[astrowalk.gif]]"
---
# Wiki - Daniell-Kolmogorov一致性定理

## 1. 定理陈述
**Daniell-Kolmogorov 一致性定理**（或 Kolmogorov 存在性定理）断言：对于任意满足相容性条件的有限维分布族，存在唯一的概率测度与其对应。

令 $T$ 为参数集（例如 $[0, \infty)$）。假设对于任意有限序列 $\underline{t} = (t_1, \dots, t_n) \in T^n$，都有一个 $\mathbb{R}^n$ 上的概率测度 [[Wiki - 概率测度]] $Q_{\underline{t}}$。如果 $\{Q_{\underline{t}}\}$ 族满足以下两个**相容性条件 (Consistency Conditions)**：

1.  **排列不变性 (Permutation Invariance)**：
    对于任意排列 $\pi$，$Q_{(t_{\pi(1)}, \dots, t_{\pi(n)})}$ 是 $Q_{(t_1, \dots, t_n)}$ 在坐标置换下的像。即对于任意 $A_i \in \mathcal{B}(\mathbb{R})$：
    $$Q_{(t_{\pi(1)}, \dots, t_{\pi(n)})}(A_{\pi(1)} \times \dots \times A_{\pi(n)}) = Q_{(t_1, \dots, t_n)}(A_1 \times \dots \times A_n)$$

2.  **边缘化一致性 (Marginalization Consistency)**：
    对于 $m < n$，$(t_1, \dots, t_m)$ 的分布 $Q_{(t_1, \dots, t_m)}$ 应当是 $Q_{(t_1, \dots, t_n)}$ 的边缘分布。即对于任意 $A \in \mathcal{B}(\mathbb{R}^m)$：
    $$Q_{(t_1, \dots, t_n)}(A \times \mathbb{R}^{n-m}) = Q_{(t_1, \dots, t_m)}(A)$$

**结论**：
存在唯一的概率空间 [[Wiki - 概率空间]] $(\Omega, \mathcal{F}, P)$ 和随机过程 $X = \{X_t\}_{t \in T}$，使得 $X$ 的有限维分布正是 $\{Q_{\underline{t}}\}$。
通常取 $\Omega = \mathbb{R}^T$（所有函数的空间），$\mathcal{F} = \mathcal{B}(\mathbb{R}^T)$（[[Wiki - 柱集]]生成的 $\sigma$-代数），此时 $X_t(\omega) = \omega(t)$ 为[[Wiki - 坐标映射过程]]。

## 2. 意义
该定理解决了随机过程的**存在性**问题。它保证了只要我们能合理地定义所有有限维点的联合分布（如布朗运动的高斯分布族），就一定存在一个数学上定义良好的随机过程模型。

## 3. 局限性
该定理构造的概率测度定义在 $\mathbb{R}^{[0, \infty)}$ 上，其样本轨道通常极其不规则（甚至不可测）。要得到具有良好轨道性质（如连续性）的过程，需要利用 [[Wiki - Kolmogorov-Chentsov定理]] 构建**连续修正 (Continuous Modification)**。
