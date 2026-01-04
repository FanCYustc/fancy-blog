---
aliases: 
info: 无源场与向量势
date: 2023-06-29-星期四 11:54
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629115439
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 

[[Wiki - 保守场]]

## 无源场

对**散度为 0** 的向量场称为无源场[[Wiki - 散度，旋度，laplace算子]]


## 向量势

设 v 是空间区域 $V\in\mathbb{R}^3$ 中的光滑向量场，如果存在向量场α使得

$$

\boldsymbol{v}=\cot\boldsymbol{\alpha}=\nabla\times\boldsymbol{\alpha},

$$

那么称**α为 v 的向量势**


## Pro1

显然, **具有向量势的向量场 v 一定是无源场**, 这是因为

$$

\nabla\cdot v=\nabla\cdot\nabla\times\boldsymbol{\alpha}=0,

$$

反过来，对无源场可以找到它的向量势，但要对区域加以限制条件

## 向量势不唯一：

$$
\begin{array}{*{20}{c}}{\nabla  \times {{\vec a}_1} = \nabla  \times {{\vec a}_2} = \vec v}\\{\nabla  \times \left( {{{\vec a}_1} - {{\vec a}_2}} \right) = 0}\\{{{\vec a}_1} - {{\vec a}_2} = \nabla \varphi }\end{array}
$$
[[Wiki - 梯度]]