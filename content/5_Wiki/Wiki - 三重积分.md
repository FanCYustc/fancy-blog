---
aliases: 
info: 
date: 2023-05-22-星期一 21:45
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230522214534
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## 累次积分计算：

       $$\begin{array}{*{20}{c}}{S\left( {T,f} \right) = \sum f\left( {{\xi _i},{\eta _i},{\lambda _i}} \right)\Delta {x_i}\Delta {y_i}\Delta {z_i}}\\{ = \sum \left( {\mathop \smallint \limits_{{a_3}}^{{b_3}} f\left( {{\xi _i},{\eta _i},z} \right)dz} \right)\Delta {x_i}\Delta {y_i} = \sum \left( {\mathop \smallint \limits_{{\Pi _1} \times {\Pi _2}} f\left( {x,y,{\lambda _i}} \right)dxdy} \right)\Delta {z_i}}\\{ = \mathop \smallint \limits_{{\Pi _1} \times {\Pi _2}} dxdy\smallint _{{a_3}}^{{b_3}}f\left( {x,y,z} \right)dz\left( {\left| T \right| \to 0} \right)}\\{ = \smallint _{{a_3}}^{{b_3}}dz\left( {\mathop \smallint \limits_{{\pi _1} \times {\pi _2}} f\left( {x,y,z} \right)dxdy} \right)}\end{array}$$

三重积分有多种不样的切片累次算法，具体问题具体分析

## Pro 1 三重积分

讨论累次积分的形式，先假设 **f 在 V 连续**[[Wiki - 度量空间的连续映射]]

 
1°如果 V 是这样的区域：它在 Oxy 平面上的投影为平面区域 [[Wiki - 平面区域的面积]] D，而 $V$ 是由曲面[[Wiki - 隐式曲线和曲面]] $S_1:z=z_1(x,y)$, $(x,y)\in D$ 和 $S_2:z=z_2(x,y)(x, y)\in D$$(z_1(x,y)\leqslant z_2(x,y))$ 及以 $\partial D$ 为准线并平行于 z 轴的柱面围成的，那么

$$

\iiint_{V}f(x,y,z)\mathrm{d}x\mathrm{d}y\mathrm{d}z=\iint_{D}\mathrm{d}x{\mathrm{d}y}\int_{z_{1}(x,y)}^ {z_{2}(x,y)}f (x,y,z){\mathrm{d}z}.

$$

垂直于 z 轴切片，平面投影区域为 Dz

[[Wiki - 二重累次积分]]
$$
\int_V f=\int_I\mathrm{d}z\iint_{D_z}f(x,y,z)\mathrm{d}x\mathrm{d}y.
$$

