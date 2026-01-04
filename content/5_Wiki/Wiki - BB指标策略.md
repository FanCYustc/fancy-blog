---
aliases:
  - Breakout of Bar
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

# BB指标策略

## 1. 指标介绍
Breakout of Bar (BB) 是一种经典的通道突破策略。其核心思想认为，当价格突破过去一段时间内的最高价时，表明市场多头力量强势，趋势可能向上继续，应顺势做多；反之，当价格跌破过去一段时间内的最低价时，表明空头力量强势，应顺势做空。

该策略本质上利用了价格的新高或新低来捕捉趋势的爆发点。

## 2. 计算公式
策略关注当前价格（最高价/最低价）与历史区间极值 的关系。

*   **Ref_High_Max**: 过去 $nDay$ 个周期内的最高价的最大值（不包含当前Bar）。
    $$ \text{Ref\_High\_Max} = \text{REF}(\text{HHV}(\text{High}, nDay), 1) $$
*   **Ref_Low_Min**: 过去 $mDay$ 个周期内的最低价的最小值（不包含当前Bar）。
    $$ \text{Ref\_Low\_Min} = \text{REF}(\text{LLV}(\text{Low}, mDay), 1) $$

虽然交易逻辑直接比较价格，但研报定义了指标值：
*   **HBB**: 当前最高价与近期最高价之差。
    $$ HBB = \text{High} - \text{Ref\_High\_Max} $$
*   **LBB**: 当前最低价与近期最低价之差。
    $$ LBB = \text{Low} - \text{Ref\_Low\_Min} $$

**默认参数**:
*   `nDay` (多头窗口): 14
*   `mDay` (空头窗口): 14

## 3. 交易策略
策略属于典型的**趋势跟随**（Trend Following）类型。

当最高价突破近期最高价时，发出买入信号。
$$ \text{High} > \text{Ref\_High\_Max} $$
即 $HBB > 0$。

**操作**: 持有多仓 (`position = 1`)。

当最低价跌破近期最低价时，发出卖出信号。
$$ \text{Low} < \text{Ref\_Low\_Min} $$
即 $LBB < 0$。

**操作**: 持有空仓 (`position = -1`)。

若未发生新的突破（价格在历史高低点之间震荡），维持上一时刻的仓位状态。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **关键特点**:
    *   **Donchian Channel**: 该策略逻辑与唐奇安通道（Donchian Channel）突破策略基本一致。
    *   **顺势而为**: 捕捉价格创出新高/新低的时刻入场，试图抓住单边趋势。
*   **风险**:
    *   **假突破**: 在震荡行情中，价格可能短暂突破高点后迅速回落（“画门”），导致高买低卖的磨损。
    *   **参数敏感**: 窗口参数 $nDay/mDay$ 决定了通道的宽度，过短容易产生噪音，过长可能反应迟钝。


实际执行中，反转的交易逻辑效果会更好。
