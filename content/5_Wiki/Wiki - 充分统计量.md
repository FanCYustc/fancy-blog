---
aliases: 
info: 充分统计量的判断
date: 2024-03-12-星期二 14:34
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/统计量
id: wiki20240312143455
banner: "![[astrowalk.gif]]"
---
---

## Def  1 充分统计量

设样本 $X$ 的分布族为 $\{f(\theta,x),\quad\theta\in\Theta\}$, $\Theta$ 是**参数空间**. 令 $T=T(X)$ 为一统计量 [[Book - 数理统计#各种统计量：]]，

```ad-definition
title: Definition 1

若在已知 $T$ 的条件下，样本 $X$ 的条件分布与参数 $\theta$ 无关，则称 $T (X)$ 为 $\theta$ 的**充分统计量** (sufficient statistic).

可以表示为

$$
P_{\theta}(X_{1}\leq x_{1},\dots,X_{n}\leq x_{n}|T=t)=\Psi(t)
$$


与 $\theta$ 无关

```

[[Wiki - 条件分布与条件密度]]


解释：T（X）作为统计量是从样本 X 中得到的，$\{X 中包含的信息\}=\{T (X) 中包含的信息\}+\{X中除T(X)包含的信息\}$，我们想让关于 $\theta$ 的信息都在 T (X) 中，那么 T (X) 就是充分的。

```ad-example

对一参数族统计模型 F，次序统计量为充分统计量

```
