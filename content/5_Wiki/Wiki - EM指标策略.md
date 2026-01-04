---
aliases:
- Ease of Movement
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

# EM指标策略

## 1. 指标介绍
简易波动指标（Ease of Movement, EOM）将价格的变动与成交量结合起来，用以判断价格变动的难易程度。
*   如果价格变动较大且成交量较小，说明价格“轻易”地发生了移动，阻力较小。
*   如果价格变动较小但成交量巨大，说明价格移动困难，阻力较大。

策略通过对 EOM 指标进行移动平均（MAEOM），来判断市场的主趋势方向。

## 2. 计算公式
所需数据：High (最高价), Low (最低价), Volume (成交量)。


计算公式如下：
$$ \text{EOMVAL} = \left( \frac{H_t + L_t}{2} - \frac{H_{t-1} + L_{t-1}}{2} \right) \times \frac{H_t + L_t}{V_t} $$

其中：
*   $H_t, L_t, V_t$: 当前周期的最高价、最低价、成交量。
*   $H_{t-1}, L_{t-1}$: 前一周期的最高价、最低价。

该公式前半部分 $\left( \frac{H_t + L_t}{2} - \frac{H_{t-1} + L_{t-1}}{2} \right)$ 衡量了中间价的变动（Midpoint Move）。
后半部分 $\frac{H_t + L_t}{V_t}$ 类似于价格/成交量的比率，用于衡量推动单位价格变动所需的“力”的倒数（或者说是价格相对于量的波动幅度）。


对 EOMVAL 进行指数移动平均（EMA）：
$$ \text{MAEOM} = \text{EMA}(\text{EOMVAL}, \text{LENGTH}) $$

**默认参数**:
*   `length` = 14

## 3. 交易策略
策略利用 MAEOM 的正负值来判断趋势方向。

当 MAEOM > 0 时，认为价格上涨阻力较小，处于上升趋势。
*   **信号**: 看多 (1)

当 MAEOM < 0 时，认为价格下跌阻力较小（或上涨阻力大且价格下跌），处于下降趋势。
*   **信号**: 看空 (-1)

*   **看多 (1)**: 做多。
*   **看空 (-1)**: 做空。
*   **看平 (0)**: 理论上存在，但连续数据中极少出现 MAEOM 恰好为 0 的情况。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **特点**: 结合了价格幅度和成交量，试图过滤掉那些“费力”的价格波动，捕捉“轻松”的趋势运动。
