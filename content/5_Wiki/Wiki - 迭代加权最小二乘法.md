---
aliases: 
info: 
date: 2025-01-05-星期日 17:17
update: 
tags:
  - wiki/month12
  - wiki/year2024
  - 回归分析/线性回归
id: wiki20250105171708
banner: "![[astrowalk.gif]]"
---
---

## The 1 迭代加权最小二乘

在 [[Wiki - 广义最小二乘方法]]中如果 $\mathbf{y}= X\boldsymbol{\beta}+\boldsymbol{\epsilon}, \epsilon\sim N(0,\Sigma(\theta))$，其中 $\theta$ 也是未知参数，需要我们同时估计 $\beta,\theta$，此时需要迭代加权最小二乘法：

1、初始化 $k=0,\hat{\boldsymbol{\beta}}^{(0)}= (X^{T}X)^{-2}X^{T}\mathbf{y}$

2、重复 $k\leftarrow k+1$，$\boldsymbol{e}= \mathbf{y}- X\hat{\boldsymbol{\beta}}^{(k-1)}$，利用残差得到 $\Sigma(\theta)$ 的最佳估计对应的 $\hat{\theta}^{(k)},\hat{\Sigma}^{(k)}$（这一步根据 $\Sigma$ 的结构得到估计）

3、$\hat{\boldsymbol{\beta}}^{(k)}= (X^{T}\hat{\Sigma}^{(k)^{-1}}X)^{-1}X^{T}\hat{\Sigma}^{(k)^{-1}}\mathbf{y}$


```ad-note

如果假设误差服从正态分布，可以用极大似然估计来估计，

等价于最小化
$$
Q(\boldsymbol{\beta},\boldsymbol{\theta})=\log|\Sigma( \boldsymbol{\theta})|+ (\mathbf{y}- X\boldsymbol{\beta})^{T}\Sigma(\boldsymbol{\theta})^{-1}(\mathbf{y}-X\boldsymbol{\beta})
$$
比广义最小二乘方法多了一个惩罚项 $log|\Sigma|$
```


[[Wiki - 极大似然估计]]