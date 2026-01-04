---
aliases: 
info: 代数基，线性基
date: 2024-09-14-星期六 15:21
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 泛函分析
  - 线性代数/线性空间
id: wiki20240914152110
banner: "![[astrowalk.gif]]"
---
---

## Def 1 hamel 基

对于向量空间 X [[Wiki - 一般线性空间]]，$A \subset X$，A 线性无关 [[Wiki - 线性相关和线性无关]]，且 $span(A)=X$ 即 A 可以张成 X，则称 A 是 X 的一个 **Hamel 基**，也叫代数基或线性基

## Def 2 维数

如果 X 的 hamel 基是有限集，则称 X 的维数为 $dim X=\# A$，否则记 $dim X=\infty$ 为无穷维

在 [[Wiki - 基和维数]]的基础上拓展到无穷维

```ad-warning
hamel基要求线性空间中的元素可以写成**有限个**基中向量的线性组合.

e.g. $\{第n位是1，其余为0\}_{n}$不构成$l^{2}$数列空间的hamel基，但是是完备正交基。

```

[[Wiki - 内积空间的正交基]]

## The 1 

需要承认一个事实，任何向量空间一个有 hamel 基，且维数与不同的 hamel 基选取无关。

