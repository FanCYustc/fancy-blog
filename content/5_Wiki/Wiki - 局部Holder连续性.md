---
aliases:
  - Local Holder Continuity
info:
date: 2025-12-19-星期五 13:25
update: 2025-12-19-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 数学分析/函数
id: wiki20251219132500
banner: "![[astrowalk.gif]]"
---
# Wiki - 局部Holder连续性

## 1. 定义：Hölder 连续性

**Hölder 连续性** 是函数光滑性的一种度量，比一致连续更强，但通常弱于可微性。

设 $(X, d)$ 和 $(Y, \rho)$ 为度量空间。函数 $f: X \to Y$ 被称为 **局部 $\gamma$ -Hölder 连续**（其中指数 $\gamma \in (0, 1]$），如果对于域中的每一点 $x_0$，都存在一个邻域 $U$ 和常数 $C$，使得对于所有 $x, y \in U$ ：
$$ \rho(f(x), f(y)) \le C \cdot d(x, y)^\gamma $$

*   $\gamma=1$ 时，即为 **Lipschitz 连续**。
*   $\gamma$ 越接近 1，函数越“平滑”；$\gamma$ 越接近 0，函数越“粗糙”。

## 2. 布朗运动的 Hölder 连续性

[[Wiki - brown运动]] 的样本轨道是 Hölder 连续性理论的一个经典反例和应用对象，展示了处处不可微函数的精细结构。

对于标准布朗运动 $B_t$ 的几乎所有样本路径 $\omega$：
1.  **正则性**：对于任意 $\gamma < 1/2$，路径是局部 $\gamma$-Hölder 连续的。
    这是 [[Wiki - Kolmogorov-Chentsov定理]] 的直接推论（利用矩不等式 $E|B_t-B_s|^{2n} \sim |t-s|^n$）。
2.  **粗糙性**：对于 $\gamma \ge 1/2$，路径几乎必然**不是**局部 Hölder 连续的。
    更精确的描述由 [[Wiki - Lévy连续性模定理]] 给出，其连续性模略大于 $\sqrt{\delta}$（带有 $\sqrt{\log(1/\delta)}$ 因子）。

这一性质（指数 $1/2$）是布朗运动作为**分形**曲线和**非零二次变差**过程的核心特征。