---
aliases: 
info: 梯度的定义、值
date: 2023-03-12-星期日 16:24
update: 
tags:
  - wiki/year2023
  - wiki/month03
  - 数学分析/微分
id: wiki20230312162439
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Def 1 梯度

设 $f(x,y)$ 是平面区域 D 上的可微函数, 则 $f(x,y)$ 在 D 中任何一点沿任何方向 $\boldsymbol{e}=\cos\alpha\boldsymbol{i}+\cos\beta\boldsymbol{j}$ 的方向导数都存在, 而且有

$$
\frac{\partial f}{\partial\boldsymbol{e}}=\frac{\partial f}{\partial x}\cos\alpha+\frac{\partial f}{\partial y}\cos\beta.
$$

记

$$
\mathrm{grad}f=\frac{\partial f}{\partial x}\boldsymbol{i}+\frac{\partial f}{\partial y}\boldsymbol{j}.
$$

这是一个由函数的偏导数所决定的向量, 称为函数 $z=f(x,y)$ 在点 $(x,y)$ 处的**梯度**. 因此函数沿任何方向的方向导数为该方向与函数的梯度的内积

$$
\frac{\partial f}{\partial\boldsymbol{e}}=\mathrm{grad}f\cdot\boldsymbol{e}.
$$


用梯度求方向导数 [[Wiki - 方向导数]]

**前提是 f 是可微函数**[[Wiki - 映射的微分]]

## Def2 哈密顿算符

定义哈密顿算符
$$
\begin{array}{*{20}{c}}{\nabla  = \vec i\frac{\partial }{{\partial x}} + \vec j\frac{\partial }{{\partial y}} + \vec k\frac{\partial }{{\partial z}}}\end{array}
$$

为一种兼具数量和向量性质的算子

可以推广到 $\mathbb{R}^{n}$

## Pro1

$$
\begin{align}
{{1^0}\nabla \varphi  = grad\varphi  = \frac{{\partial \varphi }}{{\partial x}}\vec i + \frac{{\partial \varphi }}{{\partial y}}\vec j + \frac{{\partial \varphi }}{{\partial z}}\vec k}\\ 
{{2^{0}d\varphi  = \nabla \varphi \cdot}d\vec r = grad\space\varphi \cdot\left( {dx\vec i + dy\vec j + dz\vec k} \right)}
\end{align}
$$
2 为微分的一种表示[[Wiki - 映射的微分]]

涉及微分形式
  $$
  \begin{array}{*{20}{c}}{\vec v = \nabla \varphi  = P\vec i + Q\vec j + R\vec k}\\{ \leftrightarrow Pdx + Qdy + Rdz \Rightarrow d\varphi }\end{array}
  $$