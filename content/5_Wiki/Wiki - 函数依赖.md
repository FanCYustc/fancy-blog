---
aliases: 
info: 函数依赖的定义和分类
date: 2023-12-01-星期五 10:30
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数据库
id: wiki20231201103057
banner: "![[astrowalk.gif]]"
---
---

## Def 1 函数依赖

```ad-definition
title: Definition 1

R（U）是一种关系模式，X，Y 是属性组 U 的子集，

如果 R 上的任何关系 r，只要 X 上的值都相等，就一定有 Y 上的值也都相等，那么就称 **Y 函数依赖于 X**，记为 $X\to Y$

```

## Def 2 完全函数依赖

```ad-definition
title: Definition 2

若 $X\to Y$，但 $\forall X'\subset X$，没有 $X'\to Y$，则称 Y 对 X **完全函数依赖**，记为$X\xrightarrow{F} Y$

否则为**部分函数依赖**，记为$X\xrightarrow{P} Y$

```

