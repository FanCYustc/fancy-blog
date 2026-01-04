---
aliases:
  - Arzelà-Ascoli 定理
info: 一致等度连续定义，与一致收敛的关系
date: 2023-08-19-星期六 11:54
update:
tags:
  - wiki/year2023
  - wiki/month08
  - 泛函分析
  - 几何学/度量空间
id: wiki20230819115406
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## Def 1 一致等度连续

M 是列紧空间 [[Wiki - 列紧空间]]， $C(M)$ 为 M 上连续函数的全体 [[Wiki - 函数的连续性]]

```ad-definition
title: Definition 1

定义在 C(M) 上的函数列 $\mathcal{F}= \{f_{n}\}$ 称为**一致等度连续**是指：对任意 $\varepsilon>0$ 存在只与 $\epsilon$ 有关的 $\delta>0$ ，使得当 $|x-y|\leqslant\delta\:(\forall x,y\in D)$ 时

$$
|f_n(x)-f_n(y)|<\varepsilon 
$$

**对任意 n 成立**

```


## The 1 Arzela-Ascoli 定理

```ad-theorem
title: Theorem 1
```
设 $\mathcal{ F} =\{f_{n}\}$ 是定义在列紧空间 M [[Wiki - 列紧空间]]上的连续函数族，则 $\mathcal{F}$ 一致有界、一致等度连续的函数列 [[Wiki - 函数项级数]]，等价于它存在一致收敛子列 [[Wiki - 一致收敛]]，即 $\{f_{n}\}$ 列紧


![[Wiki - 函数项级数的Dirichlet判别法#Def1 一致有界]]


### Proof

1、$\to:$**抽对角线法：**

取 $\{x_{k}\}$ 是定义域的一个**可数稠密子集**（例如有理数全体）[[Wiki - 有理数的稠密性]]
$\{f_{n}\}$ 存在子列 $\{f_{1n}\}s.t.f_{1n}(x_{1})$ 收敛

$\{f_{1n}\}$ 有子列 $\{f_{2n}\}s.t.f_{2n}(x_{2})$ 收敛……

得到 $\{f_{kn}\}$ 在 $x_{1},x_{2},\dots,x_{k}$ 收敛

**取对角线 $f_{11},f_{22},\dots$** 其对 $\forall x_{n}$ 都收敛

证 $\{f_{kk}\}$ 一致收敛：

$\forall\epsilon,\exists\delta,$ when $\mid x-y\mid<\delta,\mid f_{j}(x)-f_{j}(y)\mid<\epsilon$ 由一致等度连续

由紧致集合 [[Wiki - 紧致集合]]，存在开覆盖 $(x_{k}-\delta,x_{k}+\delta)$ 的有限子覆盖，记为 $x_{1},x_{2},\dots x_{r}$

So $\exists N,\forall j,k>N,\mid f_{j}(x_{p})-x_{k}(x_{p})\mid<\epsilon,p=1,2,\dots,r$

由覆盖，$\forall x,\exists x_{p},\mid x-x_{p}\mid<\delta$

$$\begin{array}{rcl}|f_j(x)-f_k(x)|&\leqslant&|f_j(x)-f_j(x_p)|+|f_j(x_p)-f_k(x_p)|+|f_k(x_p)-f_k(x)|\\&\leqslant&\varepsilon+\varepsilon+\varepsilon=3\varepsilon,\end{array}$$


2、$\leftarrow:$ $\mathcal{F}=\{f_{n}\}$ 列紧，所以完全有界 [[Wiki - 度量空间完全有界]]，所以有界，距离 $d (f, 0)=\sup_{x\in M}\|f-g\|$ 有界，所以 $\mathcal{F}$ 一致有界。

下证一致等度连续：由于 $\mathcal{F}$ 列紧，所以 $\forall\epsilon>0$，存在有限 $\frac{\epsilon}{3}-$ 网 $\{\varphi_{1},\dots,\varphi_{m_{\epsilon}}\}=N_{\frac{\epsilon}{3}}\subset \mathcal{F}$。

由于紧集 M 中的连续函数都已一致连续 [[Wiki - 度量空间上的一致连续性]]，所以 $\exists\delta_{k},\rho(x^{'},x^{''})<\delta_{k}\to \mid\varphi_{k}(x^{'})-\varphi_{k}(x^{''})\mid< \frac{\epsilon}{3}$，取 $\delta= \min\{\delta_{1},\dots,\delta_{m}\}$


由 $\frac{\epsilon}{3}-$ 网，$\forall \varphi\in \mathcal{F},\exists \varphi_{k}, d (\varphi,\varphi_{k})< \frac{\epsilon}{3}$，当 $\rho(x^{'},x^{''})<\delta$ 时，$|\varphi (x^{'})- \varphi (x^{''})|\leq |\varphi (x^{'})- \varphi_{k}(x^{'})|+ |\varphi_{k}(x^{'})-\varphi_{k}(x^{''})| + |\varphi(x^{''})-\varphi_{k}(x^{''})|<\epsilon$，所以 $\varphi$ 一致等度连续

## Cal 1 

```ad-theorem
title: Theorem 2

紧致区间一致收敛的连续函数列一定是一致有界和一致等度连续的。

```

[[Wiki - 紧集上连续函数列的一致收敛性]]


## Cal 2

设 $\{f_k\}$ 是定义在紧致区间上的可导函数列且 $|f_k(x)|\leqslant M,$ $|f_k^{\prime}(x)|\leqslant M$ 对任意 $k$ 和 $x$ 成立, 则它存在一致收敛的子列.
