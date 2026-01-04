---
aliases: 
info: 隐映射定理
date: 2023-12-05-星期二 09:58
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数学分析/微分
id: wiki20231205095811
banner: "![[astrowalk.gif]]"
---
 ---

[[Wiki - 隐函数存在定理]]

首先考虑线性映射的情形. 设线性映射

$$
\mathcal{A}\in L(\mathbb{R}^{n+m},\mathbb{R}^m),
$$
 对于 $h\in\mathbb{R}^n,\:k\in\mathbb{R}^m$, 因为 $(h,k)=(h,0)+(0,k)$, 所以

$$
\mathcal{A}(h,k)=\mathcal{A}(h,0)+\mathcal{A}(0,k).
$$

也就是说 $A$ 可以分解成线性映射 $\mathcal{A} _x\in L ( \mathbb{R} ^n, \mathbb{R} ^m)$ 与线性映射$\mathcal{A}_y\in L (\mathbb{R}^m)$之和

这里 $A_x$ 和 $A_y$ 的具体定义为

$$
\mathcal{A}_x(h)=\mathcal{A}(h,0),\quad h\in\mathbb{R}^n;\quad\mathcal{A}_y(k)=\mathcal{A}(0,k),\quad k\in\mathbb{R}^m,
$$

如果线性变换 $A_y$ 可逆，那么对任意 $h\in\mathbb{R}^n$, 方程 $A(h,k)=A_xh+A_yk=0$ 有唯一解

$$
k=-(\mathcal{A}_y)^{-1}\mathcal{A}_x(h).
$$

或者说方程 $\mathcal{A}=0$ 的解是一个线性映射

$$
-(\mathcal{A}_y)^{-1}\mathcal{A}_x:\mathbb{R}^n\to\mathbb{R}^m.
$$

对于一般的映射 f，取微分 [[Wiki - 映射的微分]]化成线性映射[[Wiki - 线性映射]]
$$
df(P)(h,k)=df_{x}(P)(h)+df_{y}(P)(k)
$$

就有如下定理：

## The 1 隐映射定理

```ad-theorem
title: Theorem 1

设 $f$ 是从 $\mathbb{R}^{n+m}$ 的开集  $M$ 到 $\mathbb{R}^m$ 的 $C^1$ 映射，且 $(x^0,y^0)\in$ $M$ 满足 $f(x^0,y^0)=0$. 记 $\mathcal{A} = df ( x^0, y^0)$ , 如果 $\mathcal{A}_y\in L (\mathbb{R}^m)$ 可逆，那么存在 $(x^0, y^0)$ 的一个邻域 $U\subset M,\quad x^0$ 的邻域 $W\subset\mathbb{R}^n$, 满足如下性质：

1. 对任意 $x\in W$, 存在唯一 $y$, 使得 $(x,y)\in U$ 且 $f(x,y)=0;$ 
2. 若把这个 $y$ 定义为 $\varphi(x)$, 那么映射 $\varphi:W\to\mathbb{R}^m$ 是 $C^1$ 映射，满足 $\varphi(x^0)=y^0$,

$$
f\big(x,\:\varphi(x)\big)=0,\quad\forall x\in W,
$$

并且

$$
\mathrm{d}\varphi(x)=-\Big(\mathrm{d}f_y(x,\varphi(x))\Big)^{-1}\circ\mathrm{d}f_x\big(x,\varphi(x)\big).
$$


```

[[Wiki - 度量空间的开集闭集]]

[[Wiki - 可逆线性映射]]

[[Wiki - 逆映射定理]]

### Proof

对 m 归纳：

$m=1$ 时有

$$
J_{y}f= \frac{{\partial f}}{\partial y}\neq 0
$$
[[Wiki - 雅各比矩阵]]

不妨设 $f_{y}(x^{0},y_{0})>0$ 由连续性，存在邻域 $U=B_{\delta_{1}}(x^{0})\times(y_{0}-\delta_{2},y_{o}+\delta_{2})$
满足
$$
1、\frac{{\partial f}}{\partial y}|_{U}>0
$$
2、由于现在就会有 $f(x^{0},y_{0}+\delta_{2})>0，f(x^{0},y_{0}-\delta_{2})<0$，所以有 $B_{\delta_{1}}(x^{0})$，有 $f (x, y_{0}+\delta_{2})>0, f (x, y_{0}-\delta_{2})<0,\forall x\in B_{\delta_{1}}(x^{0})$

现在有单调和介值定理 [[Wiki - 连续函数的介值定理]]，$\forall x\in B_{\delta_{1}}(x^{0})$ 有唯一的 y s. t. $f(x,y)=0$





假设 m-1 成立，对 m，不妨设 $\frac {{\partial f_{m}} } {{\partial y_{m}} }|_{(x^{0}, y^{0})}\neq 0$

同 m=1 步骤，在 $(x^{0},y^{0})$ 附近有 $y_{m}=\varphi_{m}(x_{1},\dots x_{n},y_{1},\dots ,y_{m-1})=\varphi_{m}(x,\hat{y})$

令 $g_{j}=f_{j}(x,\hat{y},\varphi_{m}(x,\hat{y})),j=1,\dots,m-1$

令 $G(x,\hat{y})=(g_{1}(x,\hat{y}),\dots,g_{m-1}(x,\hat{y}))$，有 $G(x^{0},\hat{y}^{0})=0,J_{\hat{y}}G|_{(x^{0},\hat{y}^{0})}可逆$

有归纳假设，$G=0$ 有解 $\hat{y}=\hat{\varphi}(x)$

所以 $y=(\hat{\varphi(x)},\varphi_{m}(x,\hat{\varphi(x)}))=\varphi(x)$ 是 $F(x,y)=0$ 的解

