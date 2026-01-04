---
aliases:
- Moving Average Envelopes
info: null
date: 2025-12-25-星期四 16:55
update: null
tags:
- wiki/year2025
- wiki/month12
- quant/strategy
- quant/factor
id: wiki20251225165553
banner: '![[astrowalk.gif]]'
---

# MAE指标策略

## 1. 指标介绍
移动平均包略线（Moving Average Envelopes, MAE）是一种基于移动平均线的通道指标。它通过在一条移动平均线的上方和下方一定百分比处绘制两条平行线（包络线），形成一个价格通道。该通道旨在界定价格的正常波动范围，当价格突破该范围时，可能预示着趋势的开始或延续。

## 2. 计算公式
策略主要包含一条基础移动平均线，以及基于该均线上下偏移一定比例得到的上界线和下界线。

*   计算收盘价的 `Length` 周期简单移动平均。
    $$ \text{MA} = \text{MA}(\text{CLOSE}, \text{Length}) $$

*   **MAEABOVE (上界线)**: 均线上方 `pctAbove`% 处。
    $$ \text{MAEABOVE} = \text{MA} \times (1 + \frac{\text{pctAbove}}{100}) $$
*   **MAEBELOW (下界线)**: 均线下方 `pctBelow`% 处。
    $$ \text{MAEBELOW} = \text{MA} \times (1 - \frac{\text{pctBelow}}{100}) $$

**默认参数**:
*   `Length` = 20 (均线周期)
*   `pctAbove` = 5 (上轨偏移百分比)
*   `pctBelow` = 3 (下轨偏移百分比)


实际中，由于是日级数据变为分钟级数据，上下轨的百分比应该设定的比现在小得多。

## 3. 交易策略
策略以价格突破包络线作为交易信号。

当满足以下条件时，发出买入信号（看多）：
*   当前收盘价向上突破上界线 (`CLOSE > MAEABOVE`)。

$$ \text{Signal} = 1 \iff \text{CLOSE} > \text{MAEABOVE} $$

**操作**: 持有多仓 (`position = 1`)。

当满足以下条件时，发出卖出信号（看空）：
*   当前收盘价向下突破下界线 (`CLOSE < MAEBELOW`)。

$$ \text{Signal} = -1 \iff \text{CLOSE} < \text{MAEBELOW} $$

**操作**: 持有空仓 (`position = -1`)。

当上述条件均不满足时：
**操作**: 平仓/空仓 (`position = 0`)。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 趋势跟踪 / 突破 (Trend Following / Breakout)
*   **策略特征**:
    *   利用价格突破“正常波动区间”来捕捉趋势。
    *   通过调整 `pctAbove` 和 `pctBelow`，可以控制策略的灵敏度。较大的百分比过滤掉噪音，但可能错过趋势初段；较小的百分比反应灵敏，但假信号可能增多。
    *   本策略采用非对称参数（上轨5%，下轨3%），可能反映了对上涨和下跌趋势的不同敏感度偏好或市场特征。

实际实验中，策略可能更适合反转信号的触发逻辑，能在一些参数下表现出良好的收益
