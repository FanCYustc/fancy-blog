---
aliases: 
info: 
date: 2025-01-09-星期四 11:47
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 时间序列分析
  - 随机过程/平稳过程
id: wiki20250109114743
banner: "![[astrowalk.gif]]"
---
---

## The 1 Kolmogorov 公式

**定理 15.6**：设 $\{X_t\}$ 是非决定性平稳序列 [[Wiki - 非决定性平稳序列]]，其 Wold 分解中的纯非决定性部分 $\{U_t\}$ 具有谱密度 $f(\lambda)$ [[Wiki - 平稳序列的谱]]。则一步预测均方误差 $\sigma^2$ 满足：

$$
\sigma^{2} = E[X_{t} - L(X_{t}|H_{t-1})]^{2} = 2\pi \exp\left( \frac{1}{2\pi} \int_{-\pi}^{\pi} \ln f(\lambda) d\lambda \right)
$$

## The 2 可预测性准则

从 Kolmogorov 公式可以看出：
1.  **非决定性的充要条件**：如果 $\{X_t\}$ 是非决定性的（$\sigma^2 > 0$），则其纯非决定性部分的谱密度 $f(\lambda)$ 必须满足 **对数可积性条件**：
    $$
    \int_{-\pi}^{\pi} \ln f(\lambda) d\lambda > -\infty
    $$
    这意味着谱密度 $f(\lambda)$ 不能在一段区间上为零（否则 $\ln 0 = -\infty$），即非决定性序列的谱密度必须几乎处处为正。

2.  如果积分等于 $-\infty$，则 $\sigma^2 = 0$，序列是 **决定性序列** [[Wiki - 非决定性平稳序列|决定性序列]]。

