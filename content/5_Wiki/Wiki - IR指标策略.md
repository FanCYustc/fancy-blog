---
aliases:
  - Island Reversal
  - 岛型反转
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

# IR指标策略

## 1. 指标介绍
岛形反转（Island Reversal, IR）通常是一种强烈的反转形态，表现为价格跳空缺口后盘整，随后再次反向跳空。本策略基于申万宏源研报中的定义，利用价格相对于过去一段时间极值的跳空（Gap）以及当日收盘价在日内波幅中的位置，来捕捉短期的爆发性机会或反转机会。

## 2. 计算公式
策略主要依赖过去 N 个周期内的最高/最低价极值，以及当前 K 线的日内波幅分割点。

*   **PASTHIGH**: 过去 `nDay` 个周期内（不含当前周期）的最高价的最大值。
    $$ \text{PASTHIGH} = \text{HHV}(\text{REF}(\text{HIGH}, 1), \text{nDay}) $$
*   **PASTLOW**: 过去 `nDay` 个周期内（不含当前周期）的最低价的最小值。
    $$ \text{PASTLOW} = \text{LLV}(\text{REF}(\text{LOW}, 1), \text{nDay}) $$

利用参数 `pct` 将当前 K 线的波幅（High - Low）进行分割：
*   **IRDOWN**: 下界线。
    $$ \text{IRDOWN} = \text{LOW} + (\text{HIGH} - \text{LOW}) \times \frac{\text{pct}}{100} $$
*   **IRUP**: 上界线。
    $$ \text{IRUP} = \text{HIGH} - (\text{HIGH} - \text{LOW}) \times \frac{\text{pct}}{100} $$

**默认参数**:
*   `nDay` = 4 (周期数)
*   `pct` = 30 (百分比)

## 3. 交易策略
策略根据是否存在跳空（Gap）以及收盘价在 K 线实体中的位置产生信号。

当满足以下条件时，发出买入信号（看多）：
1.  **向上跳空**: 当前最低价高于过去 `nDay` 周期的最高价 (`LOW > PASTHIGH`)。
2.  **收盘偏低**: 当前收盘价低于下界线 (`CLOSE < IRDOWN`)，即收盘价位于当日波幅的底部 `pct`% 区域内。

$$ \text{Signal} = 1 \iff (\text{LOW} > \text{PASTHIGH}) \land (\text{CLOSE} < \text{IRDOWN}) $$

**操作**: 持有多仓 (`position = 1`)。

当满足以下条件时，发出卖出信号（看空）：
1.  **向下跳空**: 当前最高价低于过去 `nDay` 周期的最低价 (`HIGH < PASTLOW`)。
2.  **收盘偏高**: 当前收盘价高于上界线 (`CLOSE > IRUP`)，即收盘价位于当日波幅的顶部 `pct`% 区域内。

$$ \text{Signal} = -1 \iff (\text{HIGH} < \text{PASTLOW}) \land (\text{CLOSE} > \text{IRUP}) $$

**操作**: 持有空仓 (`position = -1`)。

当上述条件均不满足时：
**操作**: 平仓/空仓 (`position = 0`)。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 反转 / 形态 (Reversal / Pattern)
*   **策略特征**:
    *   该策略捕捉的是剧烈的跳空行为。
    *   “向上跳空但收盘低”通常被视为一种力量的衰竭或短期回调的买入点（取决于具体市场环境，研报将其定义为买入）。
    *   由于条件较为苛刻（必须跳空），该策略可能交易频率较低，且持仓时间较短（一旦缺口回补或条件消失即平仓）。

*   **注**: 研报中提到 `nDay` 默认为 4，在分钟线回测中即代表 4 分钟。
