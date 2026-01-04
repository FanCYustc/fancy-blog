---
aliases:
info:
date: 2025-12-19-星期五 12:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 连续
  - 实分析/测度论
id: wiki20251219120000
banner: "![[astrowalk.gif]]"
---
# Wiki - 柱集

## 1. 定义
**柱集 (Cylinder Sets)** 是定义在函数空间（如 $\mathbb{R}^{[0, \infty)}$ 或 $C[0, \infty)$）上的基础可测集 [[Wiki - lebesgue可测]]。

对于 $n \ge 1$，一个 **$n$ 维柱集** $C$ 定义为：
$$
C = \{ \omega \in \mathbb{R}^{[0, \infty)} : (\omega(t_1), \dots, \omega(t_n)) \in A \}
$$
其中：
*   $0 \le t_1 < t_2 < \dots < t_n < \infty$ 是一组离散的时间点。
*   $A \in \mathcal{B}(\mathbb{R}^n)$ 是 $\mathbb{R}^n$ 上的博雷尔集。[[Wiki - Borel域]]

## 2. 柱集生成的 $\sigma$ -代数

令 $\mathcal{C}$ 为所有有限维柱集构成的集合（这是一个代数 [[Wiki - 代数]]，但不是 $\sigma$ -代数）。由 $\mathcal{C}$ 生成的 $\sigma$ -代数 $\sigma(\mathcal{C})$ 被称为**柱集 $\sigma$ -代数**，记为 $\mathcal{B}(\mathbb{R}^{[0, \infty)})$。[[Wiki - σ-代数]]

它是使所有坐标映射 $t \mapsto \omega(t)$ 成为可测函数 [[Wiki - 可测函数]]的最小 $\sigma$ -代数。

## 3. 在随机过程构造中的作用

柱集是联系**有限维分布**与**随机过程概率测度**的桥梁。
*   随机过程的有限维分布实际上就是规定了概率测度在所有柱集上的取值。
*   根据 [[Wiki - Daniell-Kolmogorov一致性定理]]，如果这些取值满足相容性条件，则它们可以唯一延拓为整个柱集 $\sigma$-代数上的概率测度。

## 4. 与 $C[0, \infty)$ 的关系

在连续函数空间 $C[0, \infty)$ 上，柱集 $\sigma$ -代数与由一致收敛拓扑生成的 borel $\sigma$ -代数 $\mathcal{B}(C[0, \infty))$ 是重合的。这意味着在连续路径空间上，通过有限维分布定义的测度就是 borel 测度。[[Wiki - 度量空间的连续映射]]


