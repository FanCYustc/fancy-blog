---
aliases:
info:
date: 2025-12-19-星期五 13:10
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
id: wiki20251219131000
banner: "![[astrowalk.gif]]"
---
# Wiki - Paley-Wiener-Zygmund定理

## 1. 定理陈述
**Paley-Wiener-Zygmund 定理** 揭示了布朗运动样本轨道的极端粗糙性：布朗运动的路径几乎必然是**处处不可微 (Nowhere Differentiable)** 的。

具体地，对于几乎所有的 $\omega \in \Omega$，样本函数 $t \mapsto B_t(\omega)$ 在任何点 $t \ge 0$ 处都没有有限的导数。

更严格的表述（Dvoretzky, 1963 改进版）：
对于几乎所有 $\omega$，以及任意 $t \ge 0$，下式成立：
$$
\limsup_{h \downarrow 0} \left| \frac{B_{t+h}(\omega) - B_t(\omega)}{\sqrt{h}} \right| = \infty
$$
这意味着差商不仅没有极限，甚至在 $\sqrt{h}$ 的尺度下都是发散的。

## 2. 证明思路
证明通常利用 Borel-Cantelli 引理 [[Wiki - Borel-Cantelli引理]]。通过考查增量 $B (t+h) - B (t)$ 的联合分布，证明对于任意 $N$，存在 $t$ 使得 $|B (t+h) - B (t)| \le N h$ 发生的概率为 0。

## 3. 意义
*   **物理直观**：布朗粒子受到周围分子无数次及其频繁的撞击，其速度（位移的导数）无法定义（或者说是无穷大/白噪声）。
*   **数学结构**：布朗运动是连续但无切线的曲线的分形几何典型代表。这一性质导致了经典微积分（牛顿-莱布尼茨法则）在随机分析中失效，必须引入 [[Scientech - 随机分析-随机积分]] 和 Ito 公式 [[Wiki - Ito公式]]。
