---
aliases:
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
id: wiki20251216142007
banner: "![[astrowalk.gif]]"
---
---

## Def 1 GARCH-M 模型

**GARCH-M 模型 (GARCH-in-Mean Model)** 由 Engle, Lilien 和 Robins (1987) 提出。它将条件波动率（或方差）直接引入到均值方程中，用于刻画金融理论中的**风险溢价 (Risk Premium)**。

金融理论认为，资产的预期收益率应该与风险（波动率）正相关。投资者承担了更高的风险，理应要求更高的回报。

## The 1 模型结构

$$
r_t = \mu + c \cdot \sigma_t^2 + a_t
$$
$$
a_t = \sigma_t \varepsilon_t
$$
$$
\sigma_t^2 = \alpha_0 + \alpha_1 a_{t-1}^2 + \beta_1 \sigma_{t-1}^2
$$

其中：
-   $c$ 是**风险溢价参数**。如果 $c > 0$，表示波动率越高，预期收益率越高。
-   有些变体使用 $\sigma_t$ 或 $\ln(\sigma_t^2)$ 代替均值方程中的 $\sigma_t^2$。

[[Wiki - GARCH模型]]
