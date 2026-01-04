---
aliases:
info: 一般数学期望的定义
date: 2023-10-08-星期日 23:09
update:
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/期望方差
  - 概率论/特征
id: wiki20231008230906
banner: "![[astrowalk.gif]]"
---
---

## Def 1 数学期望

```ad-definition
title: Definition 1



设 $(\Omega, \mathcal{F}, P)$ 为概率空间，$X: \Omega \to \mathbb{R}$ 为随机变量，其分布函数为 $F_X (x) = P (X \leq x)$。则 $X$ 的数学期望定义为：

$$
E[X] = \int_\Omega X (\omega) dP (\omega) = \int_{\mathbb{R}} x dF_X (x)
$$

当满足以下可积性条件时称数学期望存在：$E[|X|] = \int_{\mathbb{R}} |x| dF_X (x) < \infty$
```

[[Wiki - 积分变换定理]]

若 $F(x)$ 是随机变量 [[Wiki - 随机变量]] X 的分布函数 [[Wiki - 分布函数]], 则当
$$
\int _{-\infty}^{+\infty}\mid x\mid dF(x) <\infty 
$$

成立时[[Wiki - 无穷积分的绝对收敛与条件收敛]], 称 X 是**一次可积**的, 也称 $X$ 的数学期望存在, 并记

$$
\mathbf{E}X=\int_{-\infty}^{\infty}x\mathrm{d}F(x),\quad\mathbf{E}|X|=\int_{-\infty}^{\infty}|x|\mathrm{d}F(x),
$$
为 X 的**数学期望**和**一次绝对矩**

[[Wiki - Riemann-Stieltjes积分]]

```ad-note

对有概率密度函数的随机变量 X
$$
EX=\int _{-\infty}^{+\infty}xp(x) \, dx 
$$


```

 [[Wiki - 概率密度函数]]

```ad-warning

随机变量的期望不一定都存在

e.g. $p (x)= \frac{1}{\pi(x^{2}+1)}$，称为 **cauchy 分布**，是一个概率密度函数，但是 R-S 积分发散

```
## Def 3 离散随机变量的期望

```ad-definition
title: Definition 3


$n\leq\infty,X$ 的 pmf 为 $\{p_i\}$. 若

$$
\sum_{i=1}^n|a_i|p_i<\infty,
$$
 则 $X$ 的 (数学) 期望存在有限，定义为

$$
\operatorname{E}X=\sum_{i=1}^na_ip_i.
$$


```

[[Wiki - 绝对收敛与条件收敛]]
## Pro 1 另一种期望求法

若 $X\geq 0$，有
$$
EX=\int _{0}^{+\infty} P(X>u)\, du 
$$

### Proof

$$
\int _{0}^{+\infty}  x\, dF(x)=\int _{0}^{1}\int_{0}^{F^{-1}(y)}dxdy =\int _{0}^{+\infty}\int_{x}^{+\infty} \, dF(x)  \, dx 
$$

$$
=\int _{0}^{+\infty}P(X>x) \, dx 
$$

