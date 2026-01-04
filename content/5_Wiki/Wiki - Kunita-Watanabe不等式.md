---
aliases:
info:
date: 2025-12-26-星期五 15:45
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251226154500
banner: "![[astrowalk.gif]]"
---

**Kunita-Watanabe 不等式 (Kunita-Watanabe Inequality)** 是随机分析中的一个基础不等式，类似于泛函分析中的柯西-施瓦茨不等式 (Cauchy-Schwarz Inequality)。它在处理随机积分的交叉变差和范数估计时起着至关重要的作用，特别是涉及到两个不同鞅的协方差过程时。[[Wiki - Cauchy-Schwarz不等式]]

## 1. 定理陈述

设 $M$ 和 $N$ 是连续平方可积鞅 ($M, N \in \mathcal{M}_2^c$)。[[Wiki - 平方可积鞅]]
设 $X$ 和 $Y$ 分别是关于 $M$ 和 $N$ 可积的过程，即 $X \in \mathcal{L}^*(M)$ 且 $Y \in \mathcal{L}^*(N)$。[[Wiki - 随机积分的定义]]

则对于任意 $t \ge 0$，几乎必然有 (a.s.)：
$$
\int_0^t |X_s Y_s| \, d|\langle M, N \rangle|_s \le \left( \int_0^t X_s^2 \, d\langle M \rangle_s \right)^{1/2} \left( \int_0^t Y_s^2 \, d\langle N \rangle_s \right)^{1/2}
$$
其中：
- $\langle M, N \rangle_t$ 是 $M$ 和 $N$ 的交叉变差 (Cross Variation)。[[Wiki - 二次变差|协变差]]
- $|\langle M, N \rangle|_t$ 表示交叉变差过程的总变差 (Total Variation)，在此背景下通常指关于测度 $d\langle M, N \rangle$ 的绝对值积分。由于 $\langle M, N \rangle$ 是绝对连续于 $\langle M \rangle$ 和 $\langle N \rangle$ 的，不等式给出了关于这些测度积分的上界。

更紧凑的形式可以写成 Hilbert 空间范数 [[Wiki - Hilbert空间]]的形式：
$$ |\langle I(X), I(Y) \rangle_t| \le \langle I(X) \rangle_t^{1/2} \cdot \langle I(Y) \rangle_t^{1/2} $$

### 证明思路

证明的核心在于利用二次变差的非负定性。

1.  **构造非负定性：** 对于任意实数 $\lambda$，过程 $M + \lambda N$ 也是一个平方可积鞅。其二次变差过程 $\langle M + \lambda N \rangle_t$ 必须是非减的（即非负）。
2.  **展开：**
    $$
    \langle M + \lambda N \rangle_t = \langle M \rangle_t + 2\lambda \langle M, N \rangle_t + \lambda^2 \langle N \rangle_t \ge 0
    $$
    这对于任意区间 $(s, t]$ 的增量也成立：
    $$
    \int_s^t (1 \cdot d\langle M \rangle_u + 2\lambda \cdot d\langle M, N \rangle_u + \lambda^2 \cdot d\langle N \rangle_u) \ge 0
    $$
3.  **判别式：** 上式是一个关于 $\lambda$ 的二次型。为了保证它对所有 $\lambda$ 非负，其判别式 $\Delta$ 必须非正：
    $$ (2 d\langle M, N \rangle)^2 - 4 (d\langle M \rangle)(d\langle N \rangle) \le 0
    $$
    即 $|d\langle M, N \rangle| \le \sqrt{d\langle M \rangle d\langle N \rangle}$。
4.  **积分形式：** 将上述微分形式的直观推导严格化（利用 Radon-Nikodym 导数），并应用到积分 $\int |XY| d|\langle M, N \rangle|$ 上，结合经典的 Cauchy-Schwarz 不等式即可得证。

## 3. 重要推论与应用

*   **交叉变差的有界性：** 如果 $M$ 和 $N$ 的二次变差有限，那么它们的交叉变差 $\langle M, N \rangle$ 也必然有限。
*   **空间完备性：** 在证明随机积分空间 $\mathcal{L}^*(M)$ 的完备性以及定义随机积分的协方差时，这个不等式是必不可少的工具，它保证了内积 $\mathbb{E}[\int XY d\langle M, N \rangle]$ 的良好定义。

