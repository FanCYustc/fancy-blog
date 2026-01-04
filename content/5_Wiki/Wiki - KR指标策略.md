---
aliases:
- Key Reversal
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

# KR指标策略

## 1. 指标介绍
关键反转（Key Reversal, KR）是一种典型的反转交易策略。其核心逻辑在于寻找价格创出新高或新低后，收盘价却未能维持在极值附近，反而向相反方向运动并突破某一均值水平的现象。这种形态通常意味着原有趋势的动能耗尽，市场情绪发生逆转。

## 2. 计算公式
策略主要依赖近期极值（最高/最低价）和近期均线值。

*   **LOWBAND**: 过去 `Lowlength` 个周期内（不含当前周期）的最低价。
    $$ \text{LOWBAND} = \text{LLV}(\text{REF}(\text{LOW}, 1), \text{Lowlength}) $$
*   **HIGHBAND**: 过去 `Highlength` 个周期内（不含当前周期）的最高价。
    $$ \text{HIGHBAND} = \text{HHV}(\text{REF}(\text{HIGH}, 1), \text{Highlength}) $$

*   **MA**: 收盘价的 `nDay` 周期简单移动平均。
    $$ \text{MA} = \text{MA}(\text{CLOSE}, \text{nDay}) $$

**默认参数**:
*   `Highlength` = 1 (用于计算压力位)
*   `Lowlength` = 1 (用于计算支撑位)
*   `nDay` = 5 (用于计算均线)

## 3. 交易策略
策略根据价格是否创出短期新高/新低，且收盘价是否回归均线来产生信号。

当满足以下条件时，发出买入信号（看多）:
1.  **创新低**: 当前最低价低于过去 `Lowlength` 周期的最低价 (`LOW < LOWBAND`)。
2.  **收盘强势**: 当前收盘价大于近期均线值 (`CLOSE > MA`)。

$$ \text{Signal} = 1 \iff (\text{LOW} < \text{LOWBAND}) \land (\text{CLOSE} > \text{MA}) $$

**操作**: 持有多仓 (`position = 1`)。

当满足以下条件时，发出卖出信号（看空）:
1.  **创新高**: 当前最高价高于过去 `Highlength` 周期的最高价 (`HIGH > HIGHBAND`)。
2.  **收盘弱势**: 当前收盘价小于近期均线值 (`CLOSE < MA`)。

$$ \text{Signal} = -1 \iff (\text{HIGH} > \text{HIGHBAND}) \land (\text{CLOSE} < \text{MA}) $$

**操作**: 持有空仓 (`position = -1`)。

当上述条件均不满足时：
**操作**: 平仓/空仓 (`position = 0`)。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 反转 (Reversal)
*   **策略特征**:
    *   利用“假突破”原理，捕捉价格创出新高/新低后的反向运动。
    *   结合均线过滤，要求收盘价必须回到均线一侧，确认反转力度。
    *   参数较短（默认1天/1周期），反应灵敏。
