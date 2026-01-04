---
aliases:
year: "2013"
category: 金融
rate:
info: 频谱分析在量化交易中的应用
date: 2025-12-23-星期二 15:41:53
update:
tags:
  - book/year2025
  - book/month12
  - quant
id: book20251223154153
banner: "![[astrogate.gif]]"
---
---

## CH5 Band-Pass Filters

### 1. 理论基础：带通滤波器 (Band-Pass Filters)
带通滤波器 (Band-Pass Filter, BPF) 是技术分析中最被低估的工具之一。它结合了两种功能：
*   **去趋势 (Detrender)**：作为高通滤波器，衰减低频分量。
*   **平滑 (Smoother)**：作为低通滤波器，衰减高频噪音。

通过只允许特定的频率分量通过，带通滤波器能够提取出交易者感兴趣的市场周期。

#### 1.1 数学模型
Ehlers 使用**双极点 (Two-Pole)** 带通滤波器，其传输响应函数如下：
$$ H(z) = \frac{0.5(1 - \sigma)(1 - Z^{-2})}{1 - \lambda(1 + \sigma)Z^{-1} + \sigma Z^{-2}} $$

对应的时域差分方程（EasyLanguage 代码实现基础）为：
$$ Output = 0.5(1 - \sigma)(Input - Input[2]) + \lambda(1 + \sigma)Output[1] - \sigma Output[2] $$

其中系数计算如下：
*   $\lambda = \cos(360^\circ / Period)$
*   $\sigma = \frac{1}{\gamma} - \sqrt{\frac{1}{\gamma^2} - 1}$
*   $\gamma = \cos(360^\circ \times \delta / Period)$，其中 $\delta$ 是半功率带宽 (Bandwidth)。

### 2. 关键特性：Q 值与选择性
带通滤波器的性能由 **Q 值 (Quality Factor)** 决定，它描述了滤波器的**选择性 (Selectivity)**。
$$ Q = \frac{\text{Center Frequency}}{\text{Bandwidth}} $$

*   **高 Q 值 (窄带宽)**：频率选择性强，但瞬态响应差（对新数据的反应慢，容易产生“振铃”现象）。
*   **低 Q 值 (宽带宽)**：频率选择性弱，但瞬态响应快（能迅速适应市场周期的变化）。
*   **最佳实践**：在交易中，通常建议使用 **30% 的带宽** (Bandwidth = 0.3)，此时 $Q \approx 3.33$。这在选择性和响应速度之间取得了良好的平衡。

### 3. 自动增益控制 (AGC)
由于不同标的的价格范围差异巨大（如低价股 vs 高价股），直接输出的滤波器数值难以标准化。AGC (Automatic Gain Control) 旨在将输出标准化到 $\pm 1$ 的范围内。

*   **算法机制**：采用“快攻慢衰” (Fast Attack - Slow Decay) 策略。
    *   **快攻**：如果当前信号幅度超过归一化因子，立即更新归一化因子。
    *   **慢衰**：如果当前信号幅度小于归一化因子，归一化因子按指数级衰减。
*   **衰减因子 K**：为了在感兴趣的周期范围（10-48 bar）内保持增益相对平坦（例如增益变化不超过 1.5 dB），通常取 $K = 0.991$。

### 4. 算法实现 (Code Implementation)

#### 4.1 标准带通滤波器 (Band-Pass Indicator)
为了消除“频谱扩张”导致的低频失真，Ehlers 建议在带通滤波器之前串联一个高通滤波器。

```pascal
{ BandPass Filter Implementation }
Inputs: 
    Period(20),       { 中心周期 }
    Bandwidth(.3);    { 带宽比例，建议 0.3 }

Vars: 
    alpha1(0), alpha2(0), beta1(0), gamma1(0), 
    HP(0), BP(0), 
    Peak(0), Signal(0);

{ 1. 预处理：高通滤波器 (High-Pass Filter) }
{ 目的：消除长周期的频谱扩张影响 }
{ 截止频率设为带通下限的一个八度以下 }
alpha2 = (Cosine(.25 * Bandwidth * 360 / Period) + Sine(.25 * Bandwidth * 360 / Period) - 1) / Cosine(.25 * Bandwidth * 360 / Period);
HP = (1 + alpha2 / 2) * (Close - Close[1]) + (1 - alpha2) * HP[1];

{ 2. 核心：带通滤波器 (Band-Pass Filter) }
beta1 = Cosine(360 / Period);
gamma1 = 1 / Cosine(360 * Bandwidth / Period);
alpha1 = gamma1 - SquareRoot(gamma1 * gamma1 - 1);

BP = .5 * (1 - alpha1) * (HP - HP[2]) 
     + beta1 * (1 + alpha1) * BP[1] 
     - alpha1 * BP[2];

{ 3. 后处理：自动增益控制 (AGC) }
{ 初始化防止除零错误 }
If CurrentBar <= 2 Then BP = 0;

{ Fast Attack - Slow Decay }
Peak = .991 * Peak[1]; { 慢衰减 }
If AbsValue(BP) > Peak Then Peak = AbsValue(BP); { 快攻：更新峰值 }

If Peak <> 0 Then Signal = BP / Peak; { 标准化输出 }

Plot1(Signal);
Plot2(0);
```

#### 4.2 基于过零点的主导周期测量 (Dominant Cycle Measurement)
带通滤波器可以用来测量市场的主导周期。基本逻辑是测量滤波器输出连续两次穿过零轴（Zero Crossing）之间的时间，即为半个周期。
*   **注意**：为了适应周期变化，此时带宽应设得更宽（如 0.7）。

```pascal
{ Dominant Cycle Measurement }
Inputs: 
    Period(20), 
    Bandwidth(.70); { 宽带宽以适应周期漂移 }

Vars: 
    { ... 变量声明同上 ... }
    DC(0), counter(0), Real(0);

{ ... (高通滤波器和带通滤波器计算部分同上) ... }

{ 信号标准化 }
If Peak <> 0 Then Real = BP / Peak;

{ 周期测量逻辑 }
DC = DC[1]; { 保持上一个值 }
If DC < 6 Then DC = 6; { 最小周期保护 }

counter = counter + 1; { 计数器累加 }

{ 检测过零点 (Zero Crossing) }
If Real Crosses Over 0 or Real Crosses Under 0 Then Begin
    { 两次过零点之间是半个周期，因此完整周期 = 2 * counter }
    DC = 2 * counter; 
    
    { 平滑处理：限制周期突变幅度不超过 25% }
    If 2 * counter > 1.25 * DC[1] Then DC = 1.25 * DC[1];
    If 2 * counter < 0.8 * DC[1] Then DC = 0.8 * DC[1];
    
    counter = 0; { 重置计数器 }
End;

Plot1(DC);
```

### 5. 关键结论
1.  **无滞后特性**：当带通滤波器准确调谐到市场的主导周期时，其输出**没有滞后**。
2.  **超前与滞后**：
    *   如果调谐周期 < 真实周期 -> 输出**超前**。
    *   如果调谐周期 > 真实周期 -> 输出**滞后**。
3.  **串联高通的重要性**：为了获得准确的零均值波动，必须在输入端串联一个高通滤波器以抵消频谱扩张。
4.  **触发信号**：可以通过串联另一个高通滤波器（调谐到带通上限频率）来生成一个超前的“触发线” (Trigger Line)，用于在波峰波谷处产生交叉信号。


## CH7 Spectral Dilation

### 1. 理论基础：频谱扩张 (Spectral Dilation)
市场数据本质上是分形的（Fractal）。这意味着其频谱功率密度（Spectral Power Density, $P$）与频率（$F$）成反比关系：$P(F) \propto \frac{1}{F^\alpha}$

通常 $\alpha \approx 1$ (Pink Noise) 或更高。这导致了一个显著现象：**周期越长（频率越低），波动的振幅越大**。
*   振幅增长率约为 **6 dB/倍频程 (Octave)**。
*   **后果**：传统的震荡指标（如 RSI, Stochastic）主要基于幅度计算。由于低频分量幅度巨大，它们会掩盖高频的周期性信号，导致指标在趋势行情中“钝化”（例如长期停留在超买/超卖区）或产生严重滞后。

### 2. 核心工具：屋顶滤波器 (Roofing Filter)
为了还原真实的周期信号，必须消除频谱扩张的影响。Ehlers 提出了 **屋顶滤波器 (Roofing Filter)**，它是一个带通滤波器，由两部分串联而成：
1.  **双极点高通滤波器 (Two-Pole High-Pass Filter)**：以 12 dB/Octave 的速率衰减低频。这一斜率足以抵消市场数据的频谱扩张（6 dB/Octave），使输出信号实现**零均值 (Zero Mean)**。
2.  **超级平滑滤波器 (SuperSmoother Filter)**：滤除高频噪音（如 2 Bar, 3 Bar 的抖动）。

#### 2.1 算法实现 (Code Implementation)
以下是标准的双极点屋顶滤波器实现代码（EasyLanguage 风格）。

**参数设置建议**：
*   `HPPeriod` (高通截止周期)：通常设置较长，如 80 或 48，用于滤除宏观趋势。
*   `LPPeriod` (低通截止周期)：通常较短，如 10 或 40，用于定义感兴趣的周期上限。

```pascal
{ Roofing Filter Implementation }
Inputs: 
    HPPeriod(80),  { 高通截止周期，滤除长趋势 }
    LPPeriod(40);  { 低通截止周期，平滑噪音 }

Vars:
    alpha1(0), HP(0),       { 高通相关变量 }
    a1(0), b1(0), c1(0), c2(0), c3(0), { SuperSmoother 相关系数 }
    Filt(0);                { 最终输出 }

{ 1. 计算双极点高通滤波器 (Two-Pole High-Pass) }
{ 使用 0.707 (即 1/sqrt(2)) 作为阻尼系数，获得巴特沃斯响应 }
alpha1 = (Cosine(.707 * 360 / HPPeriod) + Sine(.707 * 360 / HPPeriod) - 1) / Cosine(.707 * 360 / HPPeriod);

{ HP 计算公式：包含二阶差分项 (Close - 2*Close[1] + Close[2]) }
HP = (1 - alpha1 / 2) * (1 - alpha1 / 2) * (Close - 2 * Close[1] + Close[2]) 
     + 2 * (1 - alpha1) * HP[1] 
     - (1 - alpha1) * (1 - alpha1) * HP[2];

{ 2. 计算 SuperSmoother (Low-Pass) }
a1 = expvalue(-1.414 * 3.14159 / LPPeriod);
b1 = 2 * a1 * Cosine(1.414 * 180 / LPPeriod);
c2 = b1;
c3 = -a1 * a1;
c1 = 1 - c2 - c3;

{ 3. 串联输出 }
{ 将高通滤波的结果 HP 输入到低通滤波器中 }
Filt = c1 * (HP + HP[1]) / 2 + c2 * Filt[1] + c3 * Filt[2];

{ Filt 即为去除了趋势和噪音的纯净周期信号，围绕 0 轴波动 }
Plot1(Filt);
```

### 3. 指标实战应用

#### 3.1 Modified Stochastic (修正随机指标)
传统 Stochastic 在强趋势中失效的原因是价格极值被长周期趋势主导。修正版直接对 `Roofing Filter` 的输出进行归一化。

*   **算法逻辑**：
    1.  计算 `Filt` (Roofing Filter 输出)。
    2.  在回顾窗口 `Length` 内寻找 `Filt` 的最高值 (`MaxVal`) 和最低值 (`MinVal`)。
    3.  计算原始 Stochastic: $Stoc = \frac{Filt - MinVal}{MaxVal - MinVal}$。
    4.  对结果再次应用 SuperSmoother 平滑，得到 `MyStochastic`。


```
{ 核心片段 }
HighestC = Filt;
LowestC = Filt;

For count = 0 to Length - 1 Begin
    If Filt[count] > HighestC then HighestC = Filt[count];
    If Filt[count] < LowestC then LowestC = Filt[count];
End;

{ 计算并平滑 }
Stoc = (Filt - LowestC) / (HighestC - LowestC);
MyStochastic = c1*(Stoc + Stoc[1])/2 + c2*MyStochastic[1] + c3*MyStochastic[2];
```

#### 3.2 Modified RSI (修正相对强弱指标)
传统 RSI 本质上是对价格变动（$\Delta Close$）的累加。由于低频分量不仅幅度大而且持续时间长，传统 RSI 容易滞后。修正版 RSI 基于 **Roofing Filter 输出的变动** 来计算。

*   **公式调整**：
    $RSI = \frac{100 \times CU}{CU + CD}$
    其中 $CU$ 是观察期内 `Filt` 上涨幅度的总和，$CD$ 是下跌幅度的绝对值总和。
*   **优势**：由于 `Filt` 已经去除了低频偏移，计算出的 RSI 对转折点极其敏感，几乎零滞后。

```pascal
{ Modified RSI 核心逻辑 }
ClosesUp = 0;
ClosesDn = 0;

{ 统计 Filt 的涨跌幅 }
For count = 0 to Length - 1 Begin
    If Filt[count] > Filt[count + 1] Then 
        ClosesUp = ClosesUp + (Filt[count] - Filt[count + 1]);
    If Filt[count] < Filt[count + 1] Then 
        ClosesDn = ClosesDn + (Filt[count + 1] - Filt[count]);
End;

Denom = ClosesUp + ClosesDn;

If Denom <> 0 Then 
    RawRSI = ClosesUp / Denom; { 此时范围 0-1 }

{ Ehlers 习惯对最终指标再做一次平滑 }
MyRSI = c1*(RawRSI + RawRSI[1])/2 + c2*MyRSI[1] + c3*MyRSI[2];
```

### 4. 关键结论
1.  **必须预处理**：不要直接对原始价格 (`Close`) 使用震荡指标，必须先经过 Roofing Filter 处理。
2.  **参数法则**：对于 Modified RSI，观察周期 `Length` 最好设为**主导周期的一半**。
3.  **视觉特征**：经过处理的指标与价格走势的波峰波谷对应更加准确，且消除了大部分“虚假信号”


## CH8 Autocorrelation


## CH9 Fourier Transforms

[[Scientech - 数学分析-傅里叶分析]]

## CH10 Comb Filter Spectral Estimates


## CH14 The HIlbert Transform