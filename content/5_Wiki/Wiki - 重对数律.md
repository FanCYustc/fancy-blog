---
aliases:
  - Law of the Iterated Logarithm
info:
date: 2025-12-19-星期五 13:15
update: 2025-12-19-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
  - 随机过程/渐近分析
id: wiki20251219131500
banner: "![[astrowalk.gif]]"
---
# Wiki - 重对数律

## 1. 定义与背景
**重对数律 (Law of the Iterated Logarithm, LIL)** 是概率论中的一个基本极限定理，它描述了随机游走或随机过程在长期演化中的**波动幅度包络**。

它的地位介于 **[[Wiki - 强大数律]]** 和 **[[Wiki - 中心极限定理]]** 之间：
* 强大数律指出均值趋于 0（幅度衰减快于 $t$）。
* 中心极限定理指出标准差为 $\sqrt{t}$ 级别。
* 重对数律精确地给出了几乎必然的波动上界，量级为 $\sqrt{t \log \log t}$。

## 2. 独立同分布序列的 LIL (Hartman-Wintner, 1941)

设 $\{X_n\}$ 是独立同分布 (i.i.d.) 的随机变量序列，均值为 0，方差为 $\sigma^2$。令 $S_n = \sum_{i=1}^n X_i$。

则有：
$$
\limsup_{n \to \infty} \frac{S_n}{\sqrt{2\sigma^2 n \log \log n}} = 1 \quad \text{a.s.}
$$
这意味着 $S_n$ 的轨迹几乎必然被包络在 $\pm \sqrt{2\sigma^2 n \log \log n}$ 之间，并且会无穷多次地接近这个边界。

## 3. 布朗运动中的应用

对于标准一维 [[Wiki - brown运动]] $B_t$，由于其增量独立平稳，也满足 LIL。根据 [[Wiki - Donsker不变性原理]]，这也是随机游走 LIL 的自然推广。

1.  **无穷远处行为 ($t \to \infty$)**：
    $$
    \limsup_{t \to \infty} \frac{B_t}{\sqrt{2t \log \log t}} = 1 \quad \text{a.s.}
    $$
    $$
    \liminf_{t \to \infty} \frac{B_t}{\sqrt{2t \log \log t}} = -1 \quad \text{a.s.}
    $$

2.  **原点处行为 ($t \to 0$)**（局部 LIL）：
    利用时间倒转 $t \mapsto 1/t$，可以得到布朗运动在 $t=0$ 附近的局部行为：
    $$
    \limsup_{t \downarrow 0} \frac{B_t}{\sqrt{2t \log \log (1/t)}} = 1 \quad \text{a.s.}
    $$
    这说明布朗运动在原点附近的震荡极其剧烈，虽然趋于0，但速度慢于 $\sqrt{t}$。