---
aliases: []
info: 恰当方程的定义、判别
date: 2023-09-12-星期二 14:58
update: 
tags:
  - wiki/year2023
  - wiki/month09
id: wiki20230912145837
banner: "![[astrowalk.gif]]"
---
---

## Def 1 恰当方程

```ad-definition
title: Definition 1

一阶对称形式的微分方程
$$
P(x,y)dx+Q(x,y)dy=0
$$
如果存在可微函数 $\Phi(x,y)$，使得
$$
d\Phi(x,y)=P(x,y)dx+Q(x,y)dy=0
$$
则称为**恰当方程**

此时 $\Phi(x,y)=C$ 就是微分方程的解

```

[[Wiki - 线素场]]

其实 $\Phi=\int Pdx+Qdy$ [[Wiki - 向量场的曲线积分]]

恰当方程存在 $\leftrightarrow(P,Q)$ 是保守场 [[Wiki - 保守场]]

## Pro 2 恰当方程的判别

利用无旋场性质

```ad-theorem
title: Theorem 1


$Pdx+Qdy=0$ 是恰当方程的**充要条件**是
$$
\frac{{\partial P}}{\partial y}\equiv \frac{{\partial Q}}{\partial x}
$$
在定义域 $R=(\alpha,\beta)\times(\gamma,\delta)$ 恒成立

```
