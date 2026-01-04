---
aliases: 
info: 
date: 2023-12-18-星期一 21:21
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数学分析/积分
  - 数学分析/多变量微积分
id: wiki20231218212118
banner: "![[astrowalk.gif]]"
---
---


## Pro2 Riemann 积分基本性质

与一元积分的性质类似

设 $D$ 是可测的，$f(x,y)$ 和 $g(x,y)$ 在 $D$ 上可积. 

1° 对于任意的常数 $c_1$ 和 $c_2$ 有
$$\int_D(c_1f+c_2g)=c_1\int_Df+c_2\int_Dg.$$


2° 设 $D$ 是两个可测点集 $D_1,D_2$ 的拼接 ( 即没有公共内点 ), 若函数 $f(x,y)$ 在和 $D_{2}$ 都可积，则 $f(x,y)$ 在 $D=D_1\cup D_2$ 上也可积，并有
$$\int_Df=\int_{D_1}f+\int_{D_2}f.$$


$$\begin{aligned}3&\quad f(x,y)\text{ 和 }g(x,y)\text{ 的乘积 }f(x,y)g(x,y)\text{ 在 }D\text{ 上仍可积}.\\4&\quad\text{若在 }D\text{ 上 }f(x,y)\geqslant g(x,y),\text{则}\\\\&\quad\int_Df\geqslant\int_Dg.\\\\&\text{特别, 若在 }D\text{ 上恒有 }m\leqslant f(x,y)\leqslant M,\text{则 }\\\\&\quad m\sigma(D)\leqslant\int_Df\leqslant M\sigma(D).\end{aligned}$$

[[Wiki - 平面区域的面积]]

$5^{\circ}\quad|f(x,y)|$ 在 $D$ 上也可积，并有

$$
|\int_{D} f |\leq \int _{D}|f| 
$$

6°(积分中值定理) 若 $D$ 是连通闭域[[Wiki - 连通区域]]，$f (x, y)$ 在 $D$ 连续，则必有 $P\in D$, 使

$$
\int_Df=f(P)\sigma(D).
$$


## Pro3 中值定理推广


$$
\mathop \smallint \limits_D f\cdot gd\sigma  = f\left( \zeta  \right)\mathop \smallint \limits_D gd\sigma 
$$

**要求 g 大于等于 0**

[[Wiki - 第二积分中值定理]]

