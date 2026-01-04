---
aliases:
info: GTM113 CH2.9
date: 2025-12-18-星期四 11:40:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
id: wiki20251218114000
banner: "![[astrowalk.gif]]"
---

# brown 运动的样本轨道性质

## 1. 不可微性 (Nondifferentiability)
(Paley, Wiener & Zygmund, 1933; 参见 **[[Wiki - Paley-Wiener-Zygmund定理]]**):

对于几乎所有的 $\omega$，布朗运动样本轨道 $t \mapsto W_t(\omega)$ 在任何点 $t \in [0, \infty)$ 都是不可微的。

具体而言，对于任意 $t$，其右上及右下 Dini 导数分别为 $+\infty$ 和 $-\infty$（或左导数）。

## 2. 局部极大值 (Local Maxima)

几乎所有布朗运动轨道的局部极大值点集合是**可数**且在 $[0, \infty)$ 中**稠密**的 [[Wiki - 可数集合]]。所有局部极大值都是严格的。

[[Wiki - 度量空间的稠密性]]

## 3. 无增长点 (No Points of Increase)

几乎所有布朗运动轨道没有增长点。即不存在 $t$ 和 $\delta > 0$ 使得对于所有 $s \in (t-\delta, t+\delta)$ 有 $(W_s - W_t)(s-t) \ge 0$。轨道呈现出极其剧烈的震荡。

## 4. 重对数律 (Law of the Iterated Logarithm)

**[[Wiki - 重对数律]]** 描述了布朗运动在 $t \to 0$ 和 $t \to \infty$ 时的包络行为。
$$ \limsup_{t \to 0^+} \frac{W_t}{\sqrt{2t \log \log (1/t)}} = 1 \quad \text{a.s.} $$
$$ \limsup_{t \to \infty} \frac{W_t}{\sqrt{2t \log \log t}} = 1 \quad \text{a.s.} $$

## 5. 连续性模 (Modulus of Continuity)

布朗运动是局部 Hölder 连续的，指数 $\gamma < 1/2$（参见 **[[Wiki - 局部Holder连续性]]**）。**[[Wiki - Lévy连续性模定理]]** 给出了一致连续性的精确描述：
$$ \lim_{\delta \to 0} \sup_{0 \le s < t \le 1, t-s \le \delta} \frac{|W_t - W_s|}{\sqrt{2\delta \log(1/\delta)}} = 1 \quad \text{a.s.} $$
