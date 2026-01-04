---
aliases:
  - 积分GARCH模型
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
id: wiki20251216142006
banner: "![[astrowalk.gif]]"
---
---

## Def 1 IGARCH 模型

**积分 GARCH 模型 (Integrated GARCH Model)**，简称 **IGARCH 模型**，是指参数满足特定约束的 [[Wiki - GARCH模型]]。

对于 GARCH(1, 1) 模型：
$$
\sigma_t^2 = \alpha_0 + \alpha_1 a_{t-1}^2 + \beta_1 \sigma_{t-1}^2
$$
如果满足 **$\alpha_1 + \beta_1 = 1$**，则称为 IGARCH(1, 1) 模型。这类似于 ARIMA 模型中的“单位根”过程。

## Pro 1 特性

1.  **持久性 (Persistence)**：在 IGARCH 模型中，当前的冲击（shock）对未来波动率预测的影响是**永久的**，不会随时间衰减。这与标准 GARCH 模型的“均值回复”特性形成对比。
2.  **无条件方差无穷大**：由于 $\alpha_1 + \beta_1 = 1$，分母为 0，IGARCH 序列的无条件方差不存在（无穷大），但它仍然可以是强平稳的。
3.  **应用**：常用于高频数据或某些表现出极强波动率持久性的金融市场。

## Met 1 EWMA

RiskMetrics 提出的 **EWMA (Exponentially Weighted Moving Average)** 模型实际上是一个特殊的 IGARCH(1, 1) 模型（其中 $\alpha_0 = 0, \beta_1 = \lambda, \alpha_1 = 1-\lambda$）：

$$
\sigma_t^2 = (1-\lambda) a_{t-1}^2 + \lambda \sigma_{t-1}^2
$$

这是一个没有常数项的 IGARCH 模型。
