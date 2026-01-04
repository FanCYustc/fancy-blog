---
aliases:
  - 阿隆指标
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

# Aroon指标策略

## 1. 指标介绍
阿隆指标（Aroon）是由Tushar Chande发明，用于评估趋势的强度和是否存在趋势。它通过计算自近期最高价和最低价以来所经过的周期数，来判断当前趋势的强弱。
Aroon指标分为两条线：AroonUp（阿隆上升线）和AroonDown（阿隆下行线）。
*   **AroonUp**：反映了股价创新高以来的时间。值越大，说明离近期最高价越近，上升趋势越强。
*   **AroonDown**：反映了股价创新低以来的时间。值越大，说明离近期最低价越近，下跌趋势越强。

## 2. 计算公式
所需数据：High (最高价), Low (最低价)
参数：
*   `nday`: 计算周期 (默认 25)
*   `upband`: 上轨阈值 (默认 70)
*   `lowband`: 下轨阈值 (默认 30)

计算公式：
1.  **AroonUp (UP)**:
    $$ UP = \frac{nday - \text{HHVBARS}(High, nday)}{nday} \times 100 $$
    其中 `HHVBARS(High, nday)` 表示过去 `nday` 个周期内最高价距离当前的周期数（若当前K线为最高价，则为0）。

2.  **AroonDown (DOWN)**:
    $$ DOWN = \frac{nday - \text{LLVBARS}(Low, nday)}{nday} \times 100 $$
    其中 `LLVBARS(Low, nday)` 表示过去 `nday` 个周期内最低价距离当前的周期数（若当前K线为最低价，则为0）。

## 3. 交易策略
### 入场信号
*   **做多 (Long)**: 当 `UP > upband` 且 `DOWN < lowband` 时。
    *   含义：近期创新高，且离创新低时间较远（上升趋势强，下跌趋势弱）。
*   **做空 (Short)**: 当 `DOWN > upband` 且 `UP < lowband` 时。
    *   含义：近期创新低，且离创新高时间较远（下跌趋势强，上升趋势弱）。

### 信号处理
*   信号状态：看多 (1), 看平 (0), 看空 (-1)。
*   在回测中，通常采用持有直到反向信号出现的方式（Flip-flop），或者若策略定义了平仓条件则平仓。根据研报描述“信号不变时，维持头寸不变”，暗示为持有直到信号改变。

## 4. 回测表现


## 5. 结论
### 默认参数
*   `nday`: 25
*   `upband`: 70
*   `lowband`: 30

### 优化参数 (参考研报)
研报中对沪深300指数的优化参数示例：
*   `nday`: 11
*   `upband`: 40 ~ 45
*   `lowband`: 20 ~ 21


*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **关键特点**:
    *   **时间维度**: 不同于传统基于价格幅度的指标，Aroon 关注“时间”，即“多久以前创了新高/新低”。
    *   **相对强弱**: 通过比较上升趋势强度（AroonUp）和下跌趋势强度（AroonDown）的相对大小来决定市场方向。