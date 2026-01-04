---
aliases:
  - 残差平方和
info: 
date: 2025-01-02-星期四 10:27
update: 
tags:
  - wiki/month11
  - wiki/year2024
  - 回归分析/线性回归
id: wiki20250102102738
banner: "![[astrowalk.gif]]"
---
---

## Def 1 残差平方和

在 [[Wiki - 多重线性回归最小二乘估计]] 中拟合后剩下残差 $\boldsymbol{e}$，记残差平方和为
$$
RSS = \|\boldsymbol{e}\|^{2}= \boldsymbol{y}^{T}(I_{n}-P_{X})\boldsymbol{y}
$$

利用了 [[Wiki - 正交投影#Pro 1]]

## The 1 平方和分解

在多重线性回归模型中 [[Wiki - 线性回归模型]]中经过最小二乘估计得到拟合值 $\hat{y_{i}}$，

总平方和 $SS_{总}= s_{yy}= \sum_{i=1}^{n}(y_{i}-\overline{y})^{2}$，回归平方和为 $SS_{回}= s_{\hat{y}\hat{y}}= \sum_{i=1}^{n}(\hat{y_{i}}-\overline{y})^{2}$，残差平方和 $RSS = s_{ee} = \sum_{i=1}^{n}(y_{i}-\hat{y_{i}})^{2}$。

有关系
$$
SS_{总}= SS_{回}+RSS
$$

## The 1 误差方差估计

误差方差 $\sigma^{2}$ 的的估计 $\hat{\sigma}$ 为

$$
\hat{\sigma}^{2}= \frac{RSS}{n-p} = \frac{\sum_{i=1}^{n}(y_{i}-\hat{y_{i}})^{2}}{n-p}
$$


## Pro 1 

如果 X 是列满秩的，则 $\hat{\sigma}^{2}$ 是 $\sigma^{2}$ 的无偏估计 [[Wiki - 无偏估计]]

可以用 plug-in 方法估计 $\hat{\boldsymbol{\beta}}$ 的方差：
$$
\widehat{Var[\hat{\boldsymbol{\beta}}|X]} = \hat{\sigma}^{2}(X^{T}X)^{-1}
$$

```ad-note

$\sigma^{2}$ 的极大似然估计为 $\tilde{\sigma}^{2}= \frac{RSS}{n}$
```


 [[Wiki - 极大似然估计]] 
### Proof

```ad-lemma

引理：

$E[\boldsymbol{x}]= \boldsymbol{\mu}, Var[\boldsymbol{x}]= \Sigma$，对任何常数方阵 A，$E[\boldsymbol{x}^{T}A\boldsymbol{x}^{T}]= \boldsymbol{\mu}^{T}A\boldsymbol{\mu} + tr(A\Sigma)$

引理证明：

$$
\begin{align}
E[\boldsymbol{x}^{T}A\boldsymbol{x}] &= E[tr(A\boldsymbol{x x}^{T})]= tr(E[A\boldsymbol{x x}^{T}]) \\
&= tr(AE[\boldsymbol{x x}^{T}]) \\
&= tr(A(\boldsymbol{\mu \mu^{T}}+\Sigma)) \\
& = tr(A\Sigma) + \boldsymbol{\mu}^{T}A\boldsymbol{\mu}
\end{align}
$$

```

则对本问题，

$$
\begin{align}
E[RSS|X] &= E[\boldsymbol{y}^{T}(I_{n}-P_{X})\boldsymbol{y}|X] \\
 &= \boldsymbol{\mu}^{T}(I_{n}-P_{X}) \boldsymbol{\mu} + tr((I_{n}-P_{X})Var[\boldsymbol{y}|X]) \\
& = \boldsymbol{\beta}^{T}X^{T}(I_{n}- P_{X})X\boldsymbol{\beta} + \sigma^{2}tr(I_{n}-P_{X}) \\
&= 0+ (n-p)\sigma^{2}= (n-p)\sigma^{2}
\end{align}
$$

## Pro 2 

$$
\frac{(n-p)\hat{\sigma}^{2}}{\sigma^{2}}= \frac{RSS}{\sigma^{2}}\sim \chi_{n-p}^{2}
$$
且 $\hat{\sigma}^{2}$ 与 $\hat{\boldsymbol{\beta}}$ 独立 [[Wiki - 随机变量的独立性]]

[[Wiki - 卡方分布]]
### Proof

$RSS= \boldsymbol{\epsilon}^{T}(I_{n}-P_{X})\boldsymbol{\epsilon}$，由 [[Wiki - 正交投影#Pro 1]] 以及 $(I_{n}-P_{X})\boldsymbol{\epsilon}\sim N_{n}(0, I_{n}-P_{X})$

有 $\frac{RSS}{\sigma^{2}}\sim \chi_{n-p}^{2}$ [[Wiki - 多元正态分布的性质]]，因为 $rank(I_{n}-P_{X})=n-p$

因为存在正交阵 Q 使得
$$
\boldsymbol{\epsilon}^{T}(I_{n}-P_{X})\boldsymbol{\epsilon}= \boldsymbol{\epsilon}^{T} Q \begin{pmatrix}
0 &0  \\
0& I_{n-p}
\end{pmatrix} Q^{T}\boldsymbol{\epsilon}= \boldsymbol{\epsilon}_{2}^{T}\boldsymbol{\epsilon}_{2}\sim \chi_{n-p}^{2}
$$

其中 $\boldsymbol{\epsilon}_{2}$ 指 $\boldsymbol{\epsilon}$ 的后 n-p 行

## Pro 3 

对于 n 个样本的残差 $e_{i}$，有
$$
Var[\boldsymbol{e}]= \sigma^{2}(I_{n}-P_{X})
$$
[[Wiki - 协方差矩阵]]

