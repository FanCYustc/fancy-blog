---
aliases: 
info: 曲面面积换元
date: 2023-06-23-星期五 22:58
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230623225844
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 



与曲线不同的问题：  
如何计算分割的小面积？

设 （u, v） 属于区域 D，对区域 D 进行分割

前提：**S 是光滑曲面**[[Wiki - 参数曲面的切平面和法向量场]]，即有一阶连续偏导数

## 以直代曲
                            $${\vec r_v} \times {\vec r_u} \ne 0$$
$$ { {\Delta {S_{ij}} \approx } }  { {\mid{ {\vec r\left( {{u_i},{u_{j - 1}}} \right) - \vec r\left( {{u_{i - 1}},{v_{j - 1}}} \right) \mid \times \mid  \vec r\left( {{u_{i - 1}},{v_j}} \right) - \vec r\left( {{u_{i - 1}},{v_{j - 1}}} \right)} } }\mid } $$
					   $$\begin{array}{*{20}{c}}{}\\{ = \left| {\left( {\frac{{\partial \vec r}}{{\partial u}}\left( {{u_{i - 1}},{v_{j - 1}}} \right)\Delta {u_i} + o\left( {\Delta {u_i}} \right)} \right) \times \left( {\frac{{\partial \vec r}}{{\partial \upsilon }}\left( {{u_{i - 1}},{v_{j - 1}}} \right)\Delta {v_j} + {\rm{o}}\left( {\Delta {v_j}} \right)} \right)} \right|}\\{}\end{array}$$
					   $$ = \left| {\frac{{\partial \vec r}}{{\partial u}} \times \frac{{\partial \vec r}}{{\partial v}}} \right|\left( {{u_{i - 1}},{v_{j - 1}}} \right)\Delta {u_i}\Delta {v_j} + o\left( {\Delta {u_i}\Delta {v_j}} \right)$$


运用了以直代曲的思想

           $$ds = \left| {\overrightarrow {{r_u}} {\rm{'}} \times {{\vec r}_\upsilon }{\rm{'}}} \right|dud\nu $$

## 具体的面积换元公式

$$

\begin{array}{l}E=\boldsymbol{r}_u'^2=x_u'^2+y_u'^2+z_u'^2,\\ G=\boldsymbol {r}_v'^2=x_v'^2+y_v'^2+z_v'^2,\\  
F=\boldsymbol{r}_u'\cdot\boldsymbol{r}_v'= x_u'x_v'+y_u'y_v'+z_u'z_v',\end{array}

$$

记

$$

\mathrm{d}S=|\boldsymbol{r}_u'(u,v)\times\boldsymbol{r}_v'(u,v)|\mathrm{d}u \mathrm{d}v=\sqrt{EG-F^2}\mathrm {d}u \mathrm{d}v

$$

## 特殊情况

$\overrightarrow{r}=\overrightarrow{r}(x, y)=(x, y, f (x, y))$

$$
ds=\left( 1+f_{x}^{2}+f_{y}^{2}\right)^{\frac{1}{2}}dxdy=\sqrt{1+\left( \nabla f \right) ^{2}}dxdy
$$

对球坐标 $dS=R^{2}\sin\theta d\phi$
[[Wiki - 球坐标]]


