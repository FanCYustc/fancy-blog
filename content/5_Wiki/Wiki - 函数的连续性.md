---
aliases:
  - The continuity of a function
info: 函数连续的定义，判断方法，一致连续
date: 2023-01-25-星期三 22:00
update: 
tags:
  - wiki/year2023
  - wiki/month01
  - 连续
id: wiki20230125220044
banner: "![[astrowalk.gif]]"
---
---

#数学分析/函数 

## Def 1 连续

```ad-definition
title: Definition 1


设 D 是 度量空间 X 的非空子集, f 是定义在 D 上的函数, $x_{0}\in D$ 称 f 在点 $x_{0}$ 连续, 是指对任意 $\epsilon> 0$, 存在 $\delta> 0$, 使得对 D 中满足 $\| x-x_{0}\| <\delta$ 的任意 x，都有

$$
|f(x)-f(x_0)|<\varepsilon,
$$

则称 f 在 D 中连续（或简称连续），是指 f 在 D 中的每点连续

```

## Cal 1

若 $x_{0}$ 是聚点 [[Wiki - 聚点和孤立点]]，则 f 在 $x_{0}$ 连续当且仅当 $\lim_{ x \to x_{0} }f(x)=f(x_{0})$

