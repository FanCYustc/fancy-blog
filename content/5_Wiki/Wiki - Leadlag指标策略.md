---
aliases:
info:
date: 2025-12-25-星期四 16:55
update:
tags:
  - wiki/year2025
  - wiki/month12
  - quant/strategy
  - quant/factor
id: wiki20251225165553
banner: "![[astrowalk.gif]]"
---

# Leadlag指标策略

## 1. 指标介绍
Leadlag 指标利用两条不同周期的指数移动平均线（EMA）——一条“领先”均线（快线）和一条“落后”均线（慢线）——的交叉来识别价格趋势的变化。
*   **趋势跟随**: 当快线上穿慢线时，视为上涨趋势开始；当快线下穿慢线时，视为下跌趋势开始。

## 2. 计算公式
策略基于 **收盘价 (Close)** 计算两条指数移动平均线。

*   **LEADLINE (领先均线/快线)**:
    $$ \text{LEADLINE} = \text{EMA}(\text{Close}, \text{LEAD}) $$
*   **LAGLINE (落后均线/慢线)**:
    $$ \text{LAGLINE} = \text{EMA}(\text{Close}, \text{LAG}) $$

**默认参数**:
*   LEAD = 10
*   LAG = 30

**注**: 本策略中使用标准的指数移动平均 (EMA)，Pandas 中对应 `ewm(span=N)`.

## 3. 交易策略
策略根据快线与慢线的交叉关系产生信号。

当领先均线 **上穿** 落后均线时，发出买入信号（看多）：
$$ \text{LEADLINE} > \text{LAGLINE} $$

**操作**: 持有多仓 (`position = 1`).

当领先均线 **下穿** 落后均线时，发出卖出信号（看空）：
$$ \text{LEADLINE} < \text{LAGLINE} $$

**操作**: 持有空仓 (`position = -1`).

*   如果 `LEADLINE > LAGLINE`: 信号 = 1
*   如果 `LEADLINE < LAGLINE`: 信号 = -1
*   其他情况维持之前的仓位状态（或空仓）。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **特点**:
    *   经典的双均线交叉系统。
    *   逻辑简单，参数少，适应性较强但存在滞后性。
    *   在震荡市场中容易产生频繁的止损信号。

在IM中试验默认参数和最优参数，整体收益曲线走势相近，表现都较为良好，整体胜率较低，在大部分时期收益保持平稳，部分特殊时间大幅上涨。在IF中表现较差。
