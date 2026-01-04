---
aliases: 
info: 
date: 2024-05-28-星期二 14:51
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240528145155
banner: "![[astrowalk.gif]]"
---
---

## The 1 齐一性检验

有 r 类样本，分为 s 个等级，齐一性检验是假设每类在每个等级的个体概率相同，即
$$
H_{0}: p_{1}(j)=p_{2}(j)=\dots=p_{r}(j),j=1,\dots,s
$$

利用 [[Wiki - pearson卡方检验]]，若分布已知，$p_{i}(j)=p_{0}(j),j=1,\dots,s$，则
$$
K_{n}^{*}=\sum_{i=1}^{r}\sum_{j=1}^{s} \frac{{(n_{ij}-n_{i\cdot}p_{0}(j))^{2}}}{n_{i\cdot}p_{0}(j)}
$$

将 $K_{n}^{*}$ 与 $\chi^{2}_{(s-1)r}$ 比较 [[Wiki - 卡方分布]]

其中 $n_{i\cdot}=\sum_{j}n_{ij}$

如果 $p_{0}(j)$ 未知，则用 [[Wiki - 矩估计]]，[[Wiki - 极大似然估计]]等估计出 $\hat{p_{0}(j)}$ 作为参数

此时 
$$
K_{n}^{*} = \sum_{i=1}^{r}\sum_{j=1}^{s} \frac{{\left( n_{ij}- \frac{n_{i\cdot}n_{\cdot j}}{n} \right)^{2}}}{\frac{n_{i\cdot}n_{\cdot j}}{n}}
$$

与 [[Wiki - 独立性检验]]一样还是将 $K_{n}^{*}$ 与 $\chi^{2}_{(r-1)(s-1)}(\alpha)$ 比较

