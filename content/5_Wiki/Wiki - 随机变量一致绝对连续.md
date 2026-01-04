---
aliases: 
info: 随机变量一致绝对连续的定义
date: 2023-11-30-星期四 14:42
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/极限理论
  - 连续
id: wiki20231130144208
banner: "![[astrowalk.gif]]"
---
---

## Def 1 一致绝对连续

```ad-definition
title: Definition 1

设 $\{X_i,i\in I\}$ 是一族 rv, 若对 $\forall\epsilon>0$, 存在 $\eta_\epsilon>0$, 只要 $\begin{aligned}\mathcal{P}\left(A\right)<\eta_{\epsilon},A\in\mathscr{A},\end{aligned}$ 就有

$$
\sup_{i\in I}\mathbb{E}\left[|X_i|\cdot I_A\right]<\epsilon,
$$

则称 $\{X_i,i\in I\}$ 是一致绝对连续的，一致是指 $\eta_\mathrm{\epsilon}$ 的**选取与 i 无关**.



```

与 [[Wiki - 度量空间上的一致连续性]]似乎有联系？

还有函数的绝对连续[[Wiki - 绝对连续]]


