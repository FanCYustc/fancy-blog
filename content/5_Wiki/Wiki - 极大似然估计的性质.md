---
aliases: 
info: 与充分统计量，相合性和渐进正态性
date: 2024-03-29-星期五 09:51
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
id: wiki20240329095129
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 与充分统计量

```ad-proposition
title: Propositon 1

```
如果 T 是样本 $\boldsymbol{X}$ 关于 $\theta$ 的充分统计量 [[Wiki - 充分统计量]]，且 $\theta$ 的 MLE [[Wiki - 极大似然估计]]存在，那么它一定是关于 T 的函数


## Pro 2 相合性

没那么简单

### Pro 3 渐进正态

当分布 $f(x;\theta)$ 满足一些比较好的性质时，MLE $\hat{\theta}$ 会是 $\theta$ 的 CAN 估计

$$
\sqrt{ n }(\hat{\theta}^{*}-\theta)\xrightarrow{L} N\left( 0, \frac{1}{I(\theta)} \right)
$$

[[Wiki - 中心极限定理]]

[[Wiki - Fisher信息函数]]

