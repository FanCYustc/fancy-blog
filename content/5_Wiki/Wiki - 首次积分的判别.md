---
aliases: 
info: 首次积分的判别
date: 2023-12-12-星期二 15:16
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 微分方程/ODE
id: wiki20231212151643
banner: "![[astrowalk.gif]]"
---
---

## The 1 首次积分的判别

```ad-theorem
title: Theorem 1

设函数 $\Phi(x,y_1,\cdots,y_n)$ 在区域 $G_1$ 内是连续可微的，而且它不是常数. 则
$\boldsymbol{\Phi}(x,y_1,...,y_n)=C$ 
是微分方程
$$
\frac{dy_{i}}{dx}=f_{i}(x,y_{1},\dots,y_{n}),i=1,\dots,n
$$

在区域 $G_{1}$ 内的首次积分 的**充要条件**为：

$$
\frac{\partial\Phi}{\partial x}+\frac{\partial\Phi}{\partial y_1}f_1+\cdots+\frac{\partial\Phi}{\partial y_n}f_n=0
$$

是关于变量 $(x,y_1,\cdots,y_n)\in G_1$ 的一个恒等式.  

```

[[Wiki - 首次积分]]

[[Wiki - 映射的微分]]
### Proof

必要性：若是首次积分，则其全微分

$$
\frac{{\partial \Phi}}{\partial x}+\frac{{\partial \Phi}}{\partial y_{1}} \frac{dy_{1}}{dx}+\dots+\frac{{\partial y_{n}}}{\partial y_{n}} \frac{dy_{n}}{dx}=0
$$

恒成立 [[Wiki - 一阶微分不变性]]

充分性：一样，代入得全微分恒为 0，所以满足首次积分的条件


## Cal 1 

若首次积分不显含 x，$\Phi(y_{1},\dots,y_{n})=C$

是首次积分的充要条件是 $<\nabla \Phi, f>\equiv 0$ [[Wiki - 梯度]]









