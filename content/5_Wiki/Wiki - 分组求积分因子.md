---
aliases: 
info: 分组求积分因子的方法
date: 2023-09-19-星期二 15:28
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 微分方程/ODE
id: wiki20230919152826
banner: "![[astrowalk.gif]]"
---
---

## The 1

```ad-theorem
title: Theorem 1


若 $\mu=\mu (x, y)$ 是方程 $P(x,y)dx+Q(x,y)dy=0$ 的一个积分因子，使得
$$
\mu P (x, y) dx + \mu Q (x, y) dy = d\Phi (x, y)
$$
则 $u (x,y) g(\Phi(x,y))$ 也是一个积分因子, 其中 g (·) 是任一可微的非零函数。


```

 [[Wiki - 积分因子]]、 [[Wiki - 映射的微分]]、[[Wiki - 恰当方程]]

## 分组求积分因子

将一般微分方程分组，并分别求积分因子

$$
\mu_{1}(P_{1}dx+Q_{1}dy)=d\Phi_{1},\mu_{2}(P_{2}dx+Q_{2}dy)=d\Phi_{2}
$$
若存在可微函数 $g_{1},g_{2}$ s.t. $\mu_{1}g_{1}(\Phi_{1})=\mu_{2}g_{2}(\Phi_{2})$，则 $\mu_{1}g_{1}(\Phi_{1})$ 就是原方程的积分因子

