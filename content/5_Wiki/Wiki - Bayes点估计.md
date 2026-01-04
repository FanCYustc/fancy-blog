---
aliases: 
info: 
date: 2024-05-31-星期五 11:52
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/贝叶斯方法
id: wiki20240531115230
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Bayes 估计

```ad-definition
title: Definition 1

使后验密度 $\pi(\theta|x)$ 达到最大时（就是极大似然） $\theta$ 的值称为后验分布的众数 (mode), 用后验分布的众数作为 $\theta$ 的估计称为**后验众数估计**，也称为**广义极大似然 (广义 MLE)**估计，记为 $\hat{\theta}_\mathrm{MD}$

用后验分布的中位数 (median) 作为 $\theta$ 的估计，称为 $\theta$ 的后验**中位数估计**，记为 $\hat{\theta}_\mathrm{ME}$

用后验分布的期望 (expectation) 作为 $\theta$ 的估计称为后验期望估计 (或**后验均值估计**), 记为 $\hat{\theta}_E.$ 

三个估计都称为 Bayes 估计，在不会引起混淆的情况下上述三个估计皆用 $\hat{\theta}_{_{B}}$ 来记

```

[[Wiki - 极大似然估计]] 

**后验均值估计常优于后验众数估计**，显示出优于频率估计的特点

