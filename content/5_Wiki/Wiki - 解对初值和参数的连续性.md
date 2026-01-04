---
aliases: 
info: 解对初值和参数的连续依赖性
date: 2023-11-07-星期二 14:44
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
  - 连续
id: wiki20231107144435
banner: "![[astrowalk.gif]]"
---
---

## The 1 解对初值和参数的连续依赖性

对 [[Scientech - 常微分方程-高阶微分方程#5.3 解对初值和参数的连续依赖性]]的方程

首先可以作变换 $t=x-x_{0},\mathbf{u}=\mathbf{y-y_{0}}$，初值问题变成
$$
\frac{d\mathbf{u}}{dt}=\mathbf{f}(t+x_{0},\mathbf{u+y_{0}},\mathbf{\lambda}),\mathbf{u}(0)=\vec{0}
$$

这时就把初值变成和参数一样，只需要考虑**解的连续性对参数的依赖性**

```ad-theorem
title: Theorem 1

So 不是一般性，只讨论初值问题

$$
(E_{\lambda}): \frac{d\mathbf{y}}{dx}=  \mathbf{f}(x,\mathbf{y,\lambda}),\mathbf{y}(0)=\vec{0}
$$

设 n 维向量值函数 $\mathbf{f}(x,\mathbf{y,\lambda})$ 在区域

$$
G_{:}\quad|x|\leqslant a,\quad|\mathbf{y}|\leqslant b,\quad|\mathbf{\lambda-\lambda_0}|\leqslant c
$$

上是连续的，而且对 y 满足李氏条件 
$$
|f (x, \mathbf{y_1,\lambda})-f (x, \mathbf{y_2,\lambda})|\leqslant L|\mathbf{y_1-y_2}|
$$

其中常数 $L\geqslant0.$ 令正数 $M$ 为 $|f(x,\mathbf{y,\lambda})|$ 在区域 $G$ 的一个上界，而且令

$$
h=\min\left\{ a, \frac{b}{M} \right\}
$$

则**初值问题 $(E_\lambda)$** 的解 $y=\varphi(x,\lambda)$ 在区域 $D:\quad|x|\leqslant h,\quad|\lambda-\lambda_0|\leqslant c$ 上是**连续的**.

```

### Proof

类似 [[Wiki - cauchy初值定理]]的证明 [[Wiki - n维的皮卡定理]]


## Cal 1 解的连续性对初值的依赖性

```ad-theorem
title: Theorem 2

设 n 维向量值函数 $\boldsymbol{f}(x,\boldsymbol{y})$ 在区域
$R:\quad|x-x_0|\leqslant a,\quad|\mathbf{y-y_0}|\leqslant b$
上连续，而且对 y 满足李氏条件. 则微分方程

 $$
 \frac{d\mathbf{y}}{dx}=\mathbf{f}(x,\mathbf{y}),\mathbf{y}(x_0)=\boldsymbol{\eta}
$$

的解 $\mathbf{y}=\boldsymbol{\varphi}(x,\boldsymbol{\eta})$ 在区域
$D:\quad|x-x_0|\leqslant\frac h2,\quad|\boldsymbol{\eta-y_0}|\leqslant\frac b2$
上是连续的，其中
$$
h=\min\left\{ a, \frac{b}{M} \right\}
$$
而正数 $M$ 为 $|f(x,y)|$ 在区域 $R$ 上的一个上界.

```

[[Wiki - 利普希茨条件]]

```ad-note

**用处：把邻域内的积分曲线族作局部拉直**

考虑 x 和初值 $\boldsymbol\eta$ 作为分量的空间，考虑小区域 D 内的线段 $|x-x_{0}|\leq \frac{h}{2}, \boldsymbol{\eta}=\boldsymbol{\eta_{0}}$

可以与 R 内的一个曲线 $|x-x_{0}|\leq \frac{h}{2}, \boldsymbol{y=\varphi}(x,\boldsymbol{\eta_{0}})$ 一一对应

```




