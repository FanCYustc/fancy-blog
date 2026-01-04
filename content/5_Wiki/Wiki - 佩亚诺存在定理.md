---
aliases:
info:
date: 2023-10-10-星期二 15:00
update:
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231010150031
banner: "![[astrowalk.gif]]"
---
---

首先 [[Wiki - Euler折线]]是一致有界[[Wiki - 函数项级数的Dirichlet判别法|一致有界]] $\mid \varphi_{n}(x)-y_{0}\mid\leq b$

且等度连续 [[Wiki - 一致等度连续]] $\mid \varphi_{n}(x_{1})-\varphi_{n}(x_{2})\mid\leq M\mid x_{1}-x_{2}\mid$

由 [[Wiki - 一致等度连续|阿斯科利引理]] $\{\varphi_{n}(x)\}$ 有一致收敛子列 [[Wiki - 一致收敛]]

## The 1 佩亚诺存在定理

```ad-theorem
title: Theorem 1

设函数 $f(x,y)$ 在矩形区域 $R:[x_0-a,x_0+a]\times[y_0-b,y_0+b]$ 内连续, 则初值问题

$$
\left(\mathbf{E}\right): \frac{dy}{dx}=f(x,y),\quad y(x_{0})=y_{0},
$$
在 $\mid x-x_{0}\mid\leq h$ 至少有一个解
定义同cauchy初值定理，$h=\min \{a, b/M\}$


```

[[Wiki - cauchy初值定理]]
### Lemma 1


```ad-lemma
title: Lemma 2

欧拉折线 $y=\varphi_n(x)$ 在区间 $|x-x_0|\leqslant h$ 上满足关系式

$$
\varphi_{n}(x)\:=\:y_{0}\:+\:\int_{x_{0}}^{x}f\left(x\:,\varphi_{n}(x)\right)dx\:+\:\delta_{n}(x)
$$
其中 $\lim_{ n \to \infty }\delta_{n}(x)=0$


```
#### Proof
$$
\varphi_n(x)=y_0+\int_{x_0}^{x}f(x,\varphi_n(x))dx+\sum_{i=0}^{s-1}d_n(i)+d_n^*(x)$$

$$d_{n}(i)=\int_{x_{i}}^{x_{i+1}}[f(x_{i},y_{i})-f(x,\varphi_{n}(x))]dx$$

$$d_{n}^{*}(x)=\int_{x_{s}}^{x}[f(x_{s},y_{s})-f(x,\varphi_{n}(x))]dx$$

由 f 的连续性，$\forall\epsilon>0,\exists N,n>N时$

$$\begin{aligned}|d_n(i)|&\leqslant\int_{x_i}^{x_{i+1}}|f(x_i,y_i)-f(x,\varphi_n(x))|dx\\\\&<\int_{x_i}^{x_{i+1}}\frac \epsilon hdx=\frac\varepsilon n,\end{aligned}$$
$$
\mid d_{n}^{*}(x)\mid< \frac{\epsilon}{n}
$$
$$
\to \lim_{ n \to \infty }\delta_{n}(x)=0 
$$


所以欧拉折线存在一致收敛子序列 $\lim_{ k \to \infty }\varphi_{n_{k}}(x)=\varphi(x)$

As lemma 1,
$$\varphi_{n_{k}}(x)=y_{0}+\int_{x_{0}}^{x}f(x,\varphi_{n_{k}}(x))dx+\delta_{n_{k}}(x)$$

$k\to \infty$ 有
$$\varphi(x)=y_{0}+\int_{x_{0}}^{x}f(x,\varphi(x))dx,\quad(\mid x-x_{0}\mid\leqslant h)$$

是 E 的解