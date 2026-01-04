---
aliases:
  - 维纳测度
  - Canonical Probability Space
info: GTM113 CH2.4
date: 2025-12-18-星期四 11:36:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 实分析/测度论
id: wiki20251218113600
banner: "![[astrowalk.gif]]"
---

# Wiener 测度

## 1. 定义

**Wiener 测度 (Wiener Measure)**，通常记为 $P_*$ 或 $\mu$，是定义在连续函数空间 $C[0, \infty)$ 上的一个特定概率测度 [[Wiki - 概率测度]]。

在该测度下，**坐标映射过程 (Coordinate Mapping Process)**[[Wiki - 坐标映射过程]]
$$ W_t(\omega) \triangleq \omega(t), \quad \omega \in C[0, \infty), \, t \ge 0 $$
是一个标准的、一维 [[Wiki - brown运动]]。

换句话说，Wiener 测度描述了标准布朗运动样本轨道的概率分布。

## 2. 基础空间结构

为了严格定义 Wiener 测度，必须先明确其底层的样本空间及其拓扑结构。

### 2.1 样本空间 $C[0, \infty)$
样本空间 $\Omega = C[0, \infty)$ 是所有定义在 $[0, \infty)$ 上且取值为实数的连续函数 [[Wiki - 函数的连续性]]的集合。

在这个空间上，我们可以定义一个**度量 (Metric)** $\rho$，使其成为一个**完备的、可分的度量空间 (Polish Space)**。[[Wiki - 度量空间的稠密性|度量空间的可分性]]、[[Wiki - 度量空间的完备性]]

度量定义为：
$$ \rho(\omega_1, \omega_2) \triangleq \sum_{n=1}^\infty \frac{1}{2^n} \max_{0 \le t \le n} (|\omega_1(t) - \omega_2(t)| \wedge 1) $$
这个度量诱导的拓扑即为**紧致集上的一致收敛拓扑 (Topology of uniform convergence on compact subsets)**。这意味着两个函数在该度量下“接近”，当且仅当它们在任意有限时间区间 $[0, T]$ 上的最大偏差很小。

### 2.2 $\sigma$ -代数

Wiener 测度定义在 $C[0, \infty)$ 的 **Borel $\sigma$-代数** $\mathscr{B}(C[0, \infty))$ 上。一个关键的性质是：
$$ \mathscr{B}(C[0, \infty)) = \sigma(\mathcal{C}) $$
即 Borel $\sigma$ -代数恰好由所有**有限维柱集 (Finite-dimensional Cylinder Sets)** 生成（参见 [[Wiki - 柱集]]）。

柱集的形式为：
$$ C = \{ \omega \in C[0, \infty) : (\omega(t_1), \dots, \omega(t_n)) \in A \}, \quad A \in \mathscr{B}(\mathbb{R}^n) $$

这一性质至关重要，因为它保证了由有限维分布（即布朗运动的定义性质）可以唯一确定整个空间上的测度。

## 3. 典范概率空间 (Canonical Probability Space)

概率空间 [[Wiki - 概率空间]]
$$ (C[0, \infty), \mathscr{B}(C[0, \infty)), P_*) $$
被称为布朗运动的**典范概率空间**。[[Wiki - brown运动]]

*   **样本点 $\omega$**：就是一条具体的布朗运动轨迹（一条连续曲线）。
*   **随机变量 $W_t$**：就是在时刻 $t$ 读取曲线 $\omega$ 的值。
*   **事件 $E$**：就是具有某种性质的曲线集合（例如“在 $t=1$ 时大于 0 的所有曲线”）。

## 4. 存在性与构造

Wiener 测度的存在性并非显而易见，因为 $C[0, \infty)$ 是一个无穷维的函数空间。可以通过以下途径建立：

1.  **Donsker 不变性原理 (弱收敛极限)**：
    [[Wiki - Donsker不变性原理]] 指出，适当缩放的随机游走在分布上弱收敛于布朗运动。这意味着随机游走诱导的概率测度序列 {$P_n$} 在空间 $C[0, \infty)$ 上收敛于 Wiener 测度 $P_*$。这是构造 Wiener 测度的一种直观且深刻的方法。

2.  **Kolmogorov-Chentsov 定理**：
    先在积空间 $\mathbb{R}^{[0, \infty)}$ 上利用 **[[Wiki - Daniell-Kolmogorov一致性定理]]** 构造满足布朗运动有限维分布的测度（即布朗运动的 [[Wiki - 随机过程的Law]]），然后利用 **[[Wiki - Kolmogorov-Chentsov定理]]** 证明该测度实际上集中在连续函数子空间 $C[0, \infty)$ 上（或者说存在连续修正）。

## 5. 性质

*   **集中性**：$P_*$ 将概率 1 赋予那些处处不可微、无增长点、且满足重对数律的“病态”函数。详见 [[Wiki - brown运动的样本轨道性质]]。
*   **变换不变性**：Wiener 测度在特定的变换下（如反射、时间反转、时间缩放）保持特定的对称性。
