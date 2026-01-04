---
aliases: 
info: 
date: 2024-12-27-星期五 16:57
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 时间序列分析
  - 随机过程/平稳过程
id: wiki20241227165700
banner: "![[astrowalk.gif]]"
---
---

## Def 1 正态序列

对于时间序列 $\{X_{t}\}, t\in \mathbb{Z}$，如果对任意 $n\geq 1, t_{1},\dots, t_{n}\in \mathbb{Z}$，有 $(X_{t_{1}},X_{t_{2}},\dots,X_{t_{n}})$ 的联合分布是多元正态分布，则称 $\{X_{t}\}$ 是正态时间序列 [[Wiki - 多元正态分布]]

当 $\{X_{t}\}$ 又是平稳序列时 [[Wiki - 平稳序列]]，$\{X_{t}\}$ 称为正态平稳列

## The 1

**文字内容**： 定理 3.11 $\{\epsilon_t\}$ 是正态 $WN (0, \sigma^2)$ 序列，实数列 $\{a_j\}$ 绝对可和，则线性序列 

$$X_t = \sum_{j = -\infty}^{\infty} a_j \epsilon_{t - j}$$ 是零均值正态平稳列，自协方差函数为 

$$\gamma_{t, k} = \sigma^2 \sum_{j = -\infty}^{\infty} a_j a_{j + k}, k \in \mathbb{Z} \tag{3.6}
$$ 当$\{a_j\} \in l_2$ 时结论仍成立。

### proof

由[[Wiki - 线性过程]]知$\{X_t\}$ 是零均值平稳列，自协方差函数为 (3.6)。只要证明$\{X_t\}$ 是正态序列，只要证明$\forall m \in \mathbb{N}_+$，$\mathbf{X} = (X_{-m}, \ldots, X_0, \ldots, X_m)^\prime$ 服从多元正态分布。要使用定理[[Wiki - 多元正态分布]]。即多元正态的依分布极限[[Wiki - 依分布收敛]]还是正态分布

记$\boldsymbol{\Sigma} = (\gamma_{(i - j)})_{i, j = -m,\ldots, m}$，来证明$\mathbf{X} \sim N (\mathbf{0}, \boldsymbol{\Sigma})$。记 

$$\eta_k (n) = \sum_{j = -n}^{n} a_j \epsilon_{t - j}, t = -m, \ldots, m$$ 这是$X_t$ 的部分和。由控制收敛定理[[Wiki - Lebesgue控制收敛定理]]可知 

$$E|\eta_k (n) - X_t| \leq \sum_{|j|>n} |a_j| \rightarrow 0 (n \rightarrow \infty)$$ 
对任意$b=(b_{-m},\cdots,b_0,\cdots,b_m)^T\in R^{2m + 1}$，记 

$$ Y = b^T X=\sum_{t=-m}^{m} b_t X_t $$ 
$$ \eta(n)=\sum_{t=-m}^{m} b_t \eta_t(n) $$ 
则当$n\rightarrow\infty$时 
$$ E|\eta(n)-Y|\leq\sum_{t=-m}^{m} |b_t|\cdot E|\eta_t(n)-X_t|\rightarrow 0 $$ 
即$\eta(n)\xrightarrow{L_1} Y$，于是$\eta(n)\xrightarrow{d} Y$，$\eta(n)$服从正态分布，则$Y$服从正态分布，易见$EY = 0$，

$$ \text{Var}(Y)=\text{Var}\left(\sum_{t=-m}^{m} b_t X_t\right)=b^T\Sigma b $$ 
即有$Y\sim N(0,b^T\Sigma b)$，从而可知$X$服从多元正态分布，从而$\{X_t\}$为正态序列。 