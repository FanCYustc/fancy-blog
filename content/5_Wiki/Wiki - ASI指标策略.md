---
aliases:
  - Average Swing index
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

# ASI指标策略

## 1. 指标介绍
ASI（累计震荡指标）旨在通过累计市场的每一次“震荡”（Swing）来构建一条能够真实反映市场趋势强度的虚拟价格线。它试图透过价格的短期波动，捕捉真实的突破信号。
*   **真实突破**: 当 ASI 突破前期的累计高点时，通常预示着价格也将发生真实的向上突破。
*   **价格验证**: 策略结合了收盘价与均线的关系以及价格本身的通道位置，以过滤假信号。

本策略基于申万宏源研报中的测试逻辑，利用 ASI 的突破信号配合均线和价格通道进行趋势交易。

## 2. 计算公式
ASI 的核心是计算单日的震荡值 **SI (Swing Index)**，然后进行累加。

定义以下价差绝对值：
*   $Var1 = |High - Ref(Close, 1)|$
*   $Var2 = |Low - Ref(Close, 1)|$
*   $Var3 = |High - Ref(Low, 1)|$ (注: 某些版本为 $|High - Low|$, 这里依代码逻辑为准)
*   $Var4 = |Ref(Close, 1) - Ref(Open, 1)|$

定义方向性价差：
*   $Var5 = Close - Ref(Close, 1)$
*   $Var6 = Close - Ref(Open, 1)$
*   $Var7 = Ref(Close, 1) - Ref(Open, 1)$

*   **K**: $\max(Var1, Var2)$
*   **X**: $Var5 + 0.5 \times Var6 + Var7$
*   **R**: 根据最大波动幅度选择计算公式：
    *   若 $Var1$ 最大: $R = Var1 + 0.5 \times Var2 + 0.25 \times Var4$
    *   若 $Var2$ 最大: $R = Var2 + 0.5 \times Var1 + 0.25 \times Var4$
    *   否则 ($Var3$ 最大): $R = Var3 + 0.25 \times Var4$

$$ SI = 50 \times \frac{X}{R} \times \frac{K}{3} $$
(注: 代码实现中为 `(50.0 / 3.0) * X * (K / R_safe)`)

$$ ASI = \sum_{t=0}^{now} SI_t $$

*   **ASI_High**: ASI 的 $N$ 周期最高值（不含当前Bar）。
*   **ASI_Low**: ASI 的 $N$ 周期最低值（不含当前Bar）。
*   **MA_Close**: 收盘价的 $N$ 周期均线。
*   **Price_High**: 价格的 $N$ 周期最高价（不含当前Bar）。
*   **Price_Low**: 价格的 $N$ 周期最低价（不含当前Bar）。

**默认参数**:
*   $nBar = 20$ (注: 研报默认可能为5，本策略优化后使用20)

## 3. 交易策略
策略通过 ASI 的突破来指引方向，并用价格位置作为安全过滤。

同时满足以下三个条件：
1.  **ASI 创新高**: 当前 ASI 值 $\ge$ 前 $N$ 周期 ASI 最高值 (`ASI >= ASI_High`)。
2.  **趋势向上**: 当前收盘价 $>$ $N$ 周期收盘价均线 (`Close > MA_Close`)。
3.  **未过度延展**: 当前收盘价 $<$ 前 $N$ 周期最高价 (`Close < Price_High`)。(注: 这一条比较特殊，意在捕捉突破初期，而非追高)

**操作**: 持有多仓 (`position = 1`)。

同时满足以下三个条件：
1.  **ASI 创新低**: 当前 ASI 值 $\le$ 前 $N$ 周期 ASI 最低值 (`ASI <= ASI_Low`)。
2.  **趋势向下**: 当前收盘价 $<$ $N$ 周期收盘价均线 (`Close < MA_Close`)。
3.  **未过度延展**: 当前收盘价 $>$ 前 $N$ 周期最低价 (`Close > Price_Low`)。

**操作**: 持有空仓 (`position = -1`)。

若不满足上述触发条件，维持上一时刻的仓位状态。

## 4. 回测表现


## 5. 结论
*   **策略类型**: 时序动量 / 趋势 (Time Series Momentum / Trend)
*   **关键特点**:
    *   **量价结合**: ASI 综合了开高低收的价格波动，比单纯的价格线更具稳健性。
    *   **过滤机制**: 引入了均线确认趋势，并限制了价格不能已经突破前期高点（`Close < Price_High`），这是一种“潜伏”策略，试图在 ASI 先行突破而价格尚未完全突破时入场。
*   **风险**: 指标计算较为复杂，对参数敏感；在趋势不明朗的横盘期间，ASI 可能产生无效波动。