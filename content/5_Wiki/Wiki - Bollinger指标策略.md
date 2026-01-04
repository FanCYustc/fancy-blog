---
aliases:
  - Bollinger Bands
  - 布林带
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

# Bollinger指标策略

## 1. 指标介绍
本策略基于布林带（Bollinger Bands）指标进行趋势跟踪交易。不同于传统的布林带回归策略（触轨反向），本策略采用**突破**逻辑：当价格突破布林带上轨时，认为多头趋势确立，做多；当价格跌穿布林带下轨时，认为空头趋势确立，做空。

此外，本策略的一个显著特点是采用了**非对称**的参数设置，即计算上轨和下轨所使用的移动平均线窗口（Lookback Window）是独立的，分别由 `mDay` 和 `nDay` 控制。

## 2. 计算公式
策略涉及两条关键轨道：上轨（UPP）和下轨（DOWNP）。

上轨由基于 `mDay` 周期的移动平均线和标准差计算得出：
$$
\text{UPP} = \text{MA}(\text{Close}, \text{mDay}) + \text{nstd} \times \text{STD}(\text{Close}, \text{mDay})
$$

下轨由基于 `nDay` 周期的移动平均线和标准差计算得出：
$$
\text{DOWNP} = \text{MA}(\text{Close}, \text{nDay}) - \text{nstd} \times \text{STD}(\text{Close}, \text{nDay})
$$

其中：
*   `MA(Close, N)`: 收盘价的 N 周期简单移动平均。
*   `STD(Close, N)`: 收盘价的 N 周期标准差。

*   `mDay`: 20 (计算上轨的周期)
*   `nDay`: 14 (计算下轨的周期)
*   `nstd`: 2 (标准差倍数)

## 3. 交易策略
策略是一个全天候持仓（Always-in）或信号触发型的趋势策略。

当收盘价**上穿**布林带上轨时，发出买入信号：
*   条件: $\text{Close}_t > \text{UPP}_t$
*   操作: 若当前为空仓或持有空单，则平空并开多 (仓位 +1)。

当收盘价**下穿**布林带下轨时，发出卖出信号：
*   条件: $\text{Close}_t < \text{DOWNP}_t$
*   操作: 若当前为空仓或持有多单，则平多并开空 (仓位 -1)。

*   当价格处于上下轨之间（$\text{DOWNP} \le \text{Close} \le \text{UPP}$）时，信号保持不变，维持之前的持仓方向。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **关键特点**:
    *   **非对称通道**: 上涨和下跌趋势的判断周期独立，适应市场潜在的“慢涨快跌”或“快涨慢跌”的不对称波动特性。
    *   **顺势交易**: 捕捉价格突破波动率通道后的惯性运动。
*   **风险**: 在震荡行情中，价格可能频繁穿越上下轨导致来回止损（Whipsaw）。


实际回测中，翻转的交易逻辑效果更好。
