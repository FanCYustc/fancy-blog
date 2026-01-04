---
aliases: 
info: 平均收敛的定义
date: 2023-11-30-星期四 14:28
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/极限理论
  - 收敛
id: wiki20231130142815
banner: "![[astrowalk.gif]]"
---
---

## Def 1 平均收敛

```ad-definition
title: Definition 1

如果随机变量 $X, X_n\in L_r,$ 其中$r> 0$, 并且

$$
\mathbf{E}|X_n-X|^r\to0,
$$

则称随机变量序列 $\{X_n,\:n\in\mathbb{N}\}$ **依 $r$ 阶平均收敛到**随机变量 $X$ , 或称为 $L_r$ 收敛到随机变量 $X$, 记作 $X_n\overset{L_r}{\operatorname*{\to}}X$. 当 $r=1$ 时，简称为**依平均收敛**，并记为 $X_n\overset{L}{\operatorname*{\to}}X.$

```
[[Wiki - 随机变量的矩]]

通常平均收敛特指 r=1 的时候，是 [[Wiki - Lp收敛]] 的特例
## Pro1 一定有依概率收敛

```ad-proposition
title: Propositon 1
```
$L_r$收敛一定有依概率收敛 [[Wiki - 依概率收敛]]



### Proof

$\forall \epsilon>0$，由 [[Wiki - Chebyshev不等式]]，有

$$
P(|X_{n}-X|>\epsilon)\leq \frac{{E|X_{n}-X|^{r}}}{\epsilon^{r}}\to 0(n\to +\infty)
$$



依概率收敛但不平均收敛的反例：值大的地方概率小，但值足够大使得期望还是较大。

```ad-example
title: Example 1

$$\left.X_n(\omega)=\left\{\begin{array}{cc}n,&\omega\in\left(0,\dfrac{1}{n}\right),\\0,&\omega\in\left[\dfrac{1}{n},1\right).\end{array}\right.\right.$$

令 $X(\omega)=0$， $P (|X_{n}-X|>\epsilon)\leq P (|X_{n}-X|>0)= \frac{1}{n}\to 0$

依概率收敛，但 $E|X_{n}-X|=1$ 不平均收敛


```
## Pro 1 

```ad-proposition
title: Propositon 1

$$\text{对 }\forall X\in\mathcal{L}_r,\text{ 存在离散 r}v\text{ 序列 }\{X_n\}\text{,使得 }X_n\xrightarrow{\mathcal{L}_r}X.$$

```

### Proof

构造
$$\begin{aligned}&X_n=\sum_{k=-\infty}^\infty\frac{k-1}{2^n}\cdot I\left(\frac{k-1}{2^n}\leq X<\frac k{2^n}\right),\quad n\geq1,\\&\text{则 }|X_n-X|<1/2^n,\cdot\cdot\cdot\cdot\cdot\cdot.\end{aligned}$$

平均收敛于 X