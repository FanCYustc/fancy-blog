---
aliases: 
info: 
date: 2024-05-31-星期五 11:33
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/贝叶斯方法
id: wiki20240531113341
banner: "![[astrowalk.gif]]"
---
---

## The 1 Jeffreys 无信息检验

对样本分布族 $\{f(x|\theta_{1},\dots,\theta_{p})\}$ 满足 cramer-rao 正则条件 [[Wiki - Cramer-Rao不等式]]，且对数似然函数 [[Wiki - 极大似然估计]]为 $l (\theta|x) =\sum_{i=1}^{n} lnf(x_{i}|\theta)$

样本信息阵为
$$
I_{ij}( \theta) = E_{X|\theta}\left[  -\frac{{\partial ^{2}l}}{\partial\theta_{i}\partial\theta_{j}} \right], i,j=1,\dots,p
$$

特别的 p=1 时，$I (\theta) = E_{X|\theta} \left[ - \frac{{\partial^{2}l}}{\partial x^{2}} \right]$，

**注意与** [[Wiki - Fisher信息函数]]**不同**


```ad-definition
title: Definition 1

用 $\pi (\theta) = [\det \boldsymbol{I(\theta)}]^{\frac{1}{2}}$ 作为 $\theta$ 的无信息先验密度，

称为 Jeffreys 无信息检验

```



```ad-example

例如对 $N(\mu,\sigma^{2})$, 视两个参数是独立的，则经过计算 $\pi (\mu,\sigma)= \frac{1}{\sigma}$ 为参数的 Jeffreys 无信息先验分布


```

