---
aliases:
  - Chaikin Oscillator
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

# CO指标策略

## 1. 指标介绍
Chaikin Oscillator (CHO) 是基于累积/派发线 (Accumulation/Distribution Line, ADL) 的动量指标。它通过计算 ADL 的两条不同周期的指数移动平均线 (EMA) 之差，来衡量资金流动的加速度。
*   **CHO > 0**: 买方力量占优，资金流入加速。
*   **CHO < 0**: 卖方力量占优，资金流出加速。

## 2. 计算公式
$$ \text{VAR1} =\frac{(\text{Close} - \text{Open})}{(\text{High} - \text{Low})} 	\times 	\text{Volume} $$
$$ 	\text{ACCUM} = 	\text{VAR1} $$
*(注：这就是经典的 Accumulation/Distribution Line 的定义，不过通常 ADL 分母是 Close 相对于 High/Low 的位置，这里研报使用的是 Close - Open，即实体部分占振幅的比例)*

$$ 	\text{CHOVAL} = 	\text{EMA}(	\text{ACCUM}, 	\text{FAST}) - 	\text{EMA}(	\text{ACCUM}, 	\text{SLOW}) $$

**默认参数**:
*   `fast` = 3
*   `slow` = 10

## 3. 交易策略
策略利用 CHO 指标穿越零轴作为买卖信号。

当 `CHOVAL` 上穿 0 线时（由负转正），买进。
*   Condition: `CHOVAL > 0` AND `CHOVAL[1] <= 0`

当 `CHOVAL` 下穿 0 线时（由正转负），卖出。
*   Condition: `CHOVAL < 0` AND `CHOVAL[1] >= 0`

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **特点**: 结合了价格形态（K线实体）和成交量信息，反应市场内部的买卖压力变化。属于量价配合类的趋势策略。
