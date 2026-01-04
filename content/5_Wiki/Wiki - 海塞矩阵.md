---
aliases: 
info: 海塞矩阵的定义及应用
date: 2023-09-27-星期三 14:42
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 数学分析/多变量微积分
id: wiki20230927144226
banner: "![[astrowalk.gif]]"
---
---

## Def 1 

对多变量函数 $F(x_{1},\dots,x_{n})$，二阶连续可微 [[Wiki - 偏导#高阶偏导]]

$$
A=\left( \frac{{\partial^{2}F}}{\partial x_{i}\partial x_{j}} \right)_{n\times n}
$$
称为 F 的**海塞矩阵**

## The 1 海塞矩阵与函数极值

```ad-theorem
title: Theorem 1

对 [[Wiki - 多变量函数极值的判断]]的多元推广

若 $(x_{1}^{0},x_{2}^{0},\dots,x_{n}^{0})$ 是 F 的驻点 [[Wiki - 映射的微分]]，则若 $(x_{1}^{0},x_{2}^{0},\dots,x_{n}^{0})$ 处的海塞矩阵正定[[Wiki - 正定矩阵]]，则在 $\vec{x^{0}}$ 处取极小值；若海塞矩阵负定，则在 $\vec{x^{0}}$ 取极大值


```

**这是充分条件，若海塞矩阵不定也不一定取不到极值**

