---
aliases: 
info: 三重积分换元公式
date: 2023-05-22-星期一 21:49
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230522214939
banner: "![[astrowalk.gif]]"
---
---

#数学分析/多变量微积分 

[[Wiki - 三重积分]]

## 三重积分的换元：

三维三个向量的体积用混合积表示

                                     $$\begin{array}{*{20}{c}}{\sigma \left( {{v_i}{\rm{'}}} \right) = \Delta u\Delta v\Delta w}\\{\sigma \left( {{v_i}} \right) = \left( {\phi  \times \left( {u + \Delta u,v,w} \right) - \phi  \times \left( {u,v,w} \right)} \right)x\left( {\phi  \times \left( {u,v + \Delta v,w} \right) - \phi  \times \left( {u,v,w} \right)} \right)}\\{\cdot\left( {\phi  \times \left( {u,v,w + \Delta w} \right) - \phi  \times \left( {u,v,w} \right)} \right) = \left| {{\phi _u} \times {\phi _v}{\phi _\omega }} \right|\Delta u\Delta \nu \Delta w}\end{array}$$

$$

\begin{array}{l}&\iiint_V f(x,y,z)\mathrm{d}x\mathrm{d}y\mathrm{d}z\\ &=\iiint_{V'}f(x(u,v,w),y(u,v,w),z(u,v,w))\left|\frac{\partial(x,y,z)}{\partial(u,v,w)}\right|\mathrm{d}u\mathrm{d}v\mathrm{d}w.\end{array}

$$

特例：球坐标 [[Wiki - 球坐标#Pro1]]

$$\begin{array}{*{20}{c}}{\left\{ {\begin{array}{*{20}{c}}{x = r{\rm{sin}}\theta  \times {\rm{cos}}\varphi }\\{y = r{\rm{sin}}\theta  \times {\rm{sin}}\varphi }\\{z = r{\rm{cos}}\theta }\end{array}} \right.}\\{\frac{{\partial \left( {x,y,z} \right)}}{{\partial \left( {r,\theta ,\varphi } \right)}} = {r^2}{\rm{sin}}\theta }\end{array}$$

注意：构造换元时检查 1、是不是**一一对应的变换**

2、雅各比行列式 [[Wiki - 雅各比矩阵]]为 0 的点集是不是零测 [[Wiki - 平面区域的面积#Def4 零测]] 的

### 例：

$$\begin{array}{*{20}{c}}{V = \left\{ {x,y,z \ge 0;x + y + z \le 1} \right\}}\\{I = \mathop \smallint \limits_V xyz{{\left( {1 - x - y - z} \right)}^2}dxdydz}\end{array}$$

               $$\begin{array}{*{20}{c}}{V \to V{\rm{'}} = \left\{ {0 \le u,v,w \le 1} \right\}}\\{\left\{ {\begin{array}{*{20}{c}}{u = x + y + z}\\{v = \frac{{y + z}}{{x + y + z}}}\\{w = \frac{z}{{y + z}}}\end{array}} \right.}\\{\left\{ {\begin{array}{*{20}{c}}{x = u - uv}\\{y = uv - uvw}\\{z = uvw}\end{array}} \right.}\end{array}$$

