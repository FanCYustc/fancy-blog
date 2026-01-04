---
aliases:
  - Volatility
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
  - quant/model
id: wiki20251216142000
banner: "![[astrowalk.gif]]"
---


## Def 1 波动率 (Volatility)

在金融时间序列分析中，**波动率**通常指资产收益率的**条件标准差** $\sigma_t$。它度量了资产价格在特定时期内的波动强弱程度，是风险的重要指标。

不同于概率论中随机变量的（无条件）标准差，波动率往往是时变的（Time-varying），即 $\sigma_t$ 会随着时间 $t$ 的变化而改变。

### 常见的波动率定义
1.  **实际波动率 (Realized Volatility)**：利用高频数据（如 5 分钟收益率）在一天内的平方和计算得到。
2.  **隐含波动率 (Implied Volatility)**：通过期权定价公式（如 B-S 公式）和当前期权市场价格反推出来的波动率（如 VIX 指数）。
3.  **条件波动率 (Conditional Volatility)**：基于历史信息 $F_{t-1}$ 对当前时刻方差的预测，即 $\sigma_t^2 = \text{Var}(r_t | F_{t-1})$。这是 ARCH/GARCH 模型建模的对象。

## Pro 1 金融时间序列的典型特征 (Stylized Facts)

1.  **尖峰厚尾 (Leptokurtosis and Fat Tails)**：资产收益率的分布通常比正态分布具有更高的峰度和更厚的尾部。这意味着极端事件（大涨或大跌）发生的概率比正态分布预测的要高。
2.  **波动率聚类 (Volatility Clustering)**：大幅度的波动后面往往紧接着大幅度的波动，小幅度的波动后面往往紧接着小幅度的波动。
3.  **[[Wiki - 杠杆效应]] (Leverage Effect)**：价格下跌（负收益）带来的波动率增加往往大于价格上涨（正收益）带来的波动率增加。
4.  **均值回复 (Mean Reversion)**：波动率倾向于围绕一个长期均值波动，不会无限发散（除非是 [[Wiki - IGARCH模型]]）。
