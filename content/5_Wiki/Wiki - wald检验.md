---
aliases: 
info: Wald检验方法
date: 2024-05-21-星期二 14:19
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240521141943
banner: "![[astrowalk.gif]]"
---
---

## The 1 wald 检验

```ad-theorem
title: Theorem 1

Test (s) on multiple parameters $H_0:\theta=\theta_0,\theta\in\mathbb{R}^k.$对立假设为$H_{1:}\theta \neq \theta_{0}$ Since $\sqrt n(\widehat{\theta}-\theta)\to N_k(0,I^{-1}(\theta))$, it follows that the Wald test that rejects $H_0$ when
$$W_n\left(\theta_0\right)=n(\widehat{\theta}-\theta_0)^TI(\widehat{\theta})(\widehat{\theta}-\theta_0)\geq\chi_k^2(\alpha)$$


```

[[Wiki - Fisher信息函数]]

[[Wiki - 卡方分布]]

[[Wiki - 中心极限定理]]

[[Wiki - 似然比极限分布]]

换句话说，假设 $\boldsymbol{\theta}\in \mathbb{R}^{k}$，零假设 $H_{0}: \boldsymbol{\theta}= \boldsymbol{\theta}_{0}$，设 $\hat{\Sigma}$ 是 $\hat{var(\boldsymbol{\theta})}$ 的估计量，则当零假设成立时 Wald 检验量 $W= (\hat{\boldsymbol{\theta}}-\boldsymbol{\theta}_{0})^{T} \hat{\Sigma}^{-1}(\hat{\boldsymbol{\theta}}-\boldsymbol{\theta}_{0}) \xrightarrow{d} \chi^{2}_{k}$

