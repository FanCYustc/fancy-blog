---
aliases:
info:
date: 2025-12-11-星期四 11:37:15
update: 2025-12-11-星期四 11:37:51
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化
id: wiki20251211113715
banner: "![[astrowalk.gif]]"
---
---
# 风险度量 (Risk Measure)

## 定义
**风险度量 (Risk Measure)** 是一个映射函数 $\rho: \mathcal{V} \to \mathbb{R}$，用于将不确定的随机变量 [[Wiki - 随机变量]]（如未来的资产收益或损失）量化为一个确定的实数值，以代表其风险水平。

## 一致性风险度量 (Coherent Risk Measure)
Artzner et al. (1999) 提出了风险度量的公理化体系，定义了**一致性风险度量**必须满足的四条性质：

1.  **单调性 (Monotonicity)**：如果一种资产在任何情况下都比另一种资产损失更少，通过它衡量的风险也应更小。
    - 若 $X \leq Y$，则 $\rho(X) \leq \rho(Y)$（假设 $X, Y$ 代表损失）。
2.  **次可加性 (Subadditivity)**：组合投资的风险不应超过各部分风险之和（分散化效应）。
    - $\rho(X + Y) \leq \rho(X) + \rho(Y)$。
3.  **正齐次性 (Positive Homogeneity)**：持有资产规模扩大 $\lambda$ 倍，风险也应扩大 $\lambda$ 倍。
    - $\rho(\lambda X) = \lambda \rho(X)$，$\forall \lambda \geq 0$。
4.  **平移不变性 (Translation Invariance)**：增加一定量的确定性现金（减少损失），风险应相应降低。
    - $\rho(X + c) = \rho(X) + c$（假设 $X$ 为损失， $c$ 为增加的确定性损失）。

## 常见的风险度量
1.  **方差 (Variance)**：经典度量，但惩罚了正向波动，且不满足单调性。[[Wiki - 方差]]
2.  **在险价值 (Value-at-Risk, VaR)**：金融监管标准，但不满足次可加性，不是一致性风险度量。[[Wiki - 在险价值]]
3.  **条件在险价值 (CVaR)**：满足所有一致性公理，且具有良好的凸优化性质。详见 [[Wiki - CVaR]]。
4.  **优化确定性等价 (OCE)**：Ben-Tal & Teboulle (2007) 提出的框架，CVaR 是其特例。

## 凸风险度量 (Convex Risk Measure)
Föllmer & Schied (2002) 将一致性风险度量推广为**凸风险度量**，放宽了正齐次性和次可加性，仅要求满足凸性（参见 [[Wiki - 凸函数]]）：
$$
\rho(\lambda X + (1-\lambda)Y) \leq \lambda \rho(X) + (1-\lambda)\rho(Y)
$$
这允许风险随规模非线性增长（如流动性风险）。

- [[Wiki - 目标脆弱度]]
