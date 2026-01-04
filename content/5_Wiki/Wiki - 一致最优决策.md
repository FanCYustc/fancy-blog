---
aliases:
  - 可容许决策
info: 
date: 2024-06-07-星期五 11:11
update: 
tags:
  - wiki/year2024
  - wiki/month06
  - 数理统计/统计决策
id: wiki20240607111118
banner: "![[astrowalk.gif]]"
---
---

## Def 1 一致最优决策

```ad-definition
title: Definition 1

记 $R(\delta,\theta)$ 为决策函数 $\delta$ 的风险函数. 若存
在一个决策函数 $\delta^*$, 使得对任一决策函数 $\delta$ 有$R ( \delta ^* , \theta ) \leqslant R ( \delta , \theta )$, 一切 $\theta\in\Theta$,则称 $\delta^*$ 为一致最优解或一致最优决策函数。

```

[[Wiki - 风险函数]]

但有时找不到一致最优决策，会有替代方案

![[Wiki - 风险函数#Def 3 minmax 决策]]

![[Wiki - 风险函数#Def 2 Bayes 风险]]


## Def 2 可容许决策

```ad-definition
title: Definition 2

如果对于决策 $\delta^{*}$，有对任一个另外的决策$\delta$，

1、$R(\delta^{*},\theta)\leq R(\delta,\theta),\forall\theta$

2、$R(\delta^{*},\theta)<R(\delta,\theta)$ 对至少一个 $\theta$ 成立

则称 $\delta^{*}$ 是**可容许的**

```

