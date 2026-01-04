---
aliases: 
info: 柱坐标哈密顿算符
date: 2023-04-06-星期四 23:05
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230406230511
banner: "![[astrowalk.gif]]"
---
---
#几何学 
#数学分析 

## Def1
柱坐标为 $(r,\theta,z)$.

因此 $r$ 沿柱坐标三个参数曲线的切向量为

$\frac{\partial \mathbf{r}}{\partial r} = \cos \theta \mathbf{i} + \sin \theta \mathbf{j} = {\mathbf{e}}_{r}$

$\frac{\partial \mathbf{r}}{\partial \theta } =  - r\sin \theta \mathbf{i} + r\cos \theta \mathbf{j} = r{\mathbf{e}}_{\theta }$

$\frac{\partial \mathbf{r}}{\partial z} = \mathbf{k} = {\mathbf{e}}_{z}$

这里通过 $r$ 的三个切向量, 引进了三个向量 ${\mathbf{e}}_{r} = \cos \theta \mathbf{i} + \sin \theta \mathbf{j},{\mathbf{e}}_{\theta } =  - \sin \theta \mathbf{i} + \cos \theta \mathbf{j},{\mathbf{e}}_{z} = \mathbf{k}$

容易验证 ${\mathbf{e}}_{r},{\mathbf{e}}_{\theta },{\mathbf{e}}_{z}$ 是两两正交的单位向量, 并且构成右手系, 称为柱坐标系. 但是与直
角坐标系不同的是, 柱坐标系中三个坐标向量 ${\mathbf{e}}_{r},{\mathbf{e}}_{\theta },{\mathbf{e}}_{z}$ 是空间点的向量函数, 具体来
说, 坐标向量 ${\mathbf{e}}_{r},{\mathbf{e}}_{\theta }$ 依赖于变量 $\theta$ , 但不依赖于变量 $r$ , 因此对 $\theta$ 求导得

$\frac{\partial {\mathbf{e}}_{r}}{\partial \theta } = {\mathbf{e}}_{\theta },\frac{\partial {\mathbf{e}}_{\theta }}{\partial \theta } =  - {\mathbf{e}}_{r},\frac{\partial {\mathbf{e}}_{z}}{\partial \theta } = 0$

在柱坐标系中 $\mathrm{d}\mathbf{r} = \frac{\partial \mathbf{r}}{\partial r}\mathrm{\;d}r + \frac{\partial \mathbf{r}}{\partial \theta }\mathrm{d}\theta  + \frac{\partial \mathbf{r}}{\partial z}\mathrm{\;d}z = \mathrm{d}r{\mathbf{e}}_{r} + r\mathrm{\;d}\theta {\mathbf{e}}_{\theta } + \mathrm{d}z{\mathbf{e}}_{z}$

由此首先得到在柱坐标下弧长元的表达式 $\mathrm{d}{s}^{2} = \mathrm{d}\mathbf{r} \cdot  \mathrm{d}\mathbf{r} = \mathrm{d}{r}^{2} + {r}^{2}\mathrm{\;d}{\theta }^{2} + \mathrm{d}{z}^{2}$

对于任意一个数量场 $u$ , 它既是 (x, y, z) 的函数, 同时又是 $\left( {r,\theta ,z}\right)$ 的函数, 根据一
阶微分形式不变性, 有

$\mathrm{d}u = \nabla u \cdot  \mathrm{d}\mathbf{r} = \frac{\partial u}{\partial x}\mathrm{\;d}x + \frac{\partial u}{\partial y}\mathrm{\;d}y + \frac{\partial u}{\partial z}\mathrm{\;d}z$
$= \frac{\partial u}{\partial r}\mathrm{\;d}r + \frac{\partial u}{\partial \theta }\mathrm{d}\theta  + \frac{\partial u}{\partial z}\mathrm{\;d}z.$

比较 $\mathrm{d}r,\mathrm{\;d}\theta ,\mathrm{d}z$ 的系数得 $\nabla=e_{r} \frac{\partial}{\partial r} +\frac{1}{r} e_{\theta} \frac{\partial}{\partial\theta} +e_{z} \frac{\partial}{\partial z}$

[[Wiki - 梯度]]


## 柱坐标中的调和函数
### Def
经 Laplace 算符计算后为 0 的称为调和函数
### e.g.

$$
\begin{array}{*{20}{c}}{n = 2}\\{\nabla \cdot\nabla \left( {{\rm{log}}r} \right) = \nabla \cdot\left( {\frac{{\nabla r}}{r}} \right) = \nabla \cdot\frac{{\vec r}}{{{r^2}}}}\\{= \nabla \left( {\frac{1}{{{r^2}}}} \right)\cdot\vec r + \frac{1}{{{r^2}}}\nabla \cdot\vec r}\\{= \frac{{ - 2}}{{{r^3}}}\nabla r\cdot\vec r + \frac{1}{{{r^2}}}\cdot2}\\{0 = \frac{{ - 2}}{{{r^3}}}\cdot\frac{{\vec r}}{r}\cdot\vec r + \frac{2}{{{r^2}}} = 0}\end{array}
$$

$$
\begin{array}{*{20}{c}}{n = 3,\nabla \cdot\vec r = 3}\\{\nabla \cdot\nabla \left( {\frac{1}{r}} \right) = \nabla \cdot\left( {\frac{{ - \vec r}}{{{r^3}}}} \right)}\\ 
{ =  - \nabla \left( {\frac{1}{{{r^3}}}} \right)\cdot\vec r + \left( { - \frac{1}{{{r^3}}}} \right)\nabla \cdot\vec r}\\{0 = \frac{3}{{{r^4}}}\nabla r\cdot\vec r - \frac{3}{{{r^3}}} = 0}\end{array}
$$