---
aliases: 
info: 积分因子的定义
date: 2023-09-19-星期二 15:02
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 微分方程/ODE
id: wiki20230919150222
banner: "![[astrowalk.gif]]"
---
---

## Def 1 积分因子

```ad-definition
title: Definition 1

对一般 $P(x,y)dx+Q(x,y)dy=0$，希望乘上一个**积分因子 $\mu$**，使得

$$
\mu(x,y)P(x,y)dx+\mu(x,y)Q(x,y)dy=0
$$

是恰当方程


```

 [[Wiki - 恰当方程]]
## 求积分因子

```ad-proposition

就是解偏微分方程，积分因子存在当且仅当偏微分方程有解


$$
P \frac{\partial\mu}{\partial y}- Q \frac{\partial\mu}{\partial x}= \left(   \frac{\partial Q}{\partial x} -  \frac{\partial P}{\partial y} \right)\mu
$$


```


## Pro 1 分离变量情形


```ad-proposition
title: Propositon 1

设 $\mu$ **只与 x 有关**
则由充要条件推出

$$
Q\:\frac{d\mu}{dx}=\:(\frac{\partial P}{\partial y}-\frac{\partial Q}{\partial x})\:\mu\:
$$
或者写成

$$\frac{1}{\mu(x)}\frac{d\mu(x)}{dx}=\frac{\frac{\partial P(x,y)}{\partial y}-\frac{\partial Q(x,y)}{\partial x}}{Q(x,y)}.$$

则该积分因子 $\mu(x)$ 存在的充要条件是右式只与 x 有关 $=G(x)$

由此求得 $\mu(x)=e^{\int G(x) \, dx}$

```
