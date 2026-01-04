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

# Pivot指标策略

## 1. 指标介绍
Pivot 指标通过比较历史高低点与当前时间点的距离（周期数）来识别市场的顶部和底部反转点。
*   **底部反转**: 当最低点距离当前的时间跨度 (`LOWRIGHT`) 等于预设的右侧强度参数 (`RIGHTSTRENGTH`) 时，认为市场确认了一个局部底部。
*   **顶部反转**: 当最高点距离当前的时间跨度 (`HIGHRIGHT`) 等于预设的右侧强度参数 (`RIGHTSTRENGTH`) 时，认为市场确认了一个局部顶部。
*   **趋势维持**: `UPPIVOT` 记录上一次底部反转距今天数，`DOWNPIVOT` 记录上一次顶部反转距今天数。如果底部反转更近 (`UPPIVOT < DOWNPIVOT`，注意：原公式是 `UPPIVOT > DOWNPIVOT` 判断为 -1，即最近的是顶部反转，所以当前是空头；反之为多头)，则维持某种趋势。

## 2. 计算公式
*   `leftstrength`: 左侧强度（寻找高低点的左侧窗口）
*   `rightstrength`: 右侧强度（确认高低点的右侧滞后窗口）
*   `Window` = `leftstrength` + `rightstrength` + 1

*   **LOWRIGHT**: 过去 `Window` 天内最低价距今天数。
    $$ \text{LOWRIGHT} = \text{LLVBARS}(\text{LOW}, \text{Window}) $$
*   **HIGHRIGHT**: 过去 `Window` 天内最高价距今天数。
    $$ \text{HIGHRIGHT} = \text{HHVBARS}(\text{HIGH}, \text{Window}) $$
*   **UPPIVOT**: 上一个满足 `LOWRIGHT == RIGHTSTRENGTH` 条件的日期距今天数。
*   **DOWNPIVOT**: 上一个满足 `HIGHRIGHT == RIGHTSTRENGTH` 条件的日期距今天数。

## 3. 交易策略
研报文字描述与伪码略有差异，本策略遵循文字描述的“反转点”逻辑进行即时交易。

*   **买入信号 (Buy)**:
    当 `LOWRIGHT == RIGHTSTRENGTH` 时，确认为底部反转点，买入。
    *(这通常意味着：当前K线之前的 `rightstrength` 根K线都没有创新低，且最低点发生在 `rightstrength` 之前的那根K线上，且该最低点也是其左侧 `leftstrength` 范围内的最低点。这是一种经典的 Swing Point / Fractal 结构)*

*   **卖出信号 (Sell)**:
    当 `HIGHRIGHT == RIGHTSTRENGTH` 时，确认为顶部反转点，卖出。

如果在非触发时刻，可以参考 `UPPIVOT` 和 `DOWNPIVOT` 的关系来维持持仓，但最直接的逻辑是基于反转点信号。
如果 `UPPIVOT < DOWNPIVOT` (最近一次是底部反转)，倾向于看多。
如果 `UPPIVOT > DOWNPIVOT` (最近一次是顶部反转)，倾向于看空。

**默认参数**:
*   `leftstrength` = 14 (基于研报最优参数推测，文档中默认参数有误)
*   `rightstrength` = 9

## 4. 回测表现


## 5. 结论
*   **策略类型**: 均值回归 / 反转 (Mean Reversion / Reversal)
*   **特点**: 典型的分形(Fractal)或摆动点(Swing Point)识别策略。利用右侧确认机制（滞后 `rightstrength` 周期）来过滤虚假的高低点。
