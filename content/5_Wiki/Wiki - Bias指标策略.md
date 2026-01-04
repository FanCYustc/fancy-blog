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

# Bias指标策略

## 1. 指标介绍
乖离率（Bias）是指股价与平均移动线之间的偏离程度，通过百分比的形式来表示股价与平均移动线之间的差距。如果股价在均线之上，称为正乖离；股价在均线之下，称为负乖离。
本策略基于申万宏源研报中的测试逻辑，将Bias作为趋势指标使用：当价格大幅偏离均线（正向）时看多，大幅偏离（负向）时看空。

## 2. 计算公式
策略使用 **收盘价 (Close)** 计算简单移动平均线 (MA)，进而计算 Bias。

$$ \text{MAVAL} = \text{MA}(\text{Close}, \text{nDay}) $$

$$ \text{Bias} = \frac{\text{Close} - \text{MAVAL}}{\text{MAVAL}} \times 100 $$

**默认参数**:
*   nDay = 5
*   threshold = 5

## 3. 交易策略
策略根据 Bias 值与设定阈值的关系产生信号。

当 Bias 向上突破设定阈值时，认为多头趋势强劲。
$$ \text{Bias} > \text{threshold} $$

**操作**: 持有多仓 (`position = 1`)。

当 Bias 向下突破设定阈值的负值时，认为空头趋势强劲。
$$ \text{Bias} < -\text{threshold} $$
*(注：研报原文为“当 Bias 小于设定阈值”，结合“看多(1)、看平(0)、看空(-1)”的信号状态定义及对称性原则，此处解读为负阈值)*

**操作**: 持有空仓 (`position = -1`)。

当 Bias 处于正负阈值之间时，视为震荡或无明显趋势。
$$ -\text{threshold} \le \text{Bias} \le \text{threshold} $$

**操作**: 平仓/空仓 (`position = 0`)。

在实验中使用了与之相反的信号触发逻辑，效果更好。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 均值回归 / 反转 (Mean Reversion)
*   **特点**: 利用价格短期内对均线的剧烈偏离来捕捉动量爆发的时刻。
*   **风险**: 在均值回归的市场特征下（即价格偏离后迅速回归），该策略可能面临高位接盘或低位杀跌的风险（反向指标）。


在实际回测中，尤其是IF，反转交易逻辑表现更好。
