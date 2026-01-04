---
aliases:
info: GTM113 CH2.9
date: 2025-12-18-星期四 11:41:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
id: wiki20251218114100
banner: "![[astrowalk.gif]]"
---

# brown 运动的零集

## 定义

布朗运动的零集定义为 $\mathscr{Z}_\omega = \{t \ge 0 : W_t(\omega) = 0\}$。

[[Wiki - brown运动]]
## 性质
对于几乎所有的 $\omega$，零集 $\mathscr{Z}_\omega$ 具有以下拓扑与测度性质：

1.  **闭集 (Closed)**：作为连续函数原像的闭集 [[Wiki - 度量空间的开集闭集]]。
2.  **无界 (Unbounded)**：布朗运动无穷次返回原点。
3.  **勒贝格测度为 0 (Lebesgue measure zero)**：$E[\text{meas}(\mathscr{Z}_\omega)] = \int_0^\infty P(W_t=0) dt = 0$。[[Wiki - lebesgue可测]]
4.  **无孤立点 (No isolated points)**：即它是**完全集 (Perfect set)**。对于任意 $t \in \mathscr{Z}_\omega$，它是 $\mathscr{Z}_\omega$ 的聚点 [[Wiki - 聚点和孤立点]]。
5.  **在自身中稠密 (Dense in itself)**：这是完全集的推论。

这些性质显示零集是一个类似 Cantor 集 [[Wiki - 康托集|Cantor集]] 的结构（但无界）。
