---
aliases: 
info: n阶线性微分方程解法
date: 2023-11-23-星期四 10:57
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
  - 微分方程/微分方程组
id: wiki20231123105723
banner: "![[astrowalk.gif]]"
---
---

## SOL 1 高阶线性微分方程

同 [[Wiki - 标准微分方程组]]中的换元方法，n 阶线性微分方程 [[Scientech - 常微分方程-线性微分方程组#6.3 高阶线性微分方程]]可以写成

$$
\frac{d\boldsymbol{y}}{dx}=A(x)\boldsymbol{y}+\boldsymbol{f}(x)
$$
其中
$$y=\begin{pmatrix}y_1\\y_2\\\vdots\\\vdots\\y_n\end{pmatrix}=\begin{pmatrix}
y \\
y' \\
\vdots \\
y^{(n-1)}
\end{pmatrix},\quad f(x)=\begin{pmatrix}0\\0\\\vdots\\0\\f(x)\end{pmatrix}$$


$$
A(x)=\begin{pmatrix}
0& 1& 0& \dots &0 \\
0& 0& 1& \dots &0 \\
\vdots & \vdots & \vdots & &\vdots \\
0& 0& 0& \dots & 1 \\
-a_{n}(x)& -a_{n-1}(x) & -a_{n-2}(x) & \dots &-a_{1}(x)
\end{pmatrix}
$$

[[Wiki - 齐次线性微分方程组解的结构]]


```ad-proposition
title: Propositon 1

则对高阶线性微分方程的解 $\varphi(x)$，其对应线性微分方程组的解
$$
\begin{pmatrix}
\varphi(x) \\
\varphi'(x) \\
\vdots \\
\varphi^{(n-1)}(x)
\end{pmatrix}
$$



```

## Pro 1 线性无关的判别

```ad-proposition
title: Propositon 2

高阶线性微分方程的解 $\varphi_{1}(x),\dots,\varphi_{n}(x)$ 在 $[a,b]$ 上线性无关等价于它们对应的线性微分方程组的朗斯基行列式在 $[a,b]$ 恒不等于 0

```

[[Wiki - 朗斯基行列式]]
## Cal 1 

由 [[Wiki - 刘维尔公式]]可得，由于 A 的特殊性

$$W(x)=W(x_0)e^{-\int_{x_0}^xa_1(s)ds},\quad(a<x<b)$$

即 $tr(A(x))=-a_{1}(x)$ [[Wiki - 矩阵的迹]]


## The 1 高阶线性微分方程解的结构

同 [[Wiki - 齐次线性微分方程组解的结构]]

```ad-theorem
title: Theorem 1

对 n 个线性无关的解 $\varphi_{1}(x),\dots,\varphi_{n}(x)$，齐次 n 阶线性微分方程的通解为

$$
y=c_{1}\varphi_{1}(x)+\dots c_{n}\varphi_{n}(x)
$$




```
 
 [[Wiki - 线性相关和线性无关]]



