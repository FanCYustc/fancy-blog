---
aliases:
  - M2 space
info: GTM 113 - CH1.1, CH1.5
date: 2025-12-18-星期四 11:45
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/鞅论
id: wiki20251218114500
banner: "![[astrowalk.gif]]"
---


在鞅论中，平方可积鞅构成了一个具有良好性质的希尔伯特空间 (Hilbert Space) 结构，是研究随机积分的基础。

## 1. 定义

设 $M = \{M_t; t \ge 0\}$ 是一个右连续鞅 [[Wiki - 随机过程的连续性]]。如果对于任意 $t \ge 0$，都有 $E[M_t^2] < \infty$，则称 $M$ 为**平方可积鞅** (Square-Integrable Martingale)。

如果进一步满足
$$
\sup_{t \ge 0} E[M_t^2] < \infty
$$
则称 $M$ 为 **$L^2$ -有界鞅** 。此类鞅的空间通常记为 $\mathcal{M}^2$。

[[Wiki - 随机变量的矩]]
## 2. 空间 $\mathcal{M}^2$ 的性质

### 2.1 范数与完备性
对于 $M \in \mathcal{M}^2$，定义范数：
$$
\|M\|_2 \triangleq (E[M_\infty^2])^{1/2} = (\sup_{t \ge 0} E[M_t^2])^{1/2}
$$
其中 $M_\infty \triangleq \lim_{t \to \infty} M_t$ (几乎处处存在)。

**定理**：空间 $\mathcal{M}^2$ 在范数 $\|\cdot\|_2$ 下是一个 **Hilbert 空间** (更准确地说是 Banach 空间 [[Wiki - Hilbert空间]]，内积结构由 $E[M_\infty N_\infty]$ 给出)。

[[Wiki - banach空间]]

### 2.2 闭包与收敛

-   **鞅收敛定理**：对于 $M \in \mathcal{M}^2$，存在随机变量 $M_\infty \in L^2(\Omega)$ 使得 $M_t \to M_\infty$ (a.s. 和 $L^2$)。
-   **Doob不等式**：
    $$
    E[\sup_{t \ge 0} M_t^2] \le 4 E[M_\infty^2]
    $$
[[Wiki - Doob不等式]]

[[Wiki - 鞅收敛定理]]
## 3. 连续平方可积鞅空间 $\mathcal{M}^2_c$

$\mathcal{M}^2_c$ 表示所有路径几乎处处连续的平方可积鞅构成的子空间。它是 $\mathcal{M}^2$ 的一个闭子空间。
对于 $M \in \mathcal{M}^2_c$，其二次变差过程 $\langle M \rangle$ 是唯一的连续增过程 [[Wiki - 增过程]]，满足 $M^2 - \langle M \rangle$ 是鞅 [[Wiki - 鞅]]。

[[Wiki - 二次变差]]

