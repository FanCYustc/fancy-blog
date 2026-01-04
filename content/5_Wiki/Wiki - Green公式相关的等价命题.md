---
aliases: 
info: 平面保守场
date: 2023-06-26-星期一 11:08
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230626110857
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 

## Pro1

设 $D$ 是平面上单连通区城 [[Wiki - 连通区域]]（即 $D$ 中任意一条简单闭曲线所围成的区域都包含在 D 中), $\vec{v}$ 是定义在 $D$ 上的光滑向量场[[Wiki - 映射的微分]], 则下列三个命题相互等价：

1°向量场 v 在区域内绕任何简单封闭曲线 L 的环量等于零[[Wiki - 向量场的曲线积分]]

$$
\oint_L v\cdot\mathrm{d}\boldsymbol{r}=0
$$

或者说 v 在区城内的曲线积分与路径无关, 因此记连接 $D$ 中任意两点 A, B 的曲线 $L_{AB}$ 上的积分如下

$$
\int_{L_{AB}}v\cdot\mathrm{d}\boldsymbol{r}=\int_{A}^{B}v\cdot\mathrm{d}\boldsymbol{r}
$$

2°向量场 v 是一个函数的梯度场[[Wiki - 梯度]], 即存在一个函数 $\varphi(x,y),$ 使得

$$
v=\operatorname{grad}\varphi(x,y)=\nabla\varphi(x,y)
$$

且这样的函数 $\varphi\left(x,y\right)$ 在相差一个常数意义下是唯一的[[Wiki - 保守场]]

3°向量场 v 的两个分量 $Q,P$ 满足

$$
\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}=0.
$$

4° 对曲线 $L\subset D$, v 沿 L 的积分只与端点 A 、B 有关

### 证明：

1 与 3 等价由格林公式[[Wiki - Green公式]]已知

**先去掉 3，不需要 D 单连通**，也有 124 等价。

2 推 4：

           $$\mathop \smallint \limits_{{L_{AB}}} \nabla f\cdot d\vec r = \mathop \smallint \limits_A^B df = f\left( B \right) - f\left( A \right)$$

4 推 1：

    $$\mathop \oint \limits_L \nabla f\cdot d\vec r = \mathop \oint \limits_L df = f\left( A \right) - f\left( A \right) = 0$$

1 推 4：同端点的两条曲线组成一条环路，再由方向性有一条曲线积分方向反向

4 推 2：

固定点 A，对（x, y)

       $$\begin{array}{*{20}{c}}{f\left( {x,y} \right) = \mathop \smallint \limits_{{L_{AP}}} \vec v\cdot d\vec r}\\{\frac{{\partial f}}{{\partial x}} = \mathop {\lim }\limits_{\Delta x \to 0} \frac{{f\left( {x + \Delta x,y} \right) - f\left( {x,y} \right)}}{{\Delta x}} = \mathop {\lim }\limits_{\Delta x \to 0} \frac{{\mathop \smallint \limits_{{L_{AB}}} \vec v\cdot d\vec r}}{{\Delta x}} = \mathop {\lim }\limits_{\Delta x \to 0} \smallint _0^1p\left( {x + t\Delta x,y} \right)dt = p\left( {x,y} \right)}\end{array}$$

同理对 Q，即证

## Cal1 

推论：加上 D 单连通的可以得 1 与 3 等价