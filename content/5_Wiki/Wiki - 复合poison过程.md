---
aliases: 
info: 
date: 2024-04-15-星期一 21:56
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/poison过程
  - wiki/month03
id: wiki20240415215616
banner: "![[astrowalk.gif]]"
---
---

## Def  1 符合 poison 过程

```ad-definition
title: Definition 1

$$
\begin{aligned}&\left\{S(t),t\geq0\right\}\text{称为复合 Poisson 过程,若 }S(t)\text{ 可表示为}\\
&S(t)=\sum_{n=0}^{N(t)}X_{n}\\
(1)&\left\{N(t),t\geq0\right\}\text{为 HPP}(\lambda);\\
(2)&\left\{X,X_{n},n\geq1\right\}\mathrm{iid}\sim F;\\
(3)&{\{X_{n},n\geq1\}\text{ 独立于 }\{N(t),t\geq0\}.}
\end{aligned}
$$

```

[[Wiki - poison过程]]


## Pro  1

```ad-proposition
title: Propositon 1

1、复合 poison 过程具有独立增量和平稳增量性质

2、$E[S (t)]=\lambda t\cdot EX; Var[S (t)]=\lambda t\cdot EX^{2}$


```

### Proof

对 $N(t)$ 取条件求条件期望和条件方差即可 [[Wiki - 条件期望]] [[Wiki - 条件方差]]

## Pro 2 复合 poison 恒等式

```ad-proposition
title: Propositon 2

复合 Poisson 随机变量：$W= \sum _{j= 1}^NX_j, \quad N\sim Poi( \lambda)$ , $X_1\sim F$。 设$X\sim F$,与其他都独立，$X\bot W$, 则 $\forall h(t).$，
$$
\mathbb{E}\left[Wh(W)\right]=\lambda\cdot\mathbb{E}\left[Xh(W+X)\right]
$$

```

## Cal 1

其他条件同 Pro 3，设 $X\sim F$, 则对任意正整数 $n$,

$$
\operatorname{E}\left[W^n\right]=\lambda\sum_{j=0}^{n-1}\binom{n-1}j\operatorname{E}\left[W^j\right]\cdot\operatorname{E}\left[X^{n-j}\right].
$$
## Cal 2 

X 为正整值离散分布时，由 Pro 3 可以构造递推

复合 Poisson 随机变量$W= \sum _{j= 1}^NX_j, \quad N\sim Poi ( \lambda) , \quad X_1\sim F, X_1$ 为正整值随机变量. 定义

$$
\alpha_i=\mathcal{P}(X_1=i),\quad P_j=\mathcal{P}(W=j),\quad i\geq1,\mathrm{~}j\geq0.
$$

$$
P_0=e^{-\lambda},\quad P_n=\frac\lambda n\sum_{j=1}^nj\alpha_jP_{n-j},\quad n\geq1.
$$

### Proof

$$\begin{aligned}
\text{设 }&n\geq1取 h(x)=\frac{1}{n}\cdot\mathbb{1}_{{\{n\}}}(x)\text{,则}\\P_{n}&=\lambda\operatorname{E}\left[X\left(W+X\right)\right]=\lambda\operatorname{E}\left\{\operatorname{E}\left[X\left(W+X\right)|X\right]\right\}\\&=\quad\sum_{j=0}^{n}\lambda\alpha_{j}\operatorname{E}\left[j\cdot h(W+j)\right]=\operatorname{RHS.}
\end{aligned}$$

