---
aliases:
  - 随机积分乘积法则
info:
date: 2025-12-26-星期五 16:30
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251226163000
banner: "![[astroflow.gif]]"
---
---

**随机积分的分部积分公式 (Integration by Parts)** 是随机分析中处理两个随机过程乘积的核心法则。它是 [[Wiki - Ito公式]] 应用于函数 $f(x, y) = xy$ 的直接推论，揭示了随机微积分与经典微积分在乘积求导法则上的关键区别。

## 1. 定理陈述

设 $X = \{X_t, \mathcal{F}_t; 0 \le t < \infty\}$ 和 $Y = \{Y_t, \mathcal{F}_t; 0 \le t < \infty\}$ 为两个**连续半鞅 (Continuous Semimartingales)**。则它们的乘积 $X_t Y_t$ 也是一个连续半鞅 [[Wiki - 连续半鞅]]，且满足：

$$
X_t Y_t - X_0 Y_0 = \int_0^t X_s \, dY_s + \int_0^t Y_s \, dX_s + \langle X, Y \rangle_t
$$

或者写成更常用的**微分形式**：

$$d(X_t Y_t) = X_t \, dY_t + Y_t \, dX_t + d\langle X, Y \rangle_t$$ 

其中 $\langle X, Y \rangle_t$ 是 $X$ 和 $Y$ 的**联合二次变差 (Quadratic Covariation)**。[[Wiki - 二次变差]]

## 2. 深入解析

### 2.1 伊藤修正项
公式中多出的 $d\langle X, Y \rangle_t$ 项被称为**伊藤修正项**。
*   在经典微积分中，如果 $x(t), y(t)$ 是光滑函数，则 $d(xy) = x dy + y dx$。
*   在随机微积分中，由于过程的路径极其粗糙（无界变差），两个过程的“微小震荡”在相乘时会产生非零的累积效应，这就是 $\langle X, Y \rangle_t$ 的来源。

### 2.2 协方差的结构
假设 $X$ 和 $Y$ 有分解 $X = X_0 + M + A$, $Y = Y_0 + N + B$（$M, N$ 为局部鞅，$A, B$ 为有限变差过程）。
则联合变差仅取决于鞅部分[[Wiki - 二次变差|协变差]] ：
$$ \langle X, Y \rangle_t = \langle M, N \rangle_t $$
这意味着：
1.  如果 $X$ 或 $Y$ 中至少有一个是**有限变差过程**（如时间 $t$），则 $\langle X, Y \rangle_t = 0$，公式退化为经典形式。
2.  如果 $X$ 和 $Y$ 是**相互独立**的布朗运动 [[Wiki - brown运动]]，则 $\langle X, Y \rangle_t = 0$，公式也退化为经典形式。

## 3. 与 Stratonovich 积分的关系

如果我们使用 **Fisk-Stratonovich 积分**（记为 $\circ dX$），分部积分公式将恢复经典形式：

$$X_t Y_t - X_0 Y_0 = \int_0^t X_s \circ dY_s + \int_0^t Y_s \circ dX_s$$ 

这是因为 Stratonovich 积分的定义中隐含地包含了修正项（$\int X \circ dY = \int X dY + \frac{1}{2}\langle X, Y \rangle$）。虽然形式优美，但 Stratonovich 积分不再保留鞅性质，因此在金融和概率论证中，伊藤形式（Ito form）依然是主流。[[Wiki - Stratonovich积分]]

[[Wiki - 随机积分的定义]]