---
aliases: 
info: 
date: 2023-12-19-星期二 18:00
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 微分方程/PDE
id: wiki20231219180041
banner: "![[astrowalk.gif]]"
---
---

## Def 1 一阶拟线性 PDE

$$\sum_{i\operatorname{=}1}^nA_i(x_1,\cdots,x_n,u)\frac{\partial u}{\partial x_i}=B(x_1,\cdots,x_n,u)$$

称为一阶拟线性 PDE，因为左边各偏导的组合是线性的


## The 1 解法

转化为 [[Wiki - 一阶齐次线性偏微分方程的解法]]

对
$$X(x,y,z)\left.\frac{\partial z}{\partial x}+Y(x,y,z)\right.\frac{\partial z}{\partial y}=Z(x,y,z)$$
为例，由隐函数定理 [[Wiki - 隐函数存在定理]]，可以写成 $V(x,y,z)=0$ 的形式

所以可以化为
$$
X(,y,z) \frac{{\partial V}}{\partial x}+Y(x,y,z) \frac{{\partial V}}{\partial y}+Z(x,y,z) \frac{{\partial V}}{\partial z}=0
$$
可以用一阶齐次线性 PDE 的解法解决

