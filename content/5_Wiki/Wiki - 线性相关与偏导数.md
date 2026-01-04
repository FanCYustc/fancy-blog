---
aliases: functional dependence
info: 用线性相关判断函数的性质
date: 2023-05-28-星期日 17:40
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230528174021
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 
#线性代数/线性空间 

## Def1 Functional dependence

For a system of continuous functions [[Wiki - 度量空间的连续映射]] $f_{i}:\mathbb{R}^{m}\to \mathbb{R}$ , i=1, 2... n .
称 $f_{1},f_{2}\dots f_{n}$ 是 **functional dependent** in $\vec{x_{0}}$ 邻域 [[Wiki - 度量空间的开集闭集#Definition1]] if 对任何连续函数 $F:\mathbb{R}^{n}\to \mathbb{R}$ , the relation 

$$
F(f_{1}(x_{1},x_{2}\dots x_{m}),f_{2}(x_{1}\dots x_{m}),\dots,f_{n}(x_{1}\dots x_{m}))\equiv 0
$$
Is possible at all points in $\vec{x_{0}}$ 邻域当且仅当 $F\equiv 0$ 在 $\vec{y_{0}}=(f_{1}(\vec{x_{0}}),\dots,f_{n}(\vec{x_{0}}))$ 的邻域里

## Pro1

Proposition 1 f a system $f^{i}(x^{1},\ldots,x^{m})$ $(i=1,\ldots,n)$ of smooth functions de fined on a neighborhood $U\left(x_{0}\right)$ of the point $x_0\in\mathbb{R}^{m}$ is such that the rank [[Wiki - 矩阵的秩]] of the matrix

$$\begin{pmatrix}\frac{\partial f^1}{\partial x^1}&\cdots&\frac{\partial f^1}{\partial x^m}\\ \vdots&\ddots&\vdots\\ \frac{\partial f^n}{\partial x^1}&\cdots&\frac{\partial f^n}{\partial x^m}\end{pmatrix}(x)$$

is equal to the same numberk at every point $x\in U$ . then

[[Wiki - 极大线性无关组与秩]]
a) when $k=n$ , the system is functionally independent in aneighborhood of xo; 
b) when $k<n$ , there exist a neighborhood of $x_{0}$ and k functions of the system, say $f^{1},\ldots,f^{k}$ such that the other $n-k$ functions can be represented as

$$
f^i(x^1,\ldots,x^m)=g^i(f^1(x^1,\ldots,x^m),\ldots,f^k(x^1,\ldots,x^m))
$$
即维数是多少（有多少个独立函数）[[Wiki - 基和维数]] 


