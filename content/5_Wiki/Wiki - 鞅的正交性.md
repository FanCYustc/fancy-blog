---
aliases:
  - Orthogonal Martingales
info: GTM 113 - CH1.5
date: 2025-12-18-星期四 11:50
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/鞅论
id: wiki20251218115000
banner: "![[astrowalk.gif]]"
---

在平方可积鞅空间 $\mathcal{M}^2$ 中，正交性是一个核心概念，它推广了希尔伯特空间中向量正交的概念。

## 1. 定义

设 $M, N \in \mathcal{M}^2$ (或均为连续局部鞅 [[Wiki - 局部鞅]])。如果它们的乘积 process $MN = \{M_t N_t; t \ge 0\}$ 是一个**鞅** [[Wiki - 鞅]] (对于局部鞅情形，是局部鞅)，且 $M_0 N_0 = 0$，则称 $M$ 和 $N$ 是**正交的** (Orthogonal)。

记作 $M \perp N$。


## 2. 等价条件

对于连续平方可积鞅 [[Wiki - 平方可积鞅]]，以下条件等价：
1.  $M$ 和 $N$ 正交。
2.  它们的**交叉变差** (Covariation) 为 0：
    $$
    \langle M, N \rangle_t = 0, \quad \forall t \ge 0 \quad \text{a.s.} 
    $$


[[Wiki - 二次变差]]

## 3. 例子与性质

-   **独立增量过程**：如果 $M$ 和 $N$ 是相互独立的连续鞅（如独立的布朗运动），则它们是正交的。[[Wiki - 随机变量的独立性]]
-   **不连续鞅**：对于不连续鞅 (如泊松过程 [[Wiki - poison过程]])，正交性的定义需要更小心处理跳跃部分（共同跳跃）。但在连续鞅理论中，$\langle M, N \rangle = 0$ 是最常用的判据。


