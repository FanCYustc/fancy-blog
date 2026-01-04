---
aliases: 
info: 克莱罗方程解的结构
date: 2023-10-17-星期二 15:05
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231017150528
banner: "![[astrowalk.gif]]"
---
---

## Def 1 克莱罗方程
```ad-definition
title: Definition 1


$$
y=xp+f(p),p= \frac{dy}{dx}
$$

称为克莱罗方程，且必须满足 $f''(p)\neq 0$

```


## 解的结构

用 [[Wiki - 一阶隐式微分方程的解法]]，得
$$
(x+f'(p)) \frac{dp}{dx}=0
$$

当 $\frac{dp}{dx}=0$ 时, 我们有 $p=C.$ 因此, 得到克莱洛方程的通解
 
$$
y\:=\:Cx\:+f(C)\:,
$$

其中 $C$ 是一个任意常数; 

当 $x+f^{\prime}(p)=0$ 时, 我们得到克莱洛方程的一个特解

$$
x=-\:f^{\prime}(p)\:,\quad y=-\:f^{\prime}(p)p+f(p).
$$

因为 $f^{\prime\prime}(p)\neq0$, 所以由 $x=-f^{\prime}(p)$ 以及**导数的达布定理**，可得 f 二阶导恒正或恒负，有反函数 $p=$ $w(x)$. 然后代入上式, 特解可写成如下形式:

 $$
 y=xw(x)+f(w(x)),
 $$且$y'=w(x)$，即解曲线的切线斜率

所以$x=x_{0}$处特解的切线为$y=w(x_{0})x+f(w(x_{0}))=C_{0}x+f(C_{0})$

可以发现与通解形式一样。所以，特解上的每一个点，都有特解和其切线对应的通解**两个解**。[[Wiki - 奇解]]