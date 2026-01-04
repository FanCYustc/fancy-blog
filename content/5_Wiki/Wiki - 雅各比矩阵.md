---
aliases:
  - jacobi行列式
info: 一般情况向量函数的偏导
date: 2023-03-12-星期日 16:27
update: 
tags:
  - wiki/year2023
  - wiki/month03
  - 数学分析/微分
id: wiki20230312162710
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Def1

对 mapping f: $\mathbb{R}^n\to \mathbb{R}^m$

有

$$
L(h)=\left(\begin{array}{c}
L^{1}(h) \\
\vdots \\
L^{n}(h)
\end{array}\right)=\left(\begin{array}{ccc}
a_{1}^{1} & \cdots & a_{m}^{1} \\
\vdots & \ddots & \vdots \\
a_{1}^{n} & \cdots & a_{m}^{n}
\end{array}\right)\left(\begin{array}{c}
h^{1} \\
\vdots \\
h^{m}
\end{array}\right) .
$$
J（f）称为**雅各比矩阵.**


在函数的微分中，
$$ \mathrm{d} \boldsymbol{f}(\boldsymbol{x}) = (\mathrm{d} f_{1}(\boldsymbol{x}),\cdots,\mathrm{d} f_{m}(\boldsymbol{x})). $$ 
利用 $n$ 元函数微分的规则 [[Wiki - 偏导]] 

$$ \mathrm{d} f_{j} = \sum_{i = 1}^{n} \frac{\partial f_{j}}{\partial x_{i}} \mathrm{d} x_{i}, j = 1,2,\cdots,m. $$

并利用线性代数中关于矩阵的运算 [[Wiki - 映射的微分]]，我们有 

$$ \begin{pmatrix} \mathrm{d} f_{1} \\ \vdots \\ \mathrm{d} f_{n} \end{pmatrix} = \begin{pmatrix} \frac{\partial y_{1}}{\partial x_{1}} & \cdots & \frac{\partial y_{1}}{\partial x_{n}} \\ \vdots & & \vdots \\ \frac{\partial y_{m}}{\partial x_{1}} & \cdots & \frac{\partial y_{m}}{\partial x_{n}} \end{pmatrix} \begin{pmatrix} \mathrm{d} x_{1} \\ \vdots \\ \mathrm{d} x_{n} \end{pmatrix}. $$


该系数矩阵称为**雅各比矩阵**

## Def 2 jacobi 行列式

```ad-definition
title: Definition 2

若 jacobi 矩阵为方阵时，矩阵的行列式称为 **Jacobi 行列式**

```
 

[[Wiki - 可逆线性映射]]的 jacobi 行列式不为 0