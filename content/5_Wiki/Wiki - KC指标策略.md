---
aliases:
- Keltner Channel
info: null
date: 2025-12-25-星期四 16:55
update: null
tags:
- wiki/year2025
- wiki/month12
- quant/strategy
- quant/factor
id: wiki20251225165553
banner: '![[astrowalk.gif]]'
---

# KC指标策略

## 1. 指标介绍
凯尔特纳通道（Keltner Channel）是一种波动性通道指标，类似于布林带，但它使用平均真实波幅（ATR）而非标准差来计算通道宽度。该指标旨在识别趋势方向以及超买/超卖状况。当价格触及或突破通道上轨时，可能预示着超买或趋势的延续；触及或突破下轨时，可能预示着超卖或趋势的延续。本策略将价格突破通道作为主要的交易信号。

## 2. 计算公式
策略主要依赖于真实波幅（TR）和平均真实波幅（ATR），并以收盘价的指数移动平均线（EMA）为中轨，上下各加减 `multiplier` 倍的 ATR 来构建通道。

真实波幅是以下三个值中的最大值：
1.  当前 `High` 和 `Low` 之差。
2.  当前 `High` 和前一周期 `Close` 的绝对差。
3.  当前 `Low` 和前一周期 `Close` 的绝对差。

$$ \text{TR} = \text{MAX}(\text{High} - \text{Low}, |\text{High} - \text{Close}_{\text{prev}}|, |\text{Low} - \text{Close}_{\text{prev}}|) $$

ATR 是 TR 的简单移动平均（MA）。
$$ \text{ATRVAL} = \text{MA}(\text{TR}, \text{atrDay}) $$

*   **中轨 (Middle Band)**: 收盘价的指数移动平均线（EMA）。
    $$ \text{Middle Band} = \text{EMA}(\text{CLOSE}, \text{maDay}) $$
*   **上轨 (Upper Band, UPBAND)**: 中轨加上 `multiplier` 倍的 ATRVAL。
    $$ \text{UPBAND} = \text{Middle Band} + \text{multiplier} \times \text{ATRVAL} $$
*   **下轨 (Lower Band, DOWNBAND)**: 中轨减去 `multiplier` 倍的 ATRVAL。
    $$ \text{DOWNBAND} = \text{Middle Band} - \text{multiplier} \times \text{ATRVAL} $$

**默认参数**:
*   `maDay` = 20 (计算中轨 EMA 的周期)
*   `atrDay` = 20 (计算 ATR 的周期)
*   `multiplier` = 1.5 (ATR 的乘数)

## 3. 交易策略
策略以价格突破凯尔特纳通道的边界作为交易信号。

当满足以下条件时，发出买入信号（看多）：
*   当前收盘价向上突破上轨 (`CLOSE > UPBAND`)。

$$ \text{Signal} = 1 \iff \text{CLOSE} > \text{UPBAND} $$

**操作**: 持有多仓 (`position = 1`)。

当满足以下条件时，发出卖出信号（看空）：
*   当前收盘价向下突破下轨 (`CLOSE < DOWNBAND`)。

$$ \text{Signal} = -1 \iff \text{CLOSE} < \text{DOWNBAND} $$

**操作**: 持有空仓 (`position = -1`)。

当上述条件均不满足时：
**操作**: 平仓/空仓 (`position = 0`)。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 趋势跟踪 / 突破 (Trend Following / Breakout)
*   **策略特征**:
    *   捕捉价格在波动性扩张时的趋势突破机会。
    *   ATR 的使用使得通道宽度能自适应市场波动性，避免了固定宽度通道的缺点。
    *   可能在盘整市场中产生假突破信号。


实际测试中，策略信号触发逻辑反转效果可能会更好
