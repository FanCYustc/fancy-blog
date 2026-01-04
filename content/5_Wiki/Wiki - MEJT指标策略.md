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

# MEJT指标策略

## 1. 指标介绍
MEJT 指标是一种捕捉价格动量和能量变化的策略。它通过比较当前价格与历史价格（High/Low/Close）的关系来识别潜在的买入和卖出机会。
*   **买入动力 (MEJTBUY)**: 当当前最高价突破前一周期最高价，且当前收盘价突破前两周期最高价，且收盘价处于当日振幅的较高位置时，认为买入能量强劲。
*   **卖出动力 (MEJTSELL)**: 当当前最低价跌破前一周期最低价，且当前收盘价跌破前两周期最低价，且收盘价处于当日振幅的较低位置时，认为卖出能量强劲。
*   **能量聚合**: 通过对过去 `winnum` 个周期的动力进行加总，当聚合能量超过设定阈值时发出交易信号。

## 2. 计算公式
*   **MEJTBUY (VAR0)**:
    $$ \text{MEJTBUY} = (\text{High} > \text{High}_{t-1}) \text{ AND } (\text{Close} > \text{High}_{t-2}) \text{ AND } (\text{Close} - \text{Low} > (\text{High} - \text{Low}) \times 0.08) $$
*   **MEJTSELL (VAR1)**:
    $$ \text{MEJTSELL} = (\text{Low} < \text{Low}_{t-1}) \text{ AND } (\text{Close} < \text{Low}_{t-2}) \text{ AND } (\text{Close} - \text{Low} < (\text{High} - \text{Low}) \times 0.92) $$

*   **INDEXBUY**:
    $$ \text{INDEXBUY} = \sum_{i=0}^{\text{winnum}-1} \text{MEJTBUY}_{t-i} $$
*   **INDEXSELL**:
    $$ \text{INDEXSELL} = \sum_{i=0}^{\text{winnum}-1} \text{MEJTSELL}_{t-i} $$

**默认参数**:
*   `winnum` = 8 (统计窗口)
*   `indexlnum` = 6 (买入阈值)
*   `indexsnum` = 5 (卖出阈值)

## 3. 交易策略
策略根据能量指标与阈值的关系产生信号。

当 `INDEXBUY` 大于 `indexlnum` 时，发出买入信号。
*   **操作**: 持有多仓 (`position = 1`)。

当 `INDEXSELL` 大于 `indexsnum` 时，发出卖出信号。
*   **操作**: 持有空仓 (`position = -1`)。

当上述多头和空头条件均不满足时（或均满足时，通常优先级决定或维持前一状态，本实现默认为平仓）。
*   **操作**: 平仓/空仓 (`position = 0`)。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **关键特点**:
    *   结合了价格突破（突破前高/低）和价格位置（收盘价相对于振幅的位置）。
    *   通过滑动窗口求和增强了信号的稳定性，过滤掉单一周期的噪音。
*   **风险**: 在宽幅震荡行情中，可能会因为频繁触及突破点但无法形成持续趋势而产生较多止损。
