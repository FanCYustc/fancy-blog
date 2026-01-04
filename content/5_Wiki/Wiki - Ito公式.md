---
aliases:
  - Ito's Formula
  - 变量代换公式
  - 伊藤引理
info:
date: 2025-10-14-星期二 14:12
update: 2025-12-26-星期五
tags:
  - wiki/year2025
  - wiki/month10
  - 随机分析/随机积分
id: wiki20251014141242
banner: "![[astrowalk.gif]]"
---
---

伊藤公式（Itô's Formula），又称伊藤引理，是随机分析中最核心的工具，被称为“随机微积分的链式法则”。它给出了一个平滑函数作用于半鞅后的分解形式，揭示了随机世界与确定性微积分的根本区别——**二次变差修正项**。

## 0. 直观引入 (Taylor 展开)

考虑 Brownian 运动 $B_t$ 和函数 $F(x)$。对于时间划分 $0=t_0 < \dots < t_N = t$，利用 Taylor 展开 [[Wiki - Taylor级数]]：
$$
\begin{align}
F(B_{t})-F(B_{0}) &= \sum_{j=1}^{N} (F(B_{t_{j}})-F(B_{t_{j-1}})) \\
&= \sum_{j=1}^{N} \left( F'(B_{t_{j-1}})(B_{t_{j}}-B_{t_{j-1}}) + \frac{1}{2} F''(\xi_{j})(B_{t_{j}}-B_{t_{j-1}})^{2} \right)
\end{align}
$$
当划分趋于精细时：
1.  一阶项收敛到随机积分 $\int_0^t F'(B_s) dB_s$。
2.  二阶项由于布朗运动的二次变差非零，收敛到 $\frac{1}{2} \int_0^t F''(B_s) ds$。

这导致了著名的公式：$dF(B_t) = F'(B_t) dB_t + \frac{1}{2}F''(B_t) dt$。

## 1. 伊藤公式 (一维半鞅)

我们将上述直观推广到一般的**连续半鞅**。[[Wiki - 连续半鞅]] 

```ad-theorem
title: Itô's Formula (Theorem 3.3 in Karatzas & Shreve)

设 $X_t$ 为一个**连续半鞅**，其正则分解为：
$$
X_t = X_0 + M_t + A_t
$$
其中 $M \in \mathcal{M}^{c, loc}$ 是连续局部鞅，$A$ 是连续有限变差过程。
设 $f: \mathbb{R} \to \mathbb{R}$ 为 $C^2$ 函数。则 $f(X_t)$ 也是一个半鞅，且 $P$-a.s. 满足：

$$
f(X_t) = f(X_0) + \int_0^t f'(X_s) \, dX_s + \frac{1}{2} \int_0^t f''(X_s) \, d\langle X \rangle_s
$$
```

**微分形式 (Differential Notation):**
$$ df(X_t) = f'(X_t) dX_t + \frac{1}{2} f''(X_t) d\langle X \rangle_t $$

**关键注释:**
-   **符号统一:** 在这里我们用 $X$ 表示半鞅。分解中的 $A_t$ 有时也记为 $V_t$ 或 $B_t$ 。
-   **积分展开:** $\int f' dX_s = \int f' dM_s + \int f' dA_s$。
-   **二次变差:** 由于 $A_t$ 是有限变差过程，其二次变差为 0，因此 $\langle X \rangle_t = \langle M \rangle_t$。这一项体现了 $X_t$ 的“波动性能量”。[[Wiki - 二次变差]]
-   **修正项:** $\frac{1}{2} f''(X_t) d\langle X \rangle_t$ 是伊藤积分特有的修正，如果 $X$ 是平滑函数（变差有限，二次变差为0），此项消失，公式退化为普通微积分链式法则。

[[Wiki - 随机积分的定义]]


### 证明思路 (Sketch of Proof)

证明本质上是泰勒展开的极限定理。
1.  **简化:** 利用**停时** [[Wiki - 停时]] 和局部化，假设所有过程和函数导数都有界。
2.  **展开:** 
    $$ f(X_t) - f(X_0) = \sum f'(X_{t_{j-1}}) \Delta X_j + \frac{1}{2} \sum f''(\xi_j) (\Delta X_j)^2 $$
3.  **收敛:**
    *   一阶项 $\sum f' \Delta X_j$ 依概率收敛到伊藤积分 $\int f' dX$。
    *   二阶项的核心是 $(\Delta X_j)^2$。由于 $(\Delta A_j)^2$ 和交叉项 $\Delta M \Delta A$ 在求和后趋于 0，起作用的仅是 $(\Delta M_j)^2$。
    *   关键步骤证明 $\sum f''(\xi_j) (\Delta M_j)^2 \to \int f'' d\langle M \rangle$。这依赖于二次变差的定义：$M_t^2 - \langle M \rangle_t$ 是鞅 [[Wiki - 鞅]]。


## 2. 伊藤公式 (多维形式)

处理含时函数 $f(t, x)$ 或多维过程 $X_t = (X_t^{(1)}, \dots, X_t^{(d)})$。

```ad-theorem
title: Itô's Formula (General Multidimensional)

设 $X_t = (X_t^{(1)}, \dots, X_t^{(d)})$ 为 $d$ 维连续半鞅，$f: [0, \infty) \times \mathbb{R}^d \to \mathbb{R}$ 为 $C^{1, 2}$ 类函数（对 $t$ 一阶连续可导，对 $x$ 二阶连续可导）。则：

$$ 
\begin{aligned}
df(t, X_t) &= \frac{\partial f}{\partial t} dt + \sum_{i=1}^d \frac{\partial f}{\partial x_i} dX_t^{(i)} \\
&\quad + \frac{1}{2} \sum_{i=1}^d \sum_{j=1}^d \frac{\partial^2 f}{\partial x_i \partial x_j} d\langle X^{(i)}, X^{(j)} \rangle_t
\end{aligned}
$$ 
```

**注释:**
-   $\langle X^{(i)}, X^{(j)} \rangle_t$ 是交叉变差过程。
-   如果是标准布朗运动 $B_t = (B_t^{(1)}, \dots, B_t^{(d)})$，则 $d\langle B^{(i)}, B^{(j)} \rangle_t = \delta_{ij} dt$。此时交叉项消失，只剩对角线项。

## 3. 经典示例

令 $X_t = B_t$ (一维布朗运动)，$f(x) = x^2$。
-   $f'(x) = 2x, f''(x) = 2$。
-   $d\langle B \rangle_t = dt$。
代入公式：
$$ d(B_t^2) = 2B_t dB_t + \frac{1}{2}(2) dt = 2B_t dB_t + dt $$
积分形式：$B_t^2 = 2\int_0^t B_s dB_s + t$。
