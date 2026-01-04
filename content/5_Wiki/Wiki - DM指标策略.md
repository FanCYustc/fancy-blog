---
aliases:
- Directional Movement Index
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

# DM指标策略

## 1. 指标介绍
动向指标（Directional Movement Index，简称 DMI）通过分析股票价格在涨跌过程中买卖双方力量均衡点的变化，即多空双方的力量变化受价格波动的影响而发生由均衡到失衡的循环过程，从而提供对趋势判断依据的一种技术指标。
*   **ADX**: 衡量趋势的强弱。
*   **PDI (+DI)**: 代表上升方向线的强弱。
*   **MDI (-DI)**: 代表下降方向线的强弱。

本策略基于申万宏源研报中的测试逻辑，利用 ADX 与 PDI/MDI 的趋势和交叉关系来捕捉趋势交易机会。

## 2. 计算公式
策略使用 **High (最高价)**, **Low (最低价)**, **Close (收盘价)** 作为计算基础。

*   **MTR (真实波幅均值)**: 一定周期内的真实波幅平均值。
    $$ MTR = \text{EMA}(\text{MAX}(\text{MAX}(\text{HIGH}-\text{LOW}, \text{ABS}(\text{HIGH}-\text{REF}(\text{CLOSE},1))), \text{ABS}(\text{REF}(\text{CLOSE},1)-\text{LOW})), \text{LAG}) $$
*   **HD**: 今天最高价与昨天最高价的差值。
    $$ HD = \text{HIGH} - \text{REF}(\text{HIGH}, 1) $$
*   **LD**: 昨天最低价与今天最低价的差值。
    $$ LD = \text{REF}(\text{LOW}, 1) - \text{LOW} $$

*   **DMP (上升方向移动平均)**:
    $$ 
    \text{DMP} = \text{MA}(\text{IF}(HD>0  \text{\&}  \text{HD}>LD, HD, 0), \text{LAG}) 
    $$
*   **DMM (下降方向移动平均)**:
    $$ \text{DMM} = \text{MA}(\text{IF}(LD>0 \ \text{\&} \ \text{LD}>HD, LD, 0), \text{LAG}) $$

*   **PDI (上升方向线)**:
    $$ \text{PDI} = \frac{\text{DMP} \times 100}{\text{MTR}} $$
*   **MDI (下降方向线)**:
    $$ \text{MDI} = \frac{\text{DMM} \times 100}{\text{MTR}} $$
*   **ADX (平均动向指数)**:
    $$ \text{ADX} = \text{EMA}\left(\text{ABS}\left(\frac{\text{PDI} - \text{MDI}}{\text{PDI} + \text{MDI}}\right) \times 100, \text{LAG}\right) $$

**注**:
1.  研报伪码中，MTR 和 ADX 使用 **EMA**，而 DMP 和 DMM 使用 **MA** (通常指 Simple Moving Average)。
2.  默认参数: `LAG = 14`。

## 3. 交易策略
策略根据 **ADX** 的数值大小及趋势，结合 **PDI** 和 **MDI** 的关系产生信号。
默认阈值参数: `thred = 20`。

当满足以下条件时，发出买入信号（看多）：
1.  $$ \text{ADX} > \text{thred} $$
2.  $$ \text{ADX} \text{ 持续上升 (Current > Previous)} $$
3.  $$ \text{PDI} \text{ 持续上升 (Current > Previous)} $$
4.  $$ \text{PDI} > \text{MDI} $$

**操作**: 持有多仓 (`position = 1`)。

当满足以下条件时，发出卖出信号（看空）：
1.  $$ \text{ADX} > \text{thred} $$
2.  $$ \text{ADX} \text{ 持续上升 (Current > Previous)} $$
3.  $$ \text{MDI} \text{ 持续上升 (Current > Previous)} $$
4.  $$ \text{MDI} > \text{PDI} $$

**操作**: 持有空仓 (`position = -1`)。

当上述两种趋势条件均不满足时，视为无明确趋势或趋势减弱。

**操作**: 平仓/空仓 (`position = 0`)。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **关键特点**:
    *   **趋势强度过滤**: 引入 ADX 指标作为趋势强度的过滤器，只有当 ADX 大于阈值且处于上升阶段时才进行交易，有效过滤了震荡行情。
    *   **顺势交易**: 利用 PDI 和 MDI 的相对位置判断多空方向，并要求对应的方向线（PDI或MDI）也处于上升状态，确认动能增强。
*   **风险**:
    *   **滞后性**: ADX 和 EMA/MA 均为滞后指标，可能在趋势反转初期反应较慢。
    *   **高波动失效**: 在剧烈波动的震荡市中，ADX 可能频繁波动导致错误信号。


实际回测中逻辑与研报中相反，得到的回测结果较好，ICIR也较高。
