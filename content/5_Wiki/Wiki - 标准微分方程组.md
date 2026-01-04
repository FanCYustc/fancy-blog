---
aliases: 
info: 
date: 2023-10-31-星期二 14:56
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231031145650
banner: "![[astrowalk.gif]]"
---
---

## SOL 1 化为向量方程

设微分方程
$$
\frac{d^{n}y}{dx^{n}}=F\left( x,y, \frac{dy}{dx},\dots, \frac{d^{n-1}y}{dx^{n-1}} \right)
$$

令 $y=y_{1}, \frac{dy}{dx}=y_{2},\dots, \frac{d^{n-1}y}{dx^{n-1}}=y_{n}$

此时高阶的微分方程化为了一阶的**标准微分方程组**

$$
\left\{\begin{array}{l}\frac{dy_1}{dx}=y_2,\\\dots\\\frac{dy_{n-1}}{dx}=y_n,\\\frac{dy_n}{dx}=F(x,y_1,y_2,\cdots,y_n)\end{array}\right.
$$

```ad-definition
title: Definition 1

通过换元和不同阶导数之间的关系 $\frac{d}{dx} \frac{d^{n-1}y}{dx^{n-1}}= \frac{d^{n}y}{dx^{n}}$，总能得到标准形式
$$
\left.\left\{\begin{array}{l}\frac{dy_1}{dx}=f_1(x,y_1,y_2,\cdots,y_n),\\\frac{dy_2}{dx}=f_2(x,y_1,y_2,\cdots,y_n),\\...\\\frac{dy_n}{dx}=f_n(x,y_1,y_2,\cdots,y_n)\end{array}\right.\right.
$$

特点是微分方程组的个数为原微分方程的总阶数

写成向量形式为 $\mathbf{y}=(y_{1},y_{2},\dots,y_{n}),\mathbf{f}=(f_{1}(x,\mathbf{y}),f_{2}(x,\mathbf{y}),\dots,f_{n}(x,\mathbf{y}))$

则标准微分方程组可表示为
$$
\frac{d\mathbf{y}}{dx}=\mathbf{f}(x,\mathbf{y})
$$

初值条件为$\mathbf{y}(x_0)=\mathbf{y}_0$

```



