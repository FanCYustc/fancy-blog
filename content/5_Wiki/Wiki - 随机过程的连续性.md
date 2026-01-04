---
aliases:
  - Càdlàg
  - 路径的连续性
info: GTM 113 - CH1
date: 2025-12-18-星期四 12:15
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程
id: wiki20251218121500
banner: "![[astrowalk.gif]]"
---
---

在随机过程理论中，"连续性"有多种强弱不同的定义。区分这些定义对于理解随机过程的样本路径性质（如布朗运动的连续性与泊松过程的跳跃性）至关重要。

## 1. 依概率连续 (Stochastically Continuous)

设 $X = \{X_t; t \ge 0\}$ 是一个随机过程。如果对于任意 $t \ge 0$ 和 $\epsilon > 0$，都有：
$$
\lim_{s \to t} P(|X_s - X_t| > \epsilon) = 0
$$
则称 $X$ 是**依概率连续**的。[[Wiki - 依概率收敛]]

*   **性质**：这是较弱的连续性。它只要求在时刻 $t$ 附近，过程发生大幅突变的概率趋于 0。
*   **反直觉例子**：泊松过程 $N_t$ 是依概率连续的（因为在极短时间 $dt$ 内发生跳跃的概率是 $O(dt)$），但它的样本路径明显是不连续的（阶梯状）。

## 2. 几乎处处连续 (Almost Surely Continuous)

如果几乎所有的样本路径都是连续函数，即：
$$
P(\{\omega : t \mapsto X_t(\omega) \text{ 是连续函数}\}) = 1
$$
则称 $X$ 具有**几乎处处连续的样本路径** (Sample Path Continuity)。[[Wiki - 函数的连续性]]

*   **性质**：这是很强的连续性。布朗运动 $B_t$ 满足此性质。

[[Wiki - 几乎处处收敛]]
## 3. 右连左极 (RCLL / Càdlàg)

在鞅论和随机积分中，完全的连续性往往太强，无法包含跳跃过程。标准的路径正则性假设是 **RCLL** (Right-Continuous with Left Limits)，法语缩写为 **Càdlàg** (continue à droite, limite à gauche)。

如果几乎所有的样本路径 $\omega$ 满足：
1.  **右连续**：$\forall t \ge 0, \lim_{s \downarrow t} X_s(\omega) = X_t(\omega)$
2.  **左极限存在**：$\forall t > 0, \lim_{s \uparrow t} X_s(\omega)$ 存在且有限 (记为 $X_{t-}$)

则称 $X$ 是一个 RCLL 过程。

*   **重要性**：在满足**通常条件**的滤子下，任何鞅都存在一个 RCLL 的修正 (Modification)。这使得我们可以对鞅进行微积分操作。

[[Wiki - 随机过程的同质性]]、[[Wiki - 连续时间鞅]]、[[Wiki - Filtration的通常条件]]

## 4. 均方连续 (Mean Square Continuous)

如果 $E[X_t^2] < \infty$，且：
$$
\lim_{s \to t} E[|X_s - X_t|^2] = 0
$$
则称 $X$ 是**均方连续**的。[[Wiki - 平均收敛]]
*   注：均方连续蕴含依概率连续，但不蕴含样本路径连续。

