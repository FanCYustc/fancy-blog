---
aliases: 
info: 梯度，散度，旋度定义和性质
date: 2023-04-06-星期四 22:42
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230406224214
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

[[Wiki - 梯度]]

**Hamilton 算符也就只有梯度，散度，旋度和Laplace算符 4 种算法**

## Def1  散度
$$
 \begin{array}{*{20}{c}}{div\space\vec v = \nabla \cdot\vec v = \left( {\vec i\frac{\partial }{{\partial x}} + \vec j\frac{\partial }{{\partial y}} + \vec k\frac{\partial }{{\partial z}}} \right)\cdot\left( {P\vec i + Q\vec j + R\vec k} \right)}\\ \\
{ = \frac{{\partial P}}{{\partial x}} + \frac{{\partial Q}}{{\partial y}} + \frac{{\partial R}}{{\partial z}}}\end{array}
 $$

## Def2   旋度

向量场的旋度定义如下

$$
\begin{aligned}\operatorname{rot}\boldsymbol{v}&=\nabla\times\boldsymbol{v}\\&=\left(\frac{\partial R}{\partial y}-\frac{\partial Q}{\partial z}\right)\boldsymbol{i}+\left(\frac{\partial P}{\partial z}-\frac{\partial R}{\partial x}\right)\boldsymbol{j}+\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)\boldsymbol{k}.\end{aligned}
$$

因此, 一个向量场的旋度是一个向量场

特别, 类似向量之间的叉乘, 向量场的旋度可以表示成下列行列式[[Wiki - 行列式的定义]]形式

$$
\operatorname{rot}\boldsymbol{v}=\nabla\times\boldsymbol{v}=\begin{vmatrix}\boldsymbol{i}&\boldsymbol{j}&\boldsymbol{k}\\\frac{\partial}{\partial x}&\frac{\partial}{\partial y}&\frac{\partial}{\partial z}\\P&Q&R\end{vmatrix},
$$


**散度、旋度适用于向量值函数；  梯度用于数量场函数**

## Pro1

设 $\phi,\psi$ 是数量场，$\boldsymbol a,\boldsymbol{b}$ 为向量场，则
$$\nabla(\phi+\psi)=\nabla\varphi+\nabla\psi,$$
$$\nabla\cdot(a+b)=\nabla\cdot\boldsymbol{a}+\nabla\cdot\boldsymbol{b},$$
$$\nabla\times(a+b)=\nabla\times a+\nabla\times b,$$
$$\nabla(\phi\psi)=\phi\nabla\psi+\psi\nabla\phi,$$
$$\nabla\cdot(\phi\boldsymbol{a})=\phi\nabla\cdot\boldsymbol{a}+\boldsymbol{a}\cdot\nabla\phi,$$
$$\nabla\cdot(a\times b)=b\cdot\nabla\times a-a\cdot\nabla\times b,$$
$$\nabla\times(\phi\boldsymbol a)=\nabla\phi\times\boldsymbol a+\phi\nabla\times\boldsymbol a.$$
还可以直接验证下列结果

$$\operatorname{rot}\operatorname{grad}\phi=\nabla\times\nabla\phi=\mathbf{0},$$
$$\operatorname{div}\operatorname{rot}\boldsymbol{a}=\nabla\cdot(\nabla\times\boldsymbol{a})=0$$


$\nabla \times (A\times B)=(B\cdot \nabla) A + A (\nabla \cdot B)- (A\cdot \nabla) B - B (\nabla \cdot A)$

Proof：证明最后一个：

$$
\begin{array}{*{20}{c}}{LHS\cdot\vec i = \frac{{\partial \varphi R}}{{\partial y}} - \frac{{\partial \varphi Q}}{{\partial z}} = \frac{{\partial \varphi }}{{\partial y}}R + \varphi  \times \frac{{\partial R}}{{\partial y}} - \frac{{\partial \varphi }}{{\partial z}}Q}\\{ - \varphi  \times \frac{{\partial Q}}{{\partial z}} = \varphi  \times \left( {\frac{{\partial R}}{{\partial y}} - \frac{{\partial Q}}{{\partial z}}} \right) + \left( {\frac{{\partial \varphi }}{{\partial y}}R - \frac{{\partial \varphi }}{{\partial z}}Q} \right)}\\{ = RHS\cdot\vec i}\end{array}
$$

用爱因斯坦求和形式的证明：

[[Wiki - 爱因斯坦求和#例子]]

[[Wiki - 爱因斯坦求和#例子 2]]

## Def3 laplace 算子

$\Delta =\nabla \cdot \nabla=\frac{{\partial^{2}}}{\partial x^{2}}+\frac{{\partial^{2}}}{\partial y^{2}}+\frac{{\partial^{2}}}{\partial z^{2}}$

