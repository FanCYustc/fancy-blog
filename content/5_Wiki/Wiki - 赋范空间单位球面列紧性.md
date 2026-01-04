---
aliases:
  - riesz引理
info: 
date: 2024-12-18-星期三 20:19
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 几何学/赋范空间
id: wiki20241218201947
banner: "![[astrowalk.gif]]"
---
---

## The 1 单位球面列紧性

赋范空间 [[Wiki - 赋范空间]]上的单位球面是列紧的 [[Wiki - 列紧空间]]，等价于维数有限 [[Wiki - 基和维数]]

### Proof

- 对有限维单位球面，其同构于 $\mathbb{K}^{n}$ 上的单位球面（有界），故列紧。

- 对于无限维单位球面，想要证明不列紧，需要 Riesz 引理：

```ad-lemma

赋范空间 $(X,||\cdot||)$, $(Y,||\cdot||)$ 是 $X$ 的闭子空间，$Y\neq X$, 则 $\forall\varepsilon>0$, $\exists e\in X$ with $||e||=1$, 使得

$$\operatorname{dist}(e,Y):=\inf_{y\in Y}||e-y||\geqslant1-\varepsilon $$

```

引理的证明：取 $x\in X\backslash Y$, 令

$$d=\operatorname{dist}(x,y)=\inf_{y\in Y}||x-y||$$

$Y$ 是闭集，$d>0$, 且存在 $y_0\in Y$ 使得

$$d\leqslant||x-y_0||\leqslant\frac{d}{1-\varepsilon}$$

令

$$e\stackrel{\text{def}}{=}\frac{x-y_0}{||x-y_0||}\Rightarrow||e||=1,e\notin Y$$

$\forall\zeta\in Y$,

$$\begin{aligned}||e-\zeta||&=||\frac{x-y_0}{||x-y_0||}-\zeta||\\&=\frac1{||x-y_0||}\cdot||x-(y_0+||x-y_0||\zeta)||\\&\geqslant\frac{1-\varepsilon}d\cdot d=1-\varepsilon\end{aligned}$$

所以 dist $(e,Y)\geqslant1-\varepsilon.$

有了引理之后，对于无限维单位球面，存在线性无关 [[Wiki - 线性相关和线性无关]]的基 $\{e_{n}\}^{\infty}_{n=1}$ [[Wiki - Hamel基]]

取 $X_{n} = <e_{1},\dots, e_{n} >$ 为 X 的子空间，且 $X_{n-1}\subseteq X_{n}$ 。由引理，存在 $x_{n}\in X_{n}$ s.t. $dist (x_{n}, X_{n-1})\geq \frac{1}{2}$

这就意味着 $d (x_{n}, x_{m})\geq \frac{1}{2}, \forall m\neq n$，所以 $\{x_{n}\}$ 没有收敛子列