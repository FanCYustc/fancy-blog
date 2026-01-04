---
aliases: 
info: 
date: 2024-05-29-星期三 19:45
update: 
tags:
  - wiki/year2023
  - wiki/month03
  - 数学分析/多变量微积分
id: wiki20240529194524
banner: "![[astrowalk.gif]]"
---
---



## Def 1 全增量，偏增量
$$
\Delta z=f(x+\Delta x,y+\Delta y)-f(x,y)
$$

- f关于x的偏增量
$$
f(x+\Delta x,y)-f(x,y)
$$
- f关于y的偏增量
$$
f(x,y+\Delta y)-f(x,y)
$$


## Def 2 全微分

设函数$z=f(x,y)$在点$(x,y)$的某邻域内有定义, 如果函数在点的全增量$$\Delta z=f(x+\Delta x,y+\Delta y)-f(x,y)$$
可表示为
$$\Delta z-A\Delta x+B\Delta y+\sigma(\rho)$$
其中A,B不依赖于$\Delta x$, $\Delta y$ 而仅与x, y 有关
$\rho=\sqrt{ \Delta x^{2}+\Delta y^{2} }$
则函数$z=f(x,y)$在点$(x,y)$可微分, 
$A\Delta x+B\Delta y$ 称为全微分

## The 1 必要条件

如果函数 $z=f(x,y)$ 在点 $(x,y)$ 可微[[Wiki - 映射的微分]]分, 则该函数在点 $(x,y)$ 的偏导数必定存在, 且函数在点的全微分为:
$$dz=\dfrac{\partial z}{\partial x}\Delta x+\dfrac{\partial z}{\partial y}\Delta y$$

## 定理 2 充分条件

若函数 $z=f(x,y)$ 的偏导数在点 $(x,y)$ 连续[[Wiki - 偏导]], 则函数在该点可微

