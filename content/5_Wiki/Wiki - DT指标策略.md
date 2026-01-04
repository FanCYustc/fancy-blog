---
aliases:
  - Dual Thrust Index
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

# DT指标策略

## 1. 指标介绍
Dual Thrust (DT) 是一种经典的趋势跟踪策略。该策略通过计算过去 N 天的价格区间（Range）来确定当日的开仓阈值。它利用过去 N 日的最高价、最低价和收盘价构建一个震荡区间，当价格突破该区间的上界时做多，跌破下界时做空。该策略旨在捕捉日内或隔日的单边趋势行情，对于日内波动率放大的市场具有较好的适应性。

## 2. 计算公式
策略主要依赖过去 `nDay` 天的日线数据（Highest High, Highest Close, Lowest Close, Lowest Low）以及当日开盘价。

*   **HH**: 过去 `nDay` 天的最高价的最大值。
    $$ HH = \max(High_{t-1}, High_{t-2}, ..., High_{t-n}) $$
*   **HC**: 过去 `nDay` 天的收盘价的最大值。
    $$ HC = \max(Close_{t-1}, Close_{t-2}, ..., Close_{t-n}) $$
*   **LC**: 过去 `nDay` 天的收盘价的最小值。
    $$ LC = \min(Close_{t-1}, Close_{t-2}, ..., Close_{t-n}) $$
*   **LL**: 过去 `nDay` 天的最低价的最小值。
    $$ LL = \min(Low_{t-1}, Low_{t-2}, ..., Low_{t-n}) $$

*   **R**: 过去 N 日的震荡区间幅度。
    $$ R = \max(HH - LC, HC - LL) $$

*   **Open**: 当日开盘价（通常取当日第一根K线的开盘价）。
*   **UpperBand (上轨)**:
    $$ UpperBand = Open + k1 \times R $$
*   **LowerBand (下轨)**:
    $$ LowerBand = Open - k2 \times R $$

**默认参数**:
*   `nDay` = 5
*   `k1` = 0.7
*   `k2` = 0.7

## 3. 交易策略
策略采用趋势突破（Trend Breakout）逻辑，信号状态包括看多 (1)、看空 (-1) 和维持 (Hold)。

当满足以下条件时，发出买入信号（看多）:
1.  **向上突破**: 当前收盘价大于上轨 (`Close > UpperBand`)。

$$ \text{Signal} = 1 \iff (\text{Close} > \text{UpperBand}) $$

**操作**: 持有多仓 (`position = 1`)。

当满足以下条件时，发出卖出信号（看空）:
1.  **向下突破**: 当前收盘价小于下轨 (`Close < LowerBand`)。

$$ \text{Signal} = -1 \iff (\text{Close} < \text{LowerBand}) $$

**操作**: 持有空仓 (`position = -1`)。

当价格处于上下轨之间 (`LowerBand` <= `Close` <= `UpperBand`) 时：
**操作**: 维持上一时刻的信号状态不变。若初始为空仓，则继续空仓。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **策略特征**:
    *   **动态阈值**: 利用历史波动率动态调整开仓门槛。
    *   **日内趋势**: 适合捕捉日内大幅单边行情。
    *   **参数敏感**: 参数 `k1` 和 `k2` 控制策略的敏感度，值越小交易越频繁，值越大过滤效果越强。
