---
aliases:
  - p-判别式
info: 奇解的p-判别法
date: 2023-10-24-星期二 14:25
update:
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231024142541
banner: "![[astrowalk.gif]]"
---
---

## The 1 奇解的必要条件
```ad-theorem
title: Theorem 1


设函数 $F(x,y,p)$ 对 ($x,y,p)\in G$ 是连续的，而且对 y 和 $p$ 有连续的偏微商 $F^{\prime}y$ 和 $F^{\prime}_p.$ 若函数 $y=\varphi(x)(x\in J)$ 是微分
方程的一个奇解 ，并且

$(x,\boldsymbol{\varphi}(x),\boldsymbol{\varphi}^{\prime}(x))\in G,\quad(x\in J)$

则奇解 $y=\varphi(x)$ 必须满足

$$F(x,y,p)=0,{F^{\prime}}_{p}(x,y,p)=0,$$

或者称为奇解一定是一条 **p-判别曲线**

```

[[Wiki - 奇解]]
### Proof

反证：若存在 $x_{0}\in J$，s.t. $F'_{p}(x_{0}, y_{0}, p_{0})\neq 0$

则由隐函数存在定理 [[Wiki - 隐函数存在定理]]

在 $(x_{0},y_{0})$ 邻域唯一确定了解 $p= \frac{dy}{dx}=f(x,y)$ 满足 $f(x_{0},y_{0})=p_{0}$

On the other side, $f(x,y)$ 在邻域内连续，且有偏微商

$$
f'_{y}(x,y)= -\frac{{F'_{y}(x,y,f(x,y))}}{F'_{p}(x,y,f(x,y))}
$$

由皮卡定理 [[Wiki - cauchy初值定理]]，解存在唯一，矛盾。


```ad-warning

只是**必要条件**，p-判别曲线可能不是解，更可能不是奇解

```

