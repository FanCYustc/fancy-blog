---
aliases: 
info: 隐式曲线、曲面的计算
date: 2023-03-19-星期日 21:56
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230319215605
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Pro1 
对平面隐式曲线 $F(x,y)=0$, 其上一点 $(x_{0},y_{0})$ 的切线方程为
$F_{y}(y_{0})(y-y_{0})+F_{x}(x_{0})(x-x_{0})=0$

## Pro2

对空间隐式曲面 $F(x,y,z)=0$, 其上一点（$x_{0},y_{0},z_{0}$）的切平面为
$F_{x}(x_{0})(x-x_{0})+F_{y}(y_{0})(y-y_{0})+F_{z}(z_{0})(z-z_{0})=0$

## Pro3
对空间隐式曲线 $F(x,y,z)=0;G(x,y,z)=0$
其切向量可表示为 $gradF(x_{0},y_{0},z_{0})\times gradG(x_{0},y_{0},z_{0})$

## 等值面
$F(x,y,z)=C$ 的解集为等值面

$\exists(u,v)s.t.F(x(u,v),y(u,v),z(u,v))\equiv C$

可得
$$
\begin{cases}
\nabla F\cdot \frac{{\partial\vec{r}}}{\partial u}=0 \\
\nabla F\cdot \frac{{\partial\vec{r}}}{\partial v}=0
\end{cases}
$$




