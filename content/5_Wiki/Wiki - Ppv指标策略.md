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

# Ppv指标策略

## 1. 指标介绍
Ppv 指标通过计算过去 N 天的最高价、最低价和收盘价的特定组合，构建出一组支撑线 (YL1, YL2, YL3) 和阻力线 (ZC1, ZC2, ZC3)。策略利用收盘价和最高价与这些枢纽线的相对位置关系来产生交易信号。

## 2. 计算公式
$$ \text{MID} = \frac{\text{REF}(\text{CLOSE}, N) + \text{LLV}(\text{HIGH}, N) + \text{LLV}(\text{LOW}, N)}{3} $$
*注意：研报公式中使用 `LLV(HIGH, N)`，即 N 周期内的最低最高价，而非通常的 `HHV`。本策略严格遵循研报公式。*

*   **YL1**: $2 \times \text{MID} - \text{LLV}(\text{LOW}, N)$
*   **YL2**: $\text{MID} + \text{LLV}(\text{HIGH}, N) - \text{LLV}(\text{LOW}, N)$
*   **YL3**: $\text{LLV}(\text{HIGH}, N) + 2 \times (\text{MID} - \text{LLV}(\text{LOW}, N))$
*   **ZC1**: $2 \times \text{MID} - \text{LLV}(\text{HIGH}, N)$
*   **ZC2**: $\text{MID} - \text{LLV}(\text{HIGH}, N) + \text{LLV}(\text{LOW}, N)$
*   **ZC3**: $\text{LLV}(\text{LOW}, N) - 2 \times (\text{LLV}(\text{HIGH}, N) - \text{MID})$

**默认参数**:
*   `nDay` = 5

## 3. 交易策略
满足以下任一条件时买入：
1.  $\text{Close} > \text{YL2}$ **且** $\text{Close} > \text{YL3}$
2.  $\text{High} > \text{ZC2}$ **且** $\text{Close} > \text{ZC1}$

**操作**: 持有多仓 (`position = 1`)。

满足以下任一条件时卖出：
1.  $\text{Close} > \text{YL2}$ **且** $\text{Close} < \text{ZC3}$
2.  $\text{High} > \text{ZC2}$ **且** $\text{Close} < \text{YL1}$

**操作**: 持有空仓 (`position = -1`)。

不满足上述条件时，保持空仓 (`position = 0`)。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 均值回归 / 反转 (Mean Reversion) ? 或者是 突破 (Breakout)
    *   *分析*: 看起来更像是基于价格通道的突破策略。当价格突破特定的枢纽阻力位时做多。
*   **分类**: 时序动量 / 趋势 (Time Series Momentum / Trend)
