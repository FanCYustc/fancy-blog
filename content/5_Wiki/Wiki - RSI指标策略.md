---
aliases:
- Relative Strength Index
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

# RSI指标策略

## 1. 指标介绍
相对强弱指标（Relative Strength Index，简称 RSI）是通过比较一段时期内的平均收盘涨数和平均收盘跌数来分析市场买沽盘的意向和实力，从而作出未来市场的走势。
本策略基于 RSI 指标的双均线交叉系统，结合超买超卖阈值进行交易。主要逻辑是捕捉价格在极端区域（超卖/超买）发生短期反转的信号，同时利用长短周期 RSI 的交叉来确认趋势的启动或结束。

## 2. 计算公式
*   **DIFF**: $C_t - C_{t-1}$ (今日收盘价 - 昨日收盘价)
*   **RSI (通用)**: 
    $$RSI(N) = \frac{SMA(MAX(DIFF, 0), N, 1)}{SMA(ABS(DIFF), N, 1)} \times 100$$，报告中有笔误，要不然RSI达不到80.
    其中 $SMA(X, N, 1)$ 为权重为 $1/N$ 的移动平均（类似 Wilder's Smoothing）。
    *   注：$SMA(MAX(DIFF, 0), N, 1)$ 即 $N$ 日内上涨幅度的平滑平均。
    *   $SMA(ABS(DIFF), N, 1)$ 即 $N$ 日内价格变动绝对值的平滑平均。
*   **参数**:
    *   `mDay` (短期窗口): 默认 7
    *   `nDay` (长期窗口): 默认 14
*   **指标变量**:
    *   `RSISHORT`: 基于 `mDay` 计算的 RSI。
    *   `RSILONG`: 基于 `nDay` 计算的 RSI。

## 3. 交易策略
*   **买入信号 (Buy)**:
    *   当 `RSISHORT` 上穿 `RSILONG` (金叉)，且 `RSISHORT < 20` 时，做多。
*   **卖出信号 (Sell)**:
    *   当 `RSISHORT` 下穿 `RSILONG` (死叉)，且 `RSISHORT > 80` 时，做空。
*   **仓位控制**:
    *   信号为 1 (看多) 时持有多头。
    *   信号为 -1 (看空) 时持有空头。
    *   否则信号为0

## 4. 回测表现


## 5. 结论
本策略结合了均值回归（超买超卖）和趋势确认（均线交叉）的思想。
*   在超卖区域（<20）金叉买入，意在捕捉底部反转。
*   在超买区域（>80）死叉卖出，意在捕捉顶部反转。
这种双重确认机制在一定程度上减少了单纯使用 RSI 超买超卖带来的假信号，但也可能导致错失部分行情（如 RSI 未达到极端值时的趋势反转）。

* **策略类型**: 均值回归 / 反转 (Mean Reversion)

实际测试中，将上下界设为了30和70，否则完全没有交易，
