---
aliases:
  - minmax决策和Bayes决策
info: 决策的风险均值
date: 2024-06-07-星期五 11:01
update: 
tags:
  - wiki/year2024
  - wiki/month06
  - 数理统计/统计决策
  - 数理统计/贝叶斯方法
id: wiki20240607110145
banner: "![[astrowalk.gif]]"
---
---

## Def 1 风险函数

```ad-definition
title: Definition 1

对统计决策，决策空间为 $\mathcal{A}= \{a=\delta(x)\}$，$\delta(x)$ 为决策函数,$L(\delta(x),\theta)$为损失函数

风险函数定义为 $R(\delta,\theta)=E_{\theta}[L(\delta(x),\theta)]= \int_{\mathcal{X}} L(\delta(x), \theta) f(x,\theta)dx$

```

## Def 2 Bayes 风险

```ad-definition
title: Definition 2
```
在先验分布 $\pi(\theta)$ 下[[Wiki - 广义先验密度]]，Bayes 风险为 $R_{\pi}(\delta) = \int R(\delta,\theta)\pi(\theta) \, d\theta$

最小化风险 $\delta^{*}= \arg \min_{\delta} R_{\pi}(\theta)$ 为 **Bayes 决策**



## Def 3 minmax 决策

```ad-definition
title: Definition 3

选取**最小化最大风险**的决策，称为 minmax 决策，写为 $\delta^{*}= \arg\min_{\delta}(sup_{\theta}R(\delta,\theta))$

```


