---
aliases:
  - Kunita-Watanabe分解
info: Proposition 4.14 in Karatzas & Shreve
date: 2025-12-26-星期五 11:55
update: 2025-12-26-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/鞅论
  - 随机分析/随机积分
id: wiki20251226115501
banner: "![[astrofalling.gif]]"
---

**鞅的正交分解定理 (Orthogonal Decomposition of Martingales)** 提供了将平方可积鞅分解为“随机积分部分”和“正交部分”的工具。这是 Hilbert 空间投影定理在随机分析中的具体体现。

## 1. 设定与定义

*   **空间:** 设 $\mathcal{M}_2$ 为所有右连续、平方可积鞅 [[Wiki - 平方可积鞅]] $M$ ($M_0=0$) 构成的希尔伯特空间，内积定义为 $(M, N) = E[M_\infty N_\infty]$。[[Wiki - Hilbert空间]]
*   **子空间:** 给定一个布朗运动 [[Wiki - brown运动]] $W$（或更一般的连续鞅），令 $\mathcal{I}$ 为所有形式为随机积分 $I_t(X) = \int_0^t X_s dW_s$ 的鞅构成的**闭子空间**（其中 $X \in \mathcal{L}^*$）。[[Wiki - 随机积分的定义]]

## 2. 定理陈述

对于任意的 $M \in \mathcal{M}_2$，存在唯一的分解：
$$ M_t = N_t + Z_t, \quad 0 \le t < \infty $$
其中：
1.  **积分部分:** $N \in \mathcal{I}$，即存在过程 $X$ 使得 $N_t = \int_0^t X_s dW_s$。
2.  **正交部分:** $Z$ 与子空间 $\mathcal{I}$ **正交**。这意味着对于任意的随机积分 $I(Y) \in \mathcal{I}$，过程 $Z$ 与 $I(Y)$ 的交叉变差满足 $\langle Z, I(Y) \rangle_t = 0$ (这也蕴含了 $E[Z_\infty I(Y)_\infty] = 0$)。[[Wiki - 二次变差|协变差]]

## 3. 意义与推广

*   **几何视角:** $N$ 就是 $M$ 在子空间 $\mathcal{I}$ 上的**正交投影**[[Wiki - 正交投影]]。
*   **布朗表示定理:** [[Wiki - 布朗鞅表示定理]] 本质上就是说，如果过滤流是由 $W$ 生成的，那么正交补空间是只有零元素 {$0$}。也就是说，所有的鞅都落在 $\mathcal{I}$ 中 ($Z \equiv 0$)。

