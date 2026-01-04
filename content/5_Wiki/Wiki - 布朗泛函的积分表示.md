---
aliases:
  - Dudley定理
info: Proposition 4.18 & Theorem 4.20 in Karatzas & Shreve
date: 2025-12-26-星期五 11:10
update: 2025-12-26-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251226111001
banner: "![[astronight.gif]]"
---

**布朗泛函的积分表示 (Integral Representation of Brownian Functionals)** 将鞅表示定理从动态的“过程”推广到了静态的“随机变量”。它表明，布朗运动路径的任意泛函都可以写成其期望值加上一个关于布朗运动的随机积分。

## 1. 平方可积情形 ($L^2$ Representation)

在布朗过滤流[[Wiki - sigma代数流|滤子]] ${\mathcal{F}_t^W}$ 下，设 $\xi$ 为任意 ${\mathcal{F}_\infty^W}$ -可测的随机变量，且满足 $E[\xi^2] < \infty$。那么，存在循序可测过程 [[Wiki - 循序可测过程]] $Y^{(1)}, \dots, Y^{(d)} \in \mathcal{L}^*(W)$，使得：
$$ \xi = E[\xi] + \sum_{j=1}^d \int_0^\infty Y_s^{(j)} dW_s^{(j)}, \quad \text{a.s. } P $$
这可以通过定义鞅 $M_t = E[\xi | \mathcal{F}_t]$ 并应用 [[Wiki - 布朗鞅表示定理]] 直接得到。

[[Wiki - 随机积分的定义]]
## 2. Dudley 定理 (一般情形)

Dudley 证明了一个惊人的结果：对于**任意** ${\mathcal{F}_T}$-可测的有限随机变量 $\xi$ (即 $P(|\xi| < \infty) = 1$)，无论其是否可积，都存在一个循序可测过程 $Y$，满足 $\int_0^T Y_t^2 dt < \infty$ a.s.，使得：
$$ \xi = \int_0^T Y_s dW_s, \quad \text{a.s. } P $$

[[Wiki - 随机积分的定义]]

**注意:** 
1.  **无期望项:** 该公式中没有 $E[\xi]$ 项。这意味着即使 $\xi$ 是常数（如 $\xi=1$），也可以表示为随机积分。
2.  **局部鞅性质:** 这暗示了随机积分 $\int Y dW$ 在这种情况下仅仅是一个**局部鞅**，而非真正的鞅（否则其期望应为 0）[[Wiki - 局部鞅]]。这展示了随机积分作为局部鞅可以具有极其广泛的终值分布。
3.  **非唯一性:** 在这种一般情形下，被积过程 $Y$ 通常不再唯一。

