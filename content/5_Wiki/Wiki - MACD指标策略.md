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

# MACD指标策略

## 1. 指标介绍
MACD 是一种经典的趋势跟踪指标，利用两条不同速度（快、慢）的指数移动平均线（EMA）之间的差离值（DIF）来判断股价的走势。通过引入 DIF 的移动平均线（DEA/Signal），进一步识别趋势的强弱和转折。

*   **DIF (差离值)**: 快速 EMA 与 慢速 EMA 之差。反映了短期趋势与长期趋势的偏离程度。
*   **DEA (信号线)**: DIF 的移动平均线。平滑了 DIF 的波动，作为判断 DIF 趋势的基准。
*   **MACD (柱状图)**: DIF 与 DEA 的差值（通常放大2倍）。反映了 DIF 偏离 DEA 的程度，即趋势的动能。

## 2. 计算公式
策略基于 **收盘价 (Close)** 计算。

1.  **快线 EMA (Fast EMA)**:
    $$ \text{EMA}_{\text{fast}} = \text{EMA}(\text{Close}, \text{FAST}) $$
2.  **慢线 EMA (Slow EMA)**:
    $$ \text{EMA}_{\text{slow}} = \text{EMA}(\text{Close}, \text{SLOW}) $$
3.  **DIF (差离值)**:
    $$ \text{DIF} = \text{EMA}_{\text{fast}} - \text{EMA}_{\text{slow}} $$
4.  **DEA (信号线)**:
    $$ \text{DEA} = \text{EMA}(\text{DIF}, \text{COMPARE}) $$
5.  **MACD柱 (Bar)**:
    $$ \text{MACD} = (\text{DIF} - \text{DEA}) \times 2 $$

**默认参数**:
*   FAST = 12
*   SLOW = 26
*   COMPARE = 9

## 3. 交易策略
策略结合了“零轴”确认和“金叉/死叉”逻辑，旨在捕捉较强确信度的趋势。

当满足以下两个条件时，发出买入信号：
1.  **多头市场背景**: DIF > 0 且 DEA > 0 (即两者均在零轴上方)
2.  **向上突破**: DIF 向上穿过 DEA (金叉)

$$ \text{DIF} > 0 \land \text{DEA} > 0 \land \text{DIF} \text{ cross above } \text{DEA} $$

**操作**: 持有多仓 (`position = 1`)。

当满足以下两个条件时，发出卖出信号：
1.  **空头市场背景**: DIF < 0 且 DEA < 0 (即两者均在零轴下方)
2.  **向下突破**: DIF 向下跌破 DEA (死叉)

$$ \text{DIF} < 0 \land \text{DEA} < 0 \land \text{DIF} \text{ cross below } \text{DEA} $$

**操作**: 持有空仓 (`position = -1`)。

*   不满足上述条件的交叉（例如零轴下方的金叉，或零轴上方的死叉）不触发开仓/反手信号，通常视为反弹或回调。
*   如果在持仓期间，趋势条件不再满足（但未触发反向信号），通常维持原仓位（根据 CTA 框架的一贯逻辑）。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **特点**:
    *   **双重过滤**: 既要求金叉/死叉，又要求在零轴同侧（DIF/DEA 同正或同负），这过滤掉了震荡行情中的许多弱势信号。
    *   **右侧交易**: 确认趋势形成后才入场。
    *   **缺点**: 在趋势反转初期（通常发生在零轴另一侧的交叉）不会立即入场，可能会错过头部和底部的一段行情，入场点位可能相对滞后。
