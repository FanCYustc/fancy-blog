---
aliases:
  - Chaiikin Money Flow
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

# CMF指标策略

## 1. 指标介绍
Chaikin Money Flow (CMF) 是由 Marc Chaikin 开发的，基于累积/派发线 (Accumulation/Distribution Line) 原理的震荡指标。它通过测量一定时期内资金流入和流出的累积情况来判断买卖压力。
核心逻辑是：如果收盘价接近最高价，意味着累积（买入压力）；如果收盘价接近最低价，意味着派发（卖出压力）。CMF 将成交量加权后的价格位置进行加总，衡量市场的主力资金动向。

## 2. 计算公式
指标计算分为两步：计算资金流量乘数 (MFM) 和 资金流量成交量 (MFV)，然后计算 CMF。

$$ \text{MFM} = \frac{(2 \times \text{Close} - \text{Low} - \text{High})}{(\text{High} - \text{Low})} $$
*   如果 `High == Low`，则 MFM 设为 0。

$$ \text{MFV} = \text{MFM} \times \text{Volume} $$

CMF 是过去 nDay 的 MFV 之和除以过去 nDay 的成交量之和。
$$ \text{CMF} = \frac{\sum_{i=1}^{nDay} \text{MFV}_i}{\sum_{i=1}^{nDay} \text{Volume}_i} $$

**默认参数**:
*   nDay = 20
*   threshold = 0.05

## 3. 交易策略
策略根据 CMF 值与设定阈值的关系产生信号。

当 CMF 大于设定的正阈值时，认为多头资金流入明显。
$$ \text{CMF} > \text{threshold} $$

**操作**: 持有多仓 (`position = 1`)。

当 CMF 小于设定的负阈值时，认为空头资金流出明显。
$$ \text{CMF} < -\text{threshold} $$

**操作**: 持有空仓 (`position = -1`)。

若 CMF 处于中间区域 ($-\text{threshold} \le \text{CMF} \le \text{threshold}$)，则根据测试规则维持原有仓位（Always In）或平仓。

**本策略实现**: 
当 CMF 在阈值之间时，持仓为 0 (平仓/观望)，以严格符合研报中的“信号状态：看多(1)、看平(0)、看空(-1)”定义。
即：
*   CMF > 0.05 -> long
*   CMF < -0.05 -> short
*   -0.05 <= CMF <= 0.05 -> flat

## 4. 回测表现


## 5. 结论
*   **策略类型**: 微观结构 / 量价情绪 (Microstructure / Volume-Price)
*   **特点**: 结合价格位置和成交量，比单纯的价格指标更具领先性。
*   **优势**: 能有效识别资金的吸筹和派发阶段。
