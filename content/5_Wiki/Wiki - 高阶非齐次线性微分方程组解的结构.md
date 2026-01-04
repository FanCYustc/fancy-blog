---
aliases: 
info: 高阶非齐次线性微分方程组解的结构
date: 2023-11-28-星期二 14:41
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/微分方程组
  - 微分方程/ODE
id: wiki20231128144146
banner: "![[astrowalk.gif]]"
---
---

## The 1 

[[Wiki - 高阶线性微分方程解的结构]]
```ad-theorem
title: Theorem 1

设 $\varphi_1(x),...,\varphi_n(x)$ 是高阶齐次线性微分方程 

$$
y^{(n)}(x)+a_{1}(x)y^{(n-1)}(x)+\dots+a_{n-1}(x)y^{(1)}(x)+a_{n}(x)y=0
$$

在区间 $a<x<b$ 上的一个基本解组，则非齐次线性微分方程 
$$
y^{(n)}(x)+a_{1}(x)y^{(n-1)}(x)+\dots+a_{n-1}(x)y^{(1)}(x)+a_{n}(x)y=f(x)
$$

的通解为
$y=C_1\boldsymbol{\varphi}_1(x)+\cdots+C_n\boldsymbol{\varphi}_n(x)+\boldsymbol{\varphi}^*(x)$, 

其中

$$\varphi^{\star}\left(x\right)=\sum_{k\operatorname{=}1}^{n}\varphi_{k}(x)\cdot\int_{x_{0}}^{x}\frac{W_{k}(s)}{W(s)}f(s)ds$$

其中 $W_{k}(x)$ 是 W 朗斯基行列式 第 n 行第 k 列的代数余子式 
```

[[Wiki - 行列式展开]]

[[Wiki - 朗斯基行列式]]

### Proof 

由 [[Wiki - 非齐次线性微分方程组的解的结构]]

只需求
$$
\Phi(x)\int _{x_{0}}^{x} \Phi^{-1}(s)f(s)\, ds 
$$
第一分量就是 $\varphi^{*}(x)$ 因为
$$
f(s)=\begin{pmatrix}
0 \\
0 \\
\vdots \\
0 \\
f(s)
\end{pmatrix}
$$
较为特殊，所以有

$$y^{*}\left.=\int_{x_0}^x\frac{\Phi(x)}{W(s)}\left[\begin{array}{cccc}*&\cdots&*&W_1(s)\\**&\cdots&*&W_2(s)\\\cdots&\cdots&\cdots&\cdots\\**&\cdots&*&W_n(s)\end{array}\right.\right]\left[\begin{array}{c}0\\\vdots\\0\\f(s)\end{array}\right]ds$$

[[Wiki - 逆矩阵的求法]]

$$=\int_{x_{0}}^{x}\frac{f(s)}{W(s)}\begin{pmatrix}\varphi_1(x)&\cdots&\cdots&\varphi_n(x) \\
*&\cdots&\cdots&*\\ 
\cdots&\cdots&\cdots&\cdots\\ 
*&\cdots&\cdots&*\end{pmatrix}\begin{pmatrix}W_1(s)\\\vdots\\\vdots\\W_n(s)\end{pmatrix}ds$$

第一分量即为 $\varphi^{*}(x)$ 的形式



