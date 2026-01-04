---
aliases: 
info: 得分检验方法
date: 2024-05-21-星期二 14:23
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240521142312
banner: "![[astrowalk.gif]]"
---
---

## The 1 score 检验

```ad-theorem
title: Theorem 1

For the simple hypothesis $H_0:\theta=\theta_0$, Rao's score test or Lagrange Multipliers [[Wiki - 拉格朗日乘数法]] test is based on the observation that, letting $H$ be the Lagrangian:
$$H=\ell_n(\theta)-\lambda^{\prime}\left(\theta-\theta^0\right),$$
the frst-order conditions are:
$$\frac{\partial\ell_n}{\partial\theta}=\lambda;\quad\theta=\theta^0,$$
so $\lambda/\sqrt n=U_n(\theta_0)\stackrel{\mathcal{L}}{\operatorname*{\to}}N\left(0,I(\theta_0)\right).$ 即$U_{n}(\theta) = \frac{1}{\sqrt{ n }} \nabla l_{n}(\theta)$ [[Wiki - 梯度]]

Thus, $LM_n=\lambda^TI^{-1}(\theta_0)\lambda/n\stackrel{\mathcal{L}}{\operatorname*{\to}}\chi_k^2$ under $H_0.$[[Wiki - 中心极限定理]]

即为
$$LM_n\left(\theta_0\right)=U_n^T\left(\theta_0\right)I^{-1}\left(\theta_0\right)U_n\left(\theta_0\right)\overset{\mathcal{L}}{\operatorname*{\to}}\chi_k^2.$$

[[Wiki - 卡方分布]]

当 $U_n^T\left(\theta_0\right)I^{-1}\left(\theta_0\right)U_n\left(\theta_0\right)>\chi_{k}^{2}(\alpha)$ 时拒绝 $H_{0}$。其中 k 为参数全空间 $\Theta$ 的维数

```



[[Wiki - wald检验]]

[[Wiki - 似然比极限分布]]

