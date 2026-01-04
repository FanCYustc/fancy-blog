---
aliases:
  - Lévy Modulus of Continuity
info:
date: 2025-12-19-星期五 13:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
id: wiki20251219132000
banner: "![[astrowalk.gif]]"
---
# Wiki - Lévy连续性模定理

## 1. 连续性模

对于定义在 $[0, 1]$ 上的函数 $f$，其**连续性模 (Modulus of Continuity)** $\omega_f(\delta)$ 定义为：
$$
\omega_f(\delta) = \sup_{|t-s| \le \delta, s,t \in [0,1]} |f(t) - f(s)|
$$

## 2. 定理陈述 (P. Lévy, 1937)

对于标准布朗运动 $B_t$，其路径的连续性模有着精确的几乎必然极限行为：
$$
\lim_{\delta \downarrow 0} \frac{\omega_B(\delta)}{\sqrt{2\delta \log(1/\delta)}} = 1 \quad \text{a.s.}
$$

## 3. 含义
这意味着对于足够小的 $\delta$，布朗运动在长度为 $\delta$ 的区间上的最大振幅大约是 $\sqrt{2\delta \log(1/\delta)}$。
*   这比 $\sqrt{\delta}$ 稍大（因为 $\log(1/\delta) \to \infty$），这解释了为什么布朗运动不是 $1/2$-Hölder 连续的。
*   这个模给出了布朗运动一致连续性的精确量化描述。

## 4. 与局部 Holder 连续性的关系

Lévy 模关注的是**最坏情况**（上确界）。而 [[Wiki - 局部Holder连续性]] 关注的是**局部点**的行为。虽然最坏振幅含有 $\sqrt{\log(1/\delta)}$ 因子，但在固定点附近，布朗运动的行为更接近 $\sqrt{\delta}$（由重对数律描述，那是 $\sqrt{\log \log}$ 因子，增长更慢）。
