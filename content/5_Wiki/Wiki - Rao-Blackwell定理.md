---
aliases: 
info: 
date: 2024-03-29-星期五 11:27
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
id: wiki20240329112721
banner: "![[astrowalk.gif]]"
---
---

## The 1 Rao-Blackwell Theorem

```ad-theorem
title: Theorem 1

```
设 $T=T(X)$ 是一个充分统计量 [[Wiki - 充分统计量]]，而 $\hat{g}(X)$ 是 $g(\theta)$ 的一个无偏估计 [[Wiki - 无偏估计]]，则 $h(T)=E(\hat{g}(\boldsymbol{X})|T)$ [[Wiki - 条件期望]]是 $g(\theta)$ 的无偏估计，并且

$$
D_\theta(h(T))\leqslant D_\theta(\hat{g}(\boldsymbol{X})),\quad\text{一切 }\theta\in\Theta,
$$
[[Wiki - 方差]]成立



