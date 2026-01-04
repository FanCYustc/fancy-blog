---
aliases:
- True Strength Index
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

# TSI指标策略

## 1. 指标介绍
真实强弱指标（True Strength Index，简称 TSI）是由 William Blau 开发的一种动量指标。它通过对价格动量进行双重平滑处理，旨在剔除价格的短期高频噪音，从而更清晰地反映价格趋势的真实强度和方向。与传统的 RSI 不同，TSI 使用了两次指数移动平均（EMA），这使得它对趋势的反应更加平滑且滞后较小。

## 2. 计算公式
*   **MTM (动量)**: $C_t - C_{t-1}$ (今日收盘价 - 昨日收盘价)
*   **ABSMTM (动量绝对值)**: $|MTM|$
*   **双重平滑计算**:
    1.  先对 MTM 进行 `nDay` 期的 EMA 平滑。
    2.  再对上述结果进行 `mDay` 期的 EMA 平滑。
    *   Numerator (分子) = $EMA(EMA(MTM, nDay), mDay)$
    *   Denominator (分母) = $EMA(EMA(ABSMTM, nDay), mDay)$
*   **TSI 公式**:
    $$TSI = 100 \times \frac{Numerator}{Denominator}$$
*   **参数**:
    *   `nDay`: 第一重平滑周期，默认 13
    *   `mDay`: 第二重平滑周期，默认 25
    *   `threshold`: 信号阈值，默认（需根据研报确定，研报中提到最优参数阈值为 27 或默认逻辑中未明确提及数值但提到“大于设定阈值”）。根据研报图表及通常用法，这里先设定为 **0** 或研报图表中显示的某个值。
    *   *校正*: 研报正文提到“买入信号：当 TSI 指标大于设定阈值时... 卖出信号：当 TSI 指标小于设定阈值时...”。根据研报最优参数表，threshold 约为 **27**。

## 3. 交易策略
*   **买入信号 (Buy)**:
    *   当 `TSI` > `threshold` 时，做多。
*   **卖出信号 (Sell)**:
    *   当 `TSI` < `threshold` 时，做空。
    *   *注*: 研报中提到的是“卖出”，结合期货 CTA 上下文及盈亏比计算，通常指持有空头（做空）。即信号 > 阈值做多，信号 < 阈值做空。
    *   *修正*: 研报中的“卖出”有时指平仓。但根据“信号状态：看多（1）、看平（0）、看空（-1）”及测试规则“信号从1变为-1时做空两份合约”，策略是**反手策略**。
    *   **最终逻辑**:
        *   If `TSI` > `threshold`: Position = 1 (Long)
        *   If `TSI` < -`threshold`: Position = -1 (Short)  
        *   **推测逻辑**: 这是一个**突破策略**。
            *   做多: TSI > 27
            *   做空: TSI < -27
            *   中间: 保持
            *   因此：
                *   `TSI > threshold`: Position = 1
                *   `TSI < -threshold`: Position = -1
                *   `else`: Position = pre position

实际测试中，未到达threshold时保持原仓位比平仓效果好。

## 4. 回测表现


## 5. 结论
TSI 是一个优秀的趋势跟踪指标，通过双重平滑有效滤除了噪音。
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
