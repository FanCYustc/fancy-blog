---
aliases:
info: 极大似然估计方法
date: 2024-03-22-星期五 11:22
update: 2025-12-15-星期一
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
id: wiki20240322112235
banner: "![[astrowalk.gif]]"
---
---

## The 1 极大似然估计

```ad-theorem
title: Theorem 1

对于样本空间内的点 $\boldsymbol{x}$，称 $L_{n}(\theta)=f(x;\theta)$ 为参数 $\theta$ 的似然函数，极大似然估计就是求似然函数的极大值，即为最有可能的参数

$$
\hat{\theta}(\boldsymbol{x})=arg\sup_{\theta\in \Theta} L_{n}(\theta)
$$

称为参数的极大似然估计

```

若待估函数为 $g(\theta)$，则定义 $g(\hat{\theta}(\boldsymbol{X}))$ 为 $g(\theta)$ 的 MLE。

### 在时间序列分析中的应用

在时间序列分析中，极大似然估计是参数估计的常用方法，特别是在 ARMA 模型中。对于服从高斯分布的时间序列，我们可以写出其联合概率密度函数，从而得到似然函数。

对于一个零均值、方差为 $\sigma^2$ 的 $p$ 阶 AR 和 $q$ 阶 MA 模型 ARMA$(p,q)$，假设其满足正态分布，其联合概率密度函数（即似然函数）为：

$$
L(\boldsymbol{\phi}, \boldsymbol{\theta}, \sigma^2) = (2\pi \sigma^2)^{-N/2} |\Sigma|^{-1/2} \exp\left(-\frac{1}{2\sigma^2} \mathbf{x}^T \Sigma^{-1} \mathbf{x}\right)
$$

其中，$\mathbf{x} = (x_1, \ldots, x_N)^T$ 是观测到的时间序列数据，$N$ 是样本量，$\boldsymbol{\phi} = (\phi_1, \ldots, \phi_p)$ 是 AR 参数，$\boldsymbol{\theta} = (\theta_1, \ldots, \theta_q)$ 是 MA 参数，$\Sigma$ 是由模型参数决定的协方差矩阵。
实际应用中，通常通过最大化对数似然函数来求解参数。对于 ARMA 模型，通常采用条件极大似然估计或精确极大似然估计。条件极大似然估计会假设前 $p$ 个观测值已知，以简化计算。

极大似然估计的优点包括在大样本下具有渐近有效性和一致性。

参见：[[Wiki - 随机向量的概率密度函数]], [[Wiki - ARMA模型的参数估计]]