---
aliases: 
  - Lévy 连续性定理
  - Lévy's Continuity Theorem
info: 分布的连续性定理
date: 2023-12-17-星期日 16:54
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 概率论/极限理论
  - 概率论/概率分布
id: wiki20231217165433
banner: "![[astrowalk.gif]]"
---
---

## The 1 连续性定理 (Lévy's Continuity Theorem)

Lévy 连续性定理是概率极限定理的基石，它建立了特征函数点态收敛与概率测度弱收敛（依分布收敛）之间的等价关系。

```ad-theorem
title: Theorem 1 (必要性)
```
设 $F,F_n$ 为 cdf, 对应的特征函数 [[Wiki - 随机变量的特征函数]]为 $f,f_n$. 如果 $F_n\xrightarrow{\mathrm{d}}F$, [[Wiki - 依分布收敛]]则

$$
\lim_{n\to\infty}f_n(t)=f(t),\quad\forall t\in\Re,
$$

且上述收敛在任意有界闭区间 [[Wiki - 紧致集合]]上是一致 [[Wiki - 一致收敛]]的




```ad-theorem
title: Theorem 2 (充分性)

设 $f_n$ 为 cdf $F_n$ 的特征函数，若存在一个在 $t=0$ 点连续的函数 $f$ 使得
$$
\lim_{n\to\infty}f_n(t)=f(t),\quad\forall t\in\Re,
$$
成立，则 $f$ 一定为某个 cdf F 的特征函数，且

$$
F_n\xrightarrow{\mathrm{d}}F.
$$


```

[[Wiki - 分布函数]]

### Proof
通过 The1 结论，感觉和 [[Wiki - 紧集上连续函数列的一致收敛性]]有关，且与 [[Wiki - Helly定理]]有关。

**证明思路 (Proof Sketch):**
利用 **紧性 (Tightness)** 和 **Prokhorov 定理**[[Wiki - Prokhorov定理]]。
1. 利用 $f_n$ 在 0 点的连续性估计 $F_n$ 尾部的概率，证明 $\{F_n\}$ 是**一致胎紧** (Tight) 的 [[Wiki - 胎紧性]]。
2. 由 Prokhorov 定理（或 Helly 选择定理 ），存在收敛子列。
3. 利用特征函数的唯一性 [[Wiki - 特征函数的唯一性定理]]，证明所有收敛子列收敛到同一极限 $F$。

因为连续性定理描述的都是充分条件，应用可以是通过结论不成立证明不满足条件。
