---
aliases:
  - 梅斯线
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

# Mass指标策略

## 1. 指标介绍
梅斯线（Mass Index）是一种基于高低价波幅（High-Low Range）的波动率指标。其核心思想是通过比较波幅的单重指数平滑移动平均（Single EMA）与双重指数平滑移动平均（Double EMA）的比率，来捕捉趋势反转或持续的信号。该指标认为，当波幅扩大时，往往预示着行情的转折或加速。

## 2. 计算公式
策略涉及以下步骤计算梅斯值（Mass Value）及其移动平均线。

*   **MASSVAR0**: 计算最高价与最低价之差（波幅）的 `Smoothlength` 周期指数移动平均（EMA）。
    $$ \text{Wave} = \text{High} - \text{Low} $$
    $$ \text{MASSVAR0} = \text{EMA}(\text{Wave}, \text{Smoothlength}) $$

*   **MASSVAR1**: 对 `MASSVAR0` 再次进行 `Smoothlength` 周期的 EMA 计算。
    $$ \text{MASSVAR1} = \text{EMA}(\text{MASSVAR0}, \text{Smoothlength}) $$

*   **MASSVAR2**: 单重 EMA 与双重 EMA 的比值。
    $$ \text{MASSVAR2} = \frac{\text{MASSVAR0}}{\text{MASSVAR1}} $$

*   **MASSVAL**: `MASSVAR2` 在过去 `Summationlength` 个周期的累加和。
    $$ \text{MASSVAL} = \text{SUM}(\text{MASSVAR2}, \text{Summationlength}) $$

*   为了产生交易信号，通常计算梅斯值的移动平均线。
    $$ \text{MA} = \text{MA}(\text{MASSVAL}, \text{Malength}) $$

**默认参数**:
*   `Smoothlength` = 9
*   `Summationlength` = 25
*   `Malength` = 5

## 3. 交易策略
策略通过比较梅斯值 (`MASSVAL`) 与其移动平均线 (`MA`) 的关系来生成信号。

当满足以下条件时，发出买入信号（看多）：
*   梅斯值向上突破其移动平均线 (`MASSVAL > MA`)。

$$ \text{Signal} = 1 \iff \text{MASSVAL} > \text{MA} $$

**操作**: 持有多仓 (`position = 1`)。

当满足以下条件时，发出卖出信号（看空）：
*   梅斯值向下突破其移动平均线 (`MASSVAL < MA`)。

$$ \text{Signal} = -1 \iff \text{MASSVAL} < \text{MA} $$

**操作**: 持有空仓 (`position = -1`)。

当上述条件均不满足时（通常不会发生，除非相等）：
**操作**: 平仓/空仓 (`position = 0`)。即改变持仓直到出现反向信号。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 波动率 / 趋势跟踪
*   **策略特征**:
    *   Mass Index 实际上是一个衡量波幅变化速率的指标。
    *   当 Mass Index 显著上升时，通常意味着波幅扩大；当其下降时，波幅收缩。
    *   本策略将其用法简化为类似 MACD 或 均线交叉 的趋势跟踪逻辑：指标高于均线看多，低于均线看空。
