---
aliases: 
info: 
date: 2023-11-30-星期四 08:47
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 数学分析/微分
id: wiki20231130084736
banner: "![[astrowalk.gif]]"
---
---

在值域为高维的情况下，不一定存在微分中值定理

先讨论仅值域为高维的情况：

## Pro 1

```ad-proposition
title: Propositon 1

设 $f$ 是区间 $[a,b]$ 到 $\mathbb{R}^m$ 的连续映射，且 $f$ 在 $(a,b)$ 上可微 。那么存在 $t_0\in (a,\:b)$ 使得

$$
\|f(b)-f(a)\|\leqslant(b-a)\:\|f^{\prime}(t_0)\|.
$$


```

[[Wiki - 函数的连续性]]
### Proof

降维成一维的情况：令 $z=f(b)-f(a)$， 构造

$$
\varphi(t)=\langle z,~f(t)\rangle,~t\in[a,~b].
$$

那么 $\varphi$ 是在 $[a,b]$ 上连续、在 $(a,b)$ 内可微的**实值函数**. 由中值定理 [[Wiki - 微分中值定理]]知存在 $t_0\in(a,b)$,

$$
\varphi(b)-\varphi(a)=(b-a)\varphi'(t_0)=(b-a)\langle z,\:f'(t_0)\rangle.
$$

另一方面，

$$
\begin{aligned}\varphi(b)-\varphi(a)&=\langle z,\:f(b)\rangle-\langle z,\:f(a)\rangle=\langle z,\:z\rangle=\|z\|^{2}\end{aligned}
$$
由 [[Wiki - Cauchy-Schwarz不等式]]，有

$$
\|z\|^{2}= (b-a)\langle z,f'(t_{0})\rangle\leq(b-a) \|z\|\| f'(t_{0})\|
$$

其实就是利用 [[Wiki - 线性映射的范数]]

## The 1 拟微分中值定理


```ad-theorem
title: Theorem 1

设 $E$ 是 $\mathbb{R}^n$ 的**凸开集**，$f:E\to\mathbb{R}^m$ 是可微映射，那么存在 $\xi\in E$, 使得

$$
|f(y)-f(x)|\leqslant\|\text{d}f(\xi)\||y-x|=\|Jf(\xi)\||y-x|,\:\forall x,\:y\in E.
$$

特别，如果存在实数 $M$ 满足 $\|$ d $f( x) \|\leqslant M, \forall x\in E$. 则

$$
|f(x)-f(y)|\leqslant M|x-y|,\:\forall x,\:y\in E.
$$


```

[[Wiki - 度量空间的开集闭集#Definition 2 开集]]

[[Wiki - 映射的微分]]

### Proof

向一维时的结论化归：

固定 $x,y\in E$, 定义 $\gamma(t)=(1-t)x+ty$. 因为 E 是凸集，当 $0\leqslant t\leqslant1$ 时 $\gamma(t)\in E$, 因此

$$
\begin{aligned}g(t)=f(\gamma(t)):[0,\:1]\to\mathbb{R}^m,\end{aligned}
$$

在 $[0, 1]$ 上连续，在 $(0, 1)$ 内可微，由复合映射微分 [[Wiki - 复合映射的微分]]的链式法则可推出

$$
\mathrm{d}g_t=\mathrm{d}f_{\gamma(t)}\circ\mathrm{d}\gamma_t,
$$

根据 Pro1 可知，存在 $\tau\in(0,\:1)$, 使得

$$
|g(1)-g(0)|\leqslant(1-0)|g'(\tau)|=|g'(\tau)|=\mid\mid dg_{\tau}\mid\mid
$$

带回得 $\xi=(1-\tau) x+\tau y\in E$，

$$
|f(y)-f(x)|\leq\mid\mid dg_{\tau}\mid\mid\leq\mid\mid df_{\xi}\mid\mid \cdot\mid \varphi'(t)|=\mid\mid Jf_{\xi}\mid\mid \cdot|y-x|
$$

