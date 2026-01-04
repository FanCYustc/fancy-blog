---
aliases:
  - Commodity Selection Index
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

# CSI指标策略

## 1. 指标介绍
Commodity Selection Index (CSI) 通常用于在众多商品中筛选出最值得交易的品种（具有高波动性、高趋势性、低保证金和低佣金特点）。但在本单品种择时策略中，CSI 被用作一个判断市场状态的指标。
CSI 综合了趋势强度 (ADXR) 和 波动率 (ATR/MTR)。

## 2. 计算公式
CSI 的计算涉及 DMI 指标系统和 ATR。

根据研报：
*   `MYMARGIN = 1000`
*   `MYCOMMISION = 25`
*   $$ K = \frac{300}{\sqrt{\text{MYMARGIN}}} \times (150 + \text{MYCOMMISION}) \times 100 $$ 
*   计算得 $K \approx 5.42$

设定周期为 `length` (默认 14)。

1.  **MTR (Mean True Range)**: 真实波幅的指数移动平均 (EMA)。
    $$ TR = \max(\text{High}-\text{Low}, |\text{High}-\text{REF}(\text{Close},1)|, |\text{REF}(\text{Close},1)-\text{Low}|) $$ 
    $$ \text{MTR} = \text{EMA}(TR, \text{length}) $$ 

2.  **DMP & DMM**:
    *   $HD = \text{High} - \text{REF}(\text{High}, 1)$
    *   $LD = \text{REF}(\text{Low}, 1) - \text{Low}$
    *   If $HD > 0$ and $HD > LD$, $dmPlus = HD$, else $dmPlus = 0$
    *   If $LD > 0$ and $LD > HD$, $dmMinus = LD$, else $dmMinus = 0$
    *   $\text{DMP} = \text{EMA}(dmPlus, \text{length})$
    *   $\text{DMM} = \text{EMA}(dmMinus, \text{length})$

3.  **PDI & MDI**:
    *   $\text{PDI} = \frac{\text{DMP} \times 100}{\text{MTR}}$
    *   $\text{MDI} = \frac{\text{DMM} \times 100}{\text{MTR}}$

4.  **ADX & ADXR**:
    *   $DX = \frac{|\text{MDI} - \text{PDI}|}{\text{MDI} + \text{PDI}} \times 100$
    *   $\text{ADX} = \text{EMA}(DX, \text{length})$
    *   $\text{ADXR} = \frac{\text{ADX} + \text{REF}(\text{ADX}, \text{length})}{2}$

$$ \text{CSI} = K \times \text{ADXR} \times \text{MTR} $$

## 3. 交易策略
策略通过比较 CSI 与其自身的移动平均线来产生信号。

当 CSI 大于其自身均线时。
$$ \text{CSI} > \text{MA}(\text{CSI}, \text{length}) $$ 

**操作**: 持有多仓 (`position = 1`)。

当 CSI 小于其自身均线时。
$$ \text{CSI} < \text{MA}(\text{CSI}, \text{length}) $$ 

**操作**: 持有空仓 (`position = -1`)。

*注：CSI 本质上是一个非负的趋势/波动强度指标。研报中直接将其用于多空信号生成（大于均线做多，小于均线做空），这在逻辑上较为独特，可能隐含了“高波动/强趋势更有利于多头”的假设，或者研报省略了方向性过滤条件（如 PDI > MDI）。基于复现原则，此处严格按研报文字描述实现。*

## 4. 回测表现


## 5. 结论
*   **策略类型**: 波动率 / 拥挤度 (Volatility / Crowding)
*   **特点**: 利用 ADXR 和 ATR 的乘积来衡量市场的活跃度和趋势性。

更改多个参数，整个回测的胜率都在50%左右，夏普较低，收益率有差异。
