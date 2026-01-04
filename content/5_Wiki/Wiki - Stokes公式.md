---
aliases: 
info: stokes公式
date: 2023-06-29-星期四 11:14
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629111456
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 

[[Wiki - Gauss公式]]

## Stokes 公式

```ad-theorem
title: Theorem 1

设 $\boldsymbol{v}=P (x, y, z) \boldsymbol{i}+Q (x, y, z) \boldsymbol{j}+R (x, y, z) \boldsymbol{k}$ 是 V 上光滑向量场 (即具有连续偏导数), 如果 S 是以曲线 L 为边的分片具有二阶连续偏导数的光滑曲面, 或者说 L 是有界曲面 S 的边 $L=\partial S$, 那么有 

$$
\begin{aligned}

& \oint_{L} P \mathrm{~d} x+Q \mathrm{~d} y+R \mathrm{~d} z \\

= & \iint_{S}\left(\frac{\partial R}{\partial y}-\frac{\partial Q}{\partial z}\right) \mathrm{d} y \mathrm{~d} z+\left(\frac {\partial P}{\partial z}-\frac{\partial R}{\partial x}\right) \mathrm{d} z \mathrm{~d} x+\left(\frac{\partial Q}{\partial x}-\frac {\partial P}{\partial y}\right) \mathrm{d} x \mathrm{~d} y

\end{aligned}
$$

或

$$
\oint_{L} \boldsymbol{v} \cdot \mathrm{d} \boldsymbol{r}=\iint_{S} \operatorname{rot} \boldsymbol{v} \cdot \mathrm {d} \boldsymbol{S}=\iint_{S} \nabla \times \boldsymbol{v} \cdot \mathrm{d} \boldsymbol{S}
$$


```

[[Wiki - 散度，旋度，laplace算子]]

[[Wiki - 映射的微分]]

### 证明

已知 S 一个边界 [[Wiki - 度量空间的内部外部#Definition 1]] 的定向和一个法向量构成一个曲面的定向 [[Wiki - 曲面的定向]]

                     $$\begin{array}{*{20}{c}}{\mathop \oint \limits_{\partial S} \vec v\cdot d\vec r = \mathop \smallint \limits_{\partial S} Pdx + Qdy + Rdz}\\{S:\vec r  \left( {u,v} \right) = \left( {x\left( {u,v} \right),y\left( {u,v} \right),z\left( {u,v} \right)} \right)   \\
\left( {u,v} \right) \in D} \\
\end{array}$$
[[Wiki - 向量场的曲线积分]]

同 Green 公式

             $$\begin{array}{*{20}{c}}{\mathop \smallint \limits_{\partial S} Pdx = \smallint _a^bPx{\rm{'}}\left( t \right)dt = \smallint _a^bP\left( {{x_u}{u_t} + {x_\nu }{v_t}} \right)dt}\\{ = \mathop \smallint \limits_{\partial D} P{x_u}du + P{x_v}dv = \mathop \smallint \limits_D \left( {\frac{{\partial (P{x_v})}}{{\partial u}} - \frac{{\partial (P{x_u})}}{{\partial v}}} \right)dudv}\end{array}$$

第一步为链式法则[[Wiki - 一阶微分不变性|链式法则]]

最后一步用了格林公式 [[Wiki - Green公式]]

$$\begin{array}{*{20}{c}}{\frac{\partial }{{\partial u}}  \left( {P\frac{{\partial x}}{{\partial v}}} \right) - \frac{\partial }{{\partial v}}  \left( {P\frac{{\partial x}}{{\partial u}}} \right) = {P_u}{x_v } + P{x_{uv }} - {P_v }{x_u} - P{x_{vu}}}\\{ = \left( {{p_x}{x_u} + {p_y}{y_u} + {p_z}{z_u}} \right){x_\nu } - \left( {{p_x}{x_v } + {p_y}{y_v } + {p_z}{z_\nu }} \right){x_u}}\\{}\\{}\end{array}$$


所以    

$$\int _D\left( {\frac{{\partial P{X_v }}}{{\partial u}} - \frac{{\partial P{X_u}}}{{\partial v }}} \right)dudv = \mathop \int \limits_D (P_{z}\frac{{\partial (z,x)}}{\partial(u,v)} - P_{y}\frac{{\partial (x,y)}}{\partial(u,v)})dudv  $$  $$=\int_{S}{P_z}dzdx - {P_y}dxdy$$

要用到 r 有连续的二阶偏导数，用到混合导可交换 [[Wiki - 偏导#高阶偏导]]

