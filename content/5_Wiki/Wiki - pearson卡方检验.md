---
aliases: 
info: 
date: 2024-05-21-星期二 14:06
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240521140628
banner: "![[astrowalk.gif]]"
---
---

## The 1 pearson 卡方检验

```ad-theorem
title: Theorem 1

```
对于离散的分布

$$X\sim\left(\begin{array}{cccc}a_1&a_2&\cdots&a_r\\p_1&p_2&\cdots&p_r\end{array}\right)$$

我们的假设检验即为 $H_{0}:\theta = \theta_{0}= (p_{01},\dots,p_{0r})^{T}$ 作为对于分布的假设检验

计算似然比 [[Wiki - 似然比检验]]利用 [[Wiki - wald检验]]

$$W_n\left(\theta_0\right)=n\left(\widehat{\theta}_n-\theta_0\right)^TI\left(\theta_0\right)\left(\widehat{\theta}_n-\theta_0\right)>\chi_{r-1}^2(\alpha)$$
时拒绝 $H_{0}$，（有一个概率和为 1 的约束所以只有 r-1 个变量）其中

$$\begin{aligned}
I_{ij}& \begin{aligned}=-E\left[\frac{\partial^2}{\partial p_i\partial p_j}\sum_{k=1}^rI(X=a_k)logp_k\right]\end{aligned}  \\
&=\left\{\begin{array}{ll}\frac1{p_i}+\frac1{p_r},&i=j\\\frac1{p_r},&i\neq j\end{array}\right.
\end{aligned}$$
[[Wiki - Fisher信息函数]]

经计算得 $W_{n}(\theta_{0})= \sum_{i=1}^{r} \frac{{(n_{j}-np_{0j})^{2}}}{np_{0j}}$，记为 $\chi^{2} = \sum \frac{(O-E)^{2}}{E}$

利用 score 检验可以得到相同结论 [[Wiki - score检验]]

## Cal 1 

如果假设中参数 $\vec{\theta} = \vec{\theta(\eta)}=\vec{\theta}(\eta_{1},\dots,\eta_{s})$ 由 s 个参数确定，那么最后卡方检验时 $\chi^{2} =\sum \frac{(O-E)^{2}}{E}$ 要与 $\chi_{r-1-s}^{2}(\alpha)$ 比较，其中 $s<r-1$ [[Wiki - 似然比极限分布]]


```ad-tip

由于 $\frac{(O-E)^{2}}{E}$ 在 $np_{0j}$ 很小时会误差很大，极容易拒绝，所以通常会整合离散分布，让样本中每个类里面的样本数不少于 5 个。例如在 poison 分布检验中，用 $X=0,X=1,X=2,X=3,X\geq 4$ 也许就够用。 

```

[[Wiki - 泊松分布]]