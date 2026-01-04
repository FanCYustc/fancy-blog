---
aliases: ["条件极值"]
info: "拉格朗日乘数法求条件极值"
date: 2023-04-06-星期四 22:24
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230406222434
banner: "![[astrowalk.gif]]"
banner_y: 0.5
---
#数学分析/多变量微积分 

对限制在 $L:\phi(x,y)=0$ 上的 $f(x,y)$ 的极值，存在隐函数 y=y (x)，
$\frac{{df(x,y(x))}}{dx}=f_{x}-f_{y} \frac{{\phi_{x}}}{\phi_{y}}=0$
$\leftrightarrow \nabla f \parallel \nabla \phi$

[[Wiki - 隐式曲线和曲面]]

[[Wiki - 梯度]]

## Pro1
构造 $F(x,y,\lambda)=f(x,y)+\lambda \phi(x,y)$

求解 $(x_{0},y_{0})$ 满足 
$$
F_{x}(x_{0},y_{0})=0;F_{y}(x_{0},y_{0})=0;\phi(x_{0},y_{0})=0
$$
即为 f 在 L 下的条件极值（拉格朗日乘数法）

对于一般的 n 元，构造 $F(x_{1},\cdots,x_{n})=f(x_{1},\cdots,x_{n})+\lambda \phi(x_{1},\cdots,x_{n})$
解方程$$
\frac{{\partial F}}{\partial x_{i}}=0;\phi(P_{0})=0
$$
[[Wiki - 偏导]]

## the 1 一般的拉格朗日乘数法

```ad-theorem
title: Theorem 1

设$W$是$\mathbb{R}^n$的开集，$f$是定义在$W$上的$C^{1}$**函数**，$G=$ $(g_1,\cdots,g_m):W\to\mathbb{R}^m$是$C^1$映射，$x^0\in W,\quad G(x^0)=0\quad rankG_{x^0}=m$.如果$x^{0}$是函数$f$限制在集合

$$
M=\{x\in W\mid G(x)=0\}
$$

上的极值点，则存在$\lambda=(\lambda_1,\cdots,\lambda_m)\in\mathbb{R}^m\text{,}x^0$是函数

$$
H(x,\:\lambda)=f(x)+\langle\lambda,\:G(x)\rangle=f(x)+\left(\lambda_1g_1(x)+\cdots+\lambda_mg_m(x)\right)
$$

的驻点.

```

[[Wiki - 度量空间的开集闭集]]

[[Wiki - 映射的秩定理]]

[[Wiki - 多变量函数极值的判断]]