---
aliases:
  - Brownian Local Time
info:
date: 2025-12-29-星期一
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251229101001
banner: "![[astrowalk.gif]]"
---

**局部时间 (Local Time)** 是随机分析中用于衡量样本轨道在特定点附近“逗留”程度的量。对于布朗运动而言，尽管其在任意一点的逗留时间（Lebesgue 测度）为 0，但我们可以通过极限过程定义一个非平凡的“密度”，即局部时间。

## 1. 定义与直观

设 $W_t$ 为一维布朗运动 [[Wiki - brown运动]]。对于 Borel 集合 $B \subseteq \mathbb{R}$，定义 **占位时间 (Occupation Time)** 为：
$$
\Gamma_t(B) = \int_0^t 1_B(W_s) ds
$$
即 $W$ 在 $0$ 到 $t$ 时间段内处于 $B$ 中的 Lebesgue 时间。

我们希望找到一个密度函数 $L_t(x)$，使得占位时间可以表示为该密度的积分：
$$
\int_0^t f(W_s) ds = 2 \int_{-\infty}^{\infty} f(x) L_t(x) dx
$$
注意：系数 **2** 是 Karatzas & Shreve 中的标准约定（亦有文献定义为 1）。在此约定下，直观上：
$$
L_t(x) = \lim_{\epsilon \downarrow 0} \frac{1}{4\epsilon} \text{meas}\{ 0 \leq s \leq t : |W_s - x| \leq \epsilon \}
$$

## 2. Trotter 存在性定理

虽然上述定义给出了直观理解，但 $L_t(x)$ 的存在性及正则性并非显而易见。

```ad-theorem
title: Trotter 定理 (Theorem 6.11)

布朗运动的局部时间 $L_t(x)$ 存在，且可以选取一个版本，使得映射 $(t, x) \mapsto L_t(x)$ 对几乎所有样本路径 $\omega$ 是**联合连续**的。
```

[[Wiki - 随机过程的同质性|版本]]

这意味着我们不仅可以谈论固定点的局部时间，还可以研究作为空间位置 $x$ 的随机场的性质。

## 3. 性质

*   **支集**: $x \mapsto L_t(x)$ 的支集包含在布朗运动的路径范围 $[\min_{0 \le s \le t} W_s, \max_{0 \le s \le t} W_s]$ 内。
*   **增长性**: 对于固定的 $x$，过程 $t \mapsto L_t(x)$ 是非降的。
*   **平坦性**: $L_t(x)$ 仅在 $W_t = x$ 时增加，即 $\int_0^\infty 1_{\{W_t \neq x\}} dL_t(x) = 0$。换言之，它是一个奇异连续过程。
*   **Holder 连续性**: $x \mapsto L_t(x)$ 满足阶数小于 $1/2$ 的局部 Hölder 连续性。[[Wiki - 局部Holder连续性]]
