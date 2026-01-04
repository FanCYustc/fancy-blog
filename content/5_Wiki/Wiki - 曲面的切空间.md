---
aliases: 
info: 曲面切空间的定义和性质
date: 2023-12-12-星期二 10:17
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 几何学
  - 数学分析/微分
  - 数学分析/曲线积分和曲面积分
id: wiki20231212101721
banner: "![[astrowalk.gif]]"
---
---

## Def 1 曲面的切空间

```ad-definition
title: Definition 1

设 $M\subset\mathbb{R}^n$ 是一个 $m$ 维曲面，$x^0\in M$. 曲面在点 $x^{0}$ 的切平面 (切空间) 定义为

$$
T_{x^0}M=\{M\textit{上过点}x^0\textit{的C}^1\text{曲线在点}x^0\text{的切向量}\}.
$$


```

[[Wiki - 高维曲面]]

一般的 M 若为 $C^{1}$ 曲面，是映射 $\Phi$ 的图，则对任意 M 上的曲线 $\gamma(t),\gamma(0)=x^{0}$，有切向量

$$\left.\frac{\mathrm d}{\mathrm dt}\right|_{t=0}^{\mathrm d\iota}\bigl(\gamma(t),\Phi\circ\gamma(t)\bigr)=\bigl(\gamma'(0),\mathrm d\Phi_{\gamma(0)}(\gamma'(0)\bigr).$$

由于 $\gamma$ 任取，所以切空间可以表示为

$$T_{x^0}M=\{(v,\text{d}\Phi_{x^0}(v))\quad|\quad v\in\mathbb{R}^m\}.$$


## Pro 1 

```ad-proposition
title: Propositon 1

将切空间上的向量定义为以 $x^{0}$ 为起点的向量，则切空间为线性空间 
```

[[Wiki - 一般线性空间]]

## Pro 2 切空间的求法

对于一个约束的，有
设 $f:U(\subset\mathbb{R}^n)\to\mathbb{R}$ 是一个 $C^k$ 函数，$|$ d $f|= |\nabla f|\neq0$. 设 $x^0\in U$, 

$$
S(f)=\{x\in U\quad|\quad f(x)=f(x^0)\}
$$
所以对 $S(f)$ 内的曲线 $\gamma(t)$，求导得

$$\begin{gathered}
\text{0} =\frac{\mathrm{d}}{\mathrm{d}t}f\circ\gamma(t)=\frac{\mathrm{d}}{\mathrm{d}t}f(x_1(t),\cdots,x_n(t)) \\
=\sum_{j=1}^n\frac{\partial f}{\partial x_j}\frac{\mathrm{d}x_j(t)}{\mathrm{d}t}=\langle\nabla f\Big|_{\gamma(t)},\gamma^{\prime}(t)\rangle, 
\end{gathered}$$
由于 $\gamma$ 任取，有切空间为
$$T_xS(f)=\{\boldsymbol{v}\in\mathbb{R}^n\quad|\quad\langle\boldsymbol{v},\nabla f(x)\rangle=0\}.$$
[[Wiki - 梯度]]




对于一般由方程组约束得到的切空间，有

```ad-proposition
title: Propositon 2

设 $F=(f_1,\cdots,f_{n-m}):W\subset\mathbb{R}^n\to\mathbb{R}^{n-m}$ 是一个 $C^k$ 映射，$rankF= n-m$. 则 $m$ 维曲面

$$
M=\{x\in\mathbb{R}^n\quad|\quad F(x)=0\}
$$
的切空间为
$$
T_xM=\{v\in\mathbb{R}^n\quad|\quad dF_x(\boldsymbol{v})=0\}.
$$

```

[[Wiki - 映射的微分]]

### proof

设 $\gamma(t)$ 是 $M$ 上的一条曲线，则 $F\circ\gamma(t)=0$. 对 $t$ 求导可得

$$
\frac{\mathrm{d}}{\mathrm{d}t}F\circ\gamma(t)=\mathrm{d}F_{\gamma(t)}(\gamma^{\prime}(t))=0.
$$

从切空间的定义可以看出，如果 $v\in T_xM$, 则  $dF_x( v) = 0$. 又因为 $\dim T_xM=m,\mathbb{R}^n$ 的子空间 $\{ v\in \mathbb{R} ^n\mid dF_x ( v) = 0\}$ 的维数 [[Wiki - 映射的秩定理]] $= n- rank \space d F_x= m$, 所以

$$
T_xM=\{v\in\mathbb{R}^n\quad{\rm d}F_x(v)=0\}.
$$


