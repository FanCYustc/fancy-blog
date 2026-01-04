---
aliases:
  - Jordan曲线
  - 简单闭曲线
info: 道路连通定义，区域定义
date: 2023-03-11-星期六 15:53
update: 
tags:
  - wiki/year2023
  - wiki/month03
id: wiki20230311155335
banner: "![[astrowalk.gif]]"
---
---

#数学分析/多变量微积分 

这里的介绍是限于 $\mathbb{R}^{2}$ 的，一般度量空间的连通在[[Wiki - 度量空间的连通性]]

## Definition 1 连通性

```ad-definition
title: Definition  1

对于平面点集 $E \subset R^{2}$, 如果任意将 E 分解成两个不相交的非空子集的并集 E = AUB，$A \cap B = 0$ 时，其中至少有一个子集含有另一个子集的聚点, 那么称E 为**连通的**

这里，我们更感兴趣的是一种特殊的连通性, 称为道路连通性

```

换句话说，不能被分解成两个不交的非空开集的并的集合称为连通的

[[Wiki - 弧连通]]

[[Wiki - 聚点和孤立点]]

## Definition 2 区域

**连通开集**称为**区域**

区域的闭包[[Wiki - 度量空间的内部外部|闭包和内部]]称为闭区域

## Definition 3 简单闭曲线

```ad-definition
title: Definition 3

平面连续曲线可表示为 $\hat{r}(t), t\in[0,1]$.
若 r (0)=r (1), 称为**闭曲线**

特别的若有 $r (t_{1})\neq r (t_{2})\forall t_{1},t_{2}\in[0,1]$. 称为**简单闭曲线**，也叫 Jordan 曲线

```

## Def 4 单连通

```ad-definition
title: Definition 4

域 D 称为是单连通的，如果 D 内任意简单闭曲线的内部仍在 D 中

如果区域 D 是由 n 条简单闭曲线围成的，就称 D 是 n 连通的

```


## The 1 Jordan 定理

```ad-theorem
title: Theorem 1

平面简单闭曲线把平面分为两部分，有界的称为内部，另一部分为外部

```


