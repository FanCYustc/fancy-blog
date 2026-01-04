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

# CB指标策略

## 1. 指标介绍
CB 指标基于价格连续上涨或下跌的周期数来判断市场趋势的强弱。该策略认为，当价格连续上涨超过一定周期时，多头力量强劲，应顺势做多；当价格连续下跌超过一定周期时，空头力量强劲，应顺势做空。这是一个典型的动量/趋势跟随策略。

## 2. 计算公式
策略主要计算两个指标：连续上涨周期数 (UP) 和 连续下跌周期数 (DOWN)。

计算收盘价连续上涨的周期数。
$$ \text{UP} = \text{BARSLASTCOUNT}(\text{Close} > \text{REF}(\text{Close}, 1)) $$
即：当前收盘价大于上一周期收盘价的连续次数。

计算收盘价连续下跌的周期数。
$$ \text{DOWN} = \text{BARSLASTCOUNT}(\text{Close} < \text{REF}(\text{Close}, 1)) $$
即：当前收盘价小于上一周期收盘价的连续次数。

**默认参数**:
*   uplength = 3
*   downlength = 3

## 3. 交易策略
策略根据 UP 和 DOWN 值与设定阈值的关系产生信号。

当收盘价连续上涨周期数大于设定阈值时，做多。
$$ \text{UP} > \text{uplength} $$

**操作**: 持有多仓 (`position = 1`)。

当收盘价连续下跌周期数大于设定阈值时，做空。
$$ \text{DOWN} > \text{downlength} $$

*注：研报原文描述为“当收盘价连续下跌天数小于设定阈值”，结合上下文及策略的趋势跟随属性，此处判断为原文笔误或表述不清，实际逻辑应为连续下跌达到一定程度（大于阈值）时触发卖出信号。*

**操作**: 持有空仓 (`position = -1`)。

如果上述两个条件均不满足，则维持上一个信号状态不变（Always In / 状态机逻辑）。
$$ \text{Sig}_{t} = \begin{cases} 1 & \text{if } \text{UP} > \text{uplength} \\ -1 & \text{if } \text{DOWN} > \text{downlength} \\ \text{Sig}_{t-1} & \text{otherwise} \end{cases} $$

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **特点**: 捕捉连续单边行情的爆发点。
*   **优势**: 逻辑简单直观，在单边趋势市中表现较好。
*   **风险**: 在震荡市中，价格经常出现连续上涨或下跌后迅速反转，可能导致频繁止损（左右挨打）。
