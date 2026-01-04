---
aliases: 
info: 二重积分换元的计算
date: 2023-04-28-星期五 22:59
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230428225936
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Pro1 
$$
d\sigma  = dxdy = \left( {\frac{{\partial \left( {x,y} \right)}}{{\partial \left( {u,v} \right)}}} \right)dudv
$$
[[Wiki - 雅各比矩阵]]


在 $O_{uv}$ 上的矩形分割，会对应 x-y 上的  
一组曲线族的分割→即坐标变换

隐含着微分形式的内容：**微分形式要有类似叉乘的运算性质**

$$
\begin{array}{*{20}{c}}{\left( {x,y} \right) = \phi  \left( {u,v} \right) = \left( {x\left( {u,v} \right),y\left( {u,v} \right)} \right)}\\{{D^1}\frac{{1:1}}{\phi } \to D}\end{array}
$$
由于 $x(u,v),y(u,v)$ 可微[[Wiki - 映射的微分]]

$$

\begin{array} \\
{\sigma \left( {{D_i}} \right) \approx \left| {\frac{{\partial \left( {x,y} \right)}}{{\partial \left( {u,v} \right)}}} \right|\Delta u\Delta v + o\left( {\Delta u\Delta v} \right)}\\{\frac{{\sigma \left( {{D_i}} \right)}}{{\sigma \left( {{D_i}{\rm{'}}} \right)}} = \left| {J\phi } \right| + o\left( 1 \right)}\\{\sum f\left( {{p_i}} \right)\sigma \left( {{D_i}} \right) = \sum f\left( {\phi  \times \left( {{p_i}{\rm{'}}} \right)} \right)\sigma \left( {{D_i}{\rm{'}}} \right) \times \left( {\left| {J\phi } \right| + o\left( 1 \right)} \right)}\\{ \to \smallint \mathop \smallint \limits_D f \circ \phi   \left| {J\phi } \right|dudv\left( {\left| T \right| \to 0} \right)} \\
\end{array}
$$

当|T|→ 0时 $o(1) → 0$需要很难才能证明

## pro2 换元积分公式

设 D 是 $O_{xy}$ 中可测的有界闭区域，$f(x,y)$ 在 $D$ 上**连续**[[Wiki - 度量空间的连续映射]], 变换

$$
x=x(u,v),\quad y=y(u,v)\quad(u,v)\in D'
$$

是从 $O'uv$ 平面上可测的有界区域 $D'$ 到 $O_{xy}$ 平面上有界区域 $D$ 的有连续偏导数的一一映射并满足

则

$$
\iint_D f(x,y)\mathrm{d}x\mathrm{d}y=\iint_{D'}f(x(u,v),y(u,v))\left|\dfrac{\partial(x,y)}{\partial(u,v)}\right|\mathrm{d}u \mathrm{d} v.
$$

