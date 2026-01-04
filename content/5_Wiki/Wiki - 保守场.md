---
aliases: 
info: 保守场和势函数，无旋场
date: 2023-06-29-星期四 11:48
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629114817
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 

## 保守场

```ad-definition
title: Definition 1

曲线积分**只与端点有关，与路径无关**，则该场称为保守场

```


## Pro1 

```ad-proposition
title: Propositon 1
```
设 v 是区域Ω上的向量场（一阶连续可导）[[Wiki - 映射的微分]]

设 $V \subset R$ 是曲面单连通区域, $\boldsymbol{v=Pi+Qj+Rk,}$ 是 V 上的光滑向量场，则下列三个命题等价:

1°v 是**保守场** 

2°存在一个数量场 $\phi$, 使得 $\boldsymbol{v}=\nabla\phi$ ，并称 $\phi$ 是向量场 $\vec{v}$ 的**势函数**. 因此 [[Wiki - 梯度]]

$$

\boldsymbol{v}\cdot\mathrm{d}\boldsymbol{r}=\nabla\phi\cdot\mathrm{d}\boldsymbol{r}=\mathrm{d}\phi

$$

是一个全微分，称这种场为**有势场**

3°v 满足 $\nabla\times v=0.$ ，称这种场是**无旋场**[[Wiki - 散度，旋度，laplace算子]]



### 证明：

1→2：

$$
\begin{array}{*{20}{c}} \\
{\phi   \left( {x,y,z} \right) = \int _{\left( {{x_0},{y_0},{z_0}} \right)}^{\left( {x,y,z} \right)}\vec v\cdot \\
d\vec r}\\{\int _{\left( {x,y,z} \right)}^{\left( {x + \Delta x,y,z} \right)}\vec v\cdot \\
d\vec r = \mathop \int \limits_x^{x + \Delta x} Pdx = \phi   \left( {x + \Delta x,y,z} \right) - \phi  \left( {x,y,z} \right)}\\{\frac{{\partial \phi }}{{\partial x}} = P\left( {\Delta x \to 0} \right)}\end{array}
$$

同理即得 v 为有势场

2→3 ：

$$
\nabla  \times \left ( {\nabla \varphi } \right) = 0
$$


3→ 1： 由 Stokes 公式[[Wiki - Stokes公式]]

$$
\oint \vec v\cdot
d\vec r = \mathop \smallint \limits_S \nabla  \times \vec v\cdot
d\vec s = 0
$$
