---
aliases: 
info: 多项式矩阵的不变因子
date: 2023-12-06-星期三 11:50
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/多项式
  - 线性代数/矩阵
id: wiki20231206115027
banner: "![[astrowalk.gif]]"
---
---

## Def 1 不变因子

```ad-definition
title: Definition 1

对于多项式矩阵 $A(\lambda)$，其 k 阶行列式因子[[Wiki - 多项式矩阵的行列式因子]]为 $D_{k}(\lambda)$，则 $d_{k}(\lambda)= \frac{D_{k}(\lambda)}{D_{k-1}(\lambda)}, k=1, 2,\dots, r$ 称为多项式矩阵的**不变因子**，$D_{0}(\lambda)=1$

```


## Pro 1 相抵不变量

```ad-proposition
title: Propositon 1

不变因子是多项式因子的相抵不变量 [[Wiki - 多项式矩阵相抵]]，

```

所以 $d_{1}(\lambda),\dots,d_{r}(\lambda)$ 就是 Smith 标准型的对角元

