---
aliases: 
info: 分布函数的再生性
date: 2023-11-22-星期三 21:38
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/概率分布
id: wiki20231122213830
banner: "![[astrowalk.gif]]"
---
---

见 [[Wiki - 连续随机变量的和]] [[Wiki - 离散随机变量的和]]

## The 1 分布的再生性
```ad-proposition
title: Propositon 1


$$\begin{aligned}
& N(\mu,\sigma^2)\text{ 分布: }N(\mu_1,\sigma^2)*N(\mu_2,\sigma_2^2)=N(\mu_1+\mu_2,\sigma_1^2+\sigma_2^2) \\
&\text{ Poi}(\lambda)\text{ 分布: Poi}(\lambda_1)*\mathrm{Poi}(\lambda_2)=\mathrm{Poi}(\lambda_1+\lambda_2) \\
& B(n,p)\text{ 分布: }B(n,p)*B(m,p)=B(m+n,p)  \\
&Cauchy(\mu,\lambda)\text{ 分布}: \mathrm{Cauchy}(\mu_1,\lambda_1)*\mathrm{Cauchy}(\mu_2,\lambda_2)=\mathrm{Cauchy}(\mu_1+\mu_2,\lambda_1+\lambda_2).
\end{aligned}$$


```

其中 $*$ 代表卷积 [[Wiki - 卷积]]

[[Wiki - 二项分布]]

[[Wiki - 泊松分布]]

[[Wiki - 负二项分布|几何分布]]

[[Wiki - 柯西分布]]

Cauchy 分布再生性的证明见苏淳概率论例 5.4.13

### Proof

证明通常都用 [[Wiki - 随机变量的特征函数]]