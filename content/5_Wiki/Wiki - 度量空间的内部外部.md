---
aliases:
  - 闭包和内部
  - 内点外点边界点
info: 集合的内部，外部，边界
date: 2023-01-13-星期五 17:04
update: 2023-01-13-Friday 17:17:15
tags:
  - wiki/year2023
  - wiki/month01
  - 数学分析/多变量微积分
  - 几何学/度量空间
  - 拓扑
id: wiki20230113170433
banner: "![[astrowalk.gif]]"
---
---

## Definition 1 内点外点边界点

```ad-definition
title: Definition 1

在度量空间X中

For a set E and a point x
X is an **interior point** if some neighborhood of x $B(x, \delta)$ is contain in E.
**exterior point** if x is a interior point of $E\setminus R^m$.

X is an **boundary point** if it is neither an interior nor a exterior. 记为 $\partial X$


```

[[Wiki - 度量空间]]

边界点即每个 x 的邻域都有一部分与 X 有交，一部分与 $X^{c}$ 有交。

## Definition 2 闭包

```ad-definition
title: Definition 3

A **closure** of E=E and all limit points of E. and usually denoted $\bar{E}$.


```

$\overline{E}=$ E 所有接触点的集合 [[Wiki - 聚点和孤立点]]
## Proposition 1

F is closed $\leftrightarrow$ $F=\bar{F}$.

Closed: [[Wiki - 度量空间的开集闭集#Definition 3 闭集]]

## Def 3 内部

```ad-definition
title: Definition 4

A 的内点的集合称为 A 的**内部**，记为 $A^\circ$

```


