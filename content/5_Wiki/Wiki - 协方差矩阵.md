---
aliases:
  - 随机向量协方差的性质
info: 协方差阵定义与性质
date: 2023-11-13-星期一 11:19
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/期望方差
  - 概率论/特征
id: wiki20231113111904
banner: "![[astrowalk.gif]]"
---
---

## Def 1 协方差阵

```ad-definition
title: Definition 1

协方差阵
$$
B=E(\boldsymbol{X}-E(\boldsymbol X))E(\boldsymbol X-E(\boldsymbol X))^{T}
$$

其中 $B=(b_{ij})_{n\times n}=(Cov (X_{i}, X_{j})) n\times n$



```

[[Wiki - 协方差]]

[[Wiki - 向量和矩阵的期望]]

## Pro 1 协方差阵半正定

```ad-proposition
title: Propositon 1

协方差阵是半正定的

```

[[Wiki - 正定矩阵]]
### Proof

$$
\mathbf{a}^{T} B\mathbf{a}=\sum_{i=1}^n\sum_{j=1}^na_ia_j\mathrm{Cov}\left(X_i,X_j\right)=\mathrm{Var}\left(\sum_{i=1}^na_iX_i\right)\geq0
$$

[[Wiki - 方差]]
## Pro 2 运算性质

1、$Cov(\boldsymbol{x+y},\boldsymbol{z+w})=Cov(\boldsymbol{x,z})+Cov(\boldsymbol{x+w})+Cov(\boldsymbol{y+z})+Cov(\boldsymbol{y+w})$

$Var (\boldsymbol{x+y})= Var (\boldsymbol{x})+ Cov(\boldsymbol{x,y})+Cov(\boldsymbol{y,x})+Var(\boldsymbol{y})$

2、$Cov (A\boldsymbol{x+b}, B\boldsymbol{y+d})= ACov(\boldsymbol{x,y})B^{T}$

特别的，$Var(A\boldsymbol{x+b})=AVar(\boldsymbol{x})A^{T}$

