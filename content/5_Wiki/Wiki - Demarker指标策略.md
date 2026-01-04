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

# Demarker指标策略

## 1. 指标介绍
德马克指标（DeMarker Index，简称 DEM）是由 Tom DeMark 发明的一个摆动指标，用于评估市场的超买和超卖状态。它通过比较当前周期的最高价/最低价与上一周期的最高价/最低价，来衡量买压和卖压的强弱。与 RSI 类似，DEM 的取值范围在 0 到 100 之间，通常用于识别价格反转的潜在机会。

## 2. 计算公式
DEM 指标的计算步骤如下：

1.  **计算 DeMax 和 DeMin**:
    *   `DeMax`: 若当前最高价 > 昨天最高价，则 `DeMax = 当前最高价 - 昨天最高价`；否则 `DeMax = 0`。
    *   `DeMin`: 若昨天最低价 > 当前最低价，则 `DeMin = 昨天最低价 - 当前最低价`；否则 `DeMin = 0`。
    
    公式表示：
    $$ DEMAX = \max(HIGH - REF(HIGH, 1), 0) $$
    $$ DEMIN = \max(REF(LOW, 1) - LOW, 0) $$

2.  **计算 n 天的移动和**:
    *   `SUMDEMAX`: n 天内 `DeMax` 的总和。
    *   `SUMDEMIN`: n 天内 `DeMin` 的总和。
    
    $$ SUMDEMAX = SUM(DEMAX, n) $$
    $$ SUMDEMIN = SUM(DEMIN, n) $$

3.  **计算 DEM 值**:
    $$ DEM = \frac{SUMDEMAX}{SUMDEMAX + SUMDEMIN} \times 100 $$
    (若分母为 0，则 DEM 设为 50)

    **默认参数**:
    *   `n` (周期): 12

## 3. 交易策略
根据申万宏源研报中的定义，交易信号生成如下：

*   **参数**:
    *   `threshold1` (买入阈值): 默认为 91 (注：研报中写 "当 DEMARKER 大于设定阈值 threshold1 时，买进"，这通常是动量突破的逻辑，或者原文阈值定义有特殊性，按原文执行)。
    *   `threshold2` (卖出阈值): 默认为 9 (注：研报中写 "当 DEMARKER 小于设定阈值 threshold2 时，卖出"，同上)。
    *   **修正说明**: 研报中“常用方法”部分提到 "当 DEMARKER 小于设定阈值时，买进"（超卖反弹），但“本报告中的信号发生方法”却写的是 "当 DEMARKER 大于设定阈值 threshold1 时，买进"（动量突破/超买追涨？）。结合阈值 91（高位）和 9（低位），以及“买入信号...大于91”和“卖出信号...小于9”，这看起来是一个**反转策略的反向应用**或者**趋势跟随**策略（高位追买，低位杀跌）。**严格遵循研报文字描述**：
        *   **买入信号 (Long Signal)**: 当 $DEM > threshold1$ (91) 时，发出做多信号（Signal = 1）。
        *   **卖出信号 (Short Signal)**: 当 $DEM < threshold2$ (9) 时，发出做空信号（Signal = -1）。
        *   **平仓/观望**: 其他情况，若无持仓则观望，有持仓则保持。研报中提到 "信号不变时，维持头寸不变"，并未明确提到中途平仓条件，通常 implying 持有直到反向信号出现。
        *   **主要逻辑**: 采用研报具体的信号发生方法：
            *   If $DEM > 91$ -> Long
            *   If $DEM < 9$ -> Short
            *   Else -> Hold previous position (or 0 if start)
            

## 4. 回测表现


## 5. 结论
Demarker 策略在本研报中被用作一个趋势突破策略。通过设定极端的阈值（91 和 9），试图在市场动能极强（向上或向下）时介入。
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)

虽然目前的交易逻辑获利了，但是胜率很低，rankICIR为-0.5，但在IF上回测为持续上涨的图像。
