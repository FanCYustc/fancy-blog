---
aliases: 
info: 三大分布的统计学意义
date: 2023-11-27-星期一 21:08
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 数理统计
  - 概率论/概率分布
id: wiki20231127210800
banner: "![[astrowalk.gif]]"
---
 ---

[[Wiki - 卡方分布]] 

[[Wiki - t分布]] 

[[Wiki - F分布]]


先定义两个量
$$\begin{aligned}\text{设 }&X_1,X_2,\ldots,X_n\mathrm{~iid}\sim N(\mu,\sigma^2)\text{,记}\\&\overline{X}=\frac1n\sum_{k=1}^nX_k,\quad S_X^2=\frac1{n-1}\sum_{k=1}^n(X_k-\overline{X})^2,\end{aligned}$$
[[Wiki - 正态分布]]

现需要一个引理

## Lemma 1 

```ad-lemma
title: Lemma 1

对满足上面条件的 $X_{1},\dots,X_{n}$，有 $\overline{X}\sim N(\mu,\sigma^{2})$，且 $\overline{X},S_{X}^{2}$
相互独立

```

[[Wiki - 随机变量的独立性]]

### Proof

取第一行为 $\left( \frac{1}{\sqrt{ n }},\dots, \frac{1}{\sqrt{ n }} \right)$ 的正交方阵 [[Wiki - 正交矩阵]] O 做变换

$$
\begin{pmatrix}
Y_{1} \\
Y_{2} \\
\vdots \\
Y_{n}
\end{pmatrix}=O\begin{pmatrix}
X_{1} \\
X_{2} \\
\vdots \\
X_{n}
\end{pmatrix}
$$
有 $Y_{1}=\sqrt{ n }\overline{X}$

且由密度变换公式知 $\mid O\mid=1$，[[Wiki - 随机向量的函数]]

$$
q(y_{1},\dots,y_{n})=\frac{1}{(\sqrt{ 2\pi }\sigma)^{n}}\exp\left\{ - \frac{1}{2\sigma^{2}}\left( \sum_{k=1}^{n}y_{k}^{2}-2a\sqrt{ n }y_{1}+n\mu^{2} \right) \right\}
$$

由于可分离变量，所以相互独立

所以 $Y_{1}$ 和 $\sum_{k=2}^{n}Y_{k}^{2}$ 独立 [[Wiki - 随机变量的独立性]]

$$
\sum_{k=2}^{n}Y_{k}^{2}=\sum_{k=1}^{n}Y_{k}^{2}- \frac{1}{n}\left( \sum_{k=1}^{n}X_{k} \right)^{2}=\sum_{k=1}^{n}X_{k}^{2}-n\overline{X}^{2}=\sum_{k=1}^{n}(X_{k}-\overline{X})^{2}
$$

由正交变换不改变对角元平方和[[Wiki - 正交变换]]

## Pro 1 

```ad-proposition
title: Propositon 1

$$\begin{aligned}&\frac{(n-1)S_X^2}{\sigma^2}\sim\chi_{n-1}^2.\\&\frac{\sqrt{n}(\overline{X}-\mu)}{S_X}\sim t_{n-1}.\end{aligned}$$



```

[[Wiki - 卡方分布]]

[[Wiki - t分布]]

## Pro 2

```ad-proposition
title: Propositon 2


$X_{i}i.i.d\sim Exp(\lambda)$，则
$$2\lambda n\bar{X}=2\lambda\sum_{i=1}^{n}X_{i}\sim\chi_{2n}^{2}.$$


```

## Pro 3

```ad-proposition
title: Propositon 3

设 $X_1,X_2,\cdots,X_m~i.i.d~\sim~N(a_1,\sigma^2),~Y_1,Y_2,\cdots,Y_n~i.i.d~\sim$ $N(a_2,\sigma^2)$, 且样本 $X_1,X_2,\cdots,X_m$ 与 $Y_1,Y_2,\cdots,Y_n$ 独立，则

$$
T=\frac{(\bar{X}-\bar{Y})-(a_1-a_2)}{S_w}\cdot\sqrt{\frac{mn}{n+m}}\sim t_{n+m-2},
$$

其中 $(n+m-2)S_w^2=(m-1)S_1^2+(n-1)S_2^2$, 此处

$$
S_1^2=\frac{1}{m-1}\sum_{i=1}^m(X_i-\bar{X})^2,\quad S_2^2=\frac{1}{n-1}\sum_{j=1}^n(Y_j-\bar{Y})^2.
$$


```

## Pro 4

```ad-proposition
title: Propositon 4

设 $X_1,X_2,\cdots,X_m\:i.i.d\sim N(a_1,\sigma_1^2),\:Y_1,Y_2,\cdots,Y_n\:i.i.d\sim$ $N(a_2,\sigma_2^2)$, 且样本 $X_1,X_2,\cdots,X_m$ 和 $Y_1,Y_2,\cdots,Y_n$ 独立，则

$$
F=\frac{S_{1}^{2}}{S_{2}^{2}}\cdot\frac{\sigma_{2}^{2}}{\sigma_{1}^{2}}\sim F_{m-1,n-1},
$$

此处 $S_1^2$ 和 $S_2^2$ 分别为两组样本的样本方差.

```
