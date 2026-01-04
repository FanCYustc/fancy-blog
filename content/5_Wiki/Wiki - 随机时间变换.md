---
aliases:
  - Stochastic Time Change
info: Problem 4.5 in Karatzas & Shreve
date: 2025-12-26-星期五 16:57:44
update: 2025-12-26-星期五 17:13:25
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析
id: wiki20251226113001
banner: "![[astroradio.gif]]"
---

**随机时间变换 (Stochastic Time Change)** 是一种通过改变时间流逝的速率来简化随机过程结构的技术。在随机分析中，它通常涉及利用随机过程的**二次变差 (Quadratic Variation)** [[Wiki - 二次变差]] 的逆函数来构造一个新的“时钟”。

## 1. 广义逆过程 (Generalized Inverse)

设 $A = \{A_t; 0 \le t < \infty\}$ 为一个连续、**非减**的适应过程，且 $A_0 = 0, A_\infty = \infty$。通常 $A_t$ 取为某局部鞅的二次变差 $\langle M \rangle_t$。

定义 $A$ 的广义逆过程 $T = \{T(s); 0 \le s < \infty\}$ 为：
$$ T(s) = \inf \{ t \ge 0 : A_t > s \} $$

## 2. 关键性质

*   **停时性质:** 对于任意 $s \ge 0$，$T(s)$ 是原过滤流[[Wiki - sigma代数流|滤子]] $\{\mathcal{F}_{t}\}$ 的一个**停时 (Stopping Time)** [[Wiki - 停时]]。这意味着新时间 $s$ 对应原本的一个随机时刻 $T(s)$。
*   **连续性与右连续性:** 
    *   如果 $A_t$ 严格递增且连续，则 $T(s)$ 也是连续的。
    *   一般情况下，$T(s)$ 是右连续的。
*   **逆关系:** $A(T(s)) = s$ (当 $A$ 连续且趋于无穷时)。
*   **新过滤流:** 定义新过滤流 $\mathcal{G}_s = \mathcal{F}_{T(s)}$。过程经过时间变换后 $Y_s \triangleq X_{T(s)}$ 将适应于 $\{\mathcal{G}_{s}\}$。


随机时间变换的核心思想是“拉平”波动率。通过以累积波动率 $A_t = \langle M \rangle_t$ 作为新时间，原本波动剧烈的时段被拉长，波动平缓的时段被压缩，从而使变换后的过程具有恒定的波动率（类似布朗运动）。这是 [[Wiki - Dambis-Dubins-Schwarz定理]] 的基础。
