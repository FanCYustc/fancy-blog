---
aliases:
- TRIX
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

# TESA指标策略

## 1. 指标介绍
三重指数平滑平均线（TRIX）是一种动量指标，通过对收盘价进行三次指数平滑处理来消除频繁的价格波动，从而更好地反映市场的长期趋势。
*   **平滑去噪**: 通过三次EMA计算，极大地过滤了短期噪音，使得曲线更加平滑。
*   **趋势识别**: 通过TRIX值与其移动平均线（TRIXMA）的交叉来判断趋势方向。

## 2. 计算公式
策略使用 **收盘价 (Close)** 作为计算基础。

需要进行三次 EMA 递归计算：
1.  $EMA1 = EMA(\text{Close}, nDay)$
2.  $EMA2 = EMA(EMA1, nDay)$
3.  $EMA3 = EMA(EMA2, nDay)$
4.  $\text{TRIXVAL} = EMA3$

对 TRIXVAL 再进行一次简单移动平均：
$$ \text{TRIXMA} = MA(\text{TRIXVAL}, mDay) $$ 

**默认参数**:
*   nDay = 12
*   mDay = 20

## 3. 交易策略
策略根据 **TRIXVAL** 与 **TRIXMA** 的相对大小关系产生信号。

当 TRIXVAL 向上突破 TRIXMA 时，发出买入信号：
$$ \text{TRIXVAL} > \text{TRIXMA} $$ 

**操作**: 持有多仓 (`position = 1`)。

当 TRIXVAL 向下跌破 TRIXMA 时，发出卖出信号：
$$ \text{TRIXVAL} < \text{TRIXMA} $$ 

**操作**: 持有空仓 (`position = -1`)。

*   该策略为始终在市策略（Always In Market），除非平仓条件触发（虽然原报告逻辑是看多/看平/看空，但在二元信号下通常表现为翻转）。
*   根据研报描述：
    *   信号状态：看多（1）、看平（0）、看空（-1）。
    *   但在具体的买卖信号描述中：
        *   TRIXVAL > TRIXMA -> 买进
        *   TRIXVAL < TRIXMA -> 卖出
    *   本复现将遵循上述二元逻辑，即 TRIXVAL > TRIXMA 持多，反之持空。若相等则维持前一状态或空仓（视具体数值精度而定，通常极少相等）。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **关键特点**:
    *   **深度平滑**: 相比普通 MA 或 MACD，TRIX 对噪音的过滤更强，适合捕捉中长期趋势。
    *   **滞后性**: 由于经过三次平滑，指标对价格变动的反应会有一定滞后，可能在趋势反转初期入场较慢。