---
aliases: 
info: 格林公式
date: 2023-06-26-星期一 11:01
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230626110130
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 

### 讨论前提：

若曲线 L 是闭曲线

    $$\mathop \int \limits_L \vec v\cdot d\vec r = \mathop \oint \limits_L \vec v\cdot d\vec r$$
## Pro1 Green 公式

设 D 是有**限条逐段光滑的封闭曲线**[[Wiki - 映射的微分]] $L$ 围成的平面闭区域（因此 $L=\partial D$ ) [[Wiki - 度量空间的内部外部#Definition 1]], $\vec{v} = P (x, y) \vec{i} + Q (x, y) \vec{j}$ 是 $D$ 上**光滑**向量场，则

$$
\oint_{\partial D} P dx+Q dy=\iint_{D} \left( \frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y} \right) dx dy
$$

[[Wiki - 向量场的曲线积分]]

[[Wiki - 二重累次积分]]
其中曲线积分的**方向为 $L=\partial D$ 的逆时针方向 [[Wiki - 曲线的定向]]**. 上述公式称之为 **Green 公式**

### 证明


先讨论格林公式的一般情形，当闭曲线为矩形时

     $$
\begin{array}{*{20}{c}} \\
{D = \left[ {a,b} \right] \times \left[ {c,d} \right], \\ 
\vec v = P\vec i + Q\vec j}\\{\mathop \smallint \limits_{\partial D} Pdx + Qdy = \mathop \sum \limits_{i = 1}^4 \mathop \smallint \limits_{{L_i}} Pdx + Qdy} \\
\end{array}$$

$L_i$ 为逆时针方向的四条边

             $$\begin{array}{*{20}{c}}{\mathop \int \limits_{{L_3}} Pdx + Qdy + \mathop \int \limits_{{L_4}} Pdx + Qdy = \int _c^dQ\left( {b,y} \right)dy + \int _c^dQ\left( {a,y} \right)dy}\\{ = \int _c^d\mathop \int_a^b \frac{{\partial Q\left( {x,y} \right)}}{{\partial x}}dxdy = \mathop \int \limits_D \frac{{\partial Q\left( {x,y} \right)}}{{\partial x}}dxdy}\end{array}$$

同理，所以有

    $$\mathop \oint \limits_{\partial D} Pdx + Qdy = \mathop \int \limits_D \left( {\frac{{\partial Q}}{{\partial x}} - \frac{{\partial P}}{{\partial y}}} \right)dxdy$$


## 应用


应用：**计算面积**

$$\begin{array}{*{20}{c}}{\sigma \left( D \right) = \mathop \int \limits_D dxdy = \mathop \int \limits_{\partial D} xdy}\\{\vec v = 0\vec i + x\vec j}\end{array}$$

