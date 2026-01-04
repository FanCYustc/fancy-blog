---
aliases: []
info: 相关系数的定义
date: 2023-11-13-星期一 10:26
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/特征
id: wiki20231113102625
banner: "![[astrowalk.gif]]"
---
---

## Def 1 相关系数

希望表示变量线性相关性的度量有以下好的特征：
- 表示 X，Y 的线性关系，满足线性性
- 可以反映关系的正向/负向；
- 关系的强度可直观且度量统一，$\in[-1,1]$

```ad-definition
title: Definition 1

基于此构造相关系数
$$\begin{aligned}\rho&=\mathrm{Corr}(X,Y)=\frac{\mathrm{Cov}\left(X,Y\right)}{\sqrt{\mathrm{Var}\left(X\right)\mathrm{Var}\left(Y\right)}}.\end{aligned}$$


```

[[Wiki - 协方差]]
## Pro 1 相关系数性质

```ad-proposition
title: Propositon 1

1. Corr (aX, bY)=Corr (X, Y)
2. $\rho\in [-1,1]$
3. $\rho>0$ XY 同向变化，$\rho<0$ XY 反向变化

```

### Proof

1. 由协方差的性质可验证
2. 由 cauchy 不等式 $(E[UV])^{2}\leq (EU)^{2}(EV)^{2}$ [[Wiki - Cauchy-Schwarz不等式]]

取 $U=X-EX,V=Y-EY$ 即证 $Cov(X,Y)\leq \sqrt{ Var(X)Var(Y) }$

**类似度量空间的夹角**



## Def 2 相关的定义

```ad-definition
title: Definition 2

$$\begin{array}{l}\bullet&\text{若 }\rho_{X,Y}=0\text{,则称 X 与 Y 不相关}.\\\bullet&\text{若 }\rho_{X,Y}>0\text{,则称 X 与 Y 正相关}.\\\bullet&\text{若 }\rho_{X,Y}<0\text{,则称 X 与 Y 负相关}.\end{array}$$

```
[[Wiki - 变量的不相关]]


## Pro 2 相关系数矩阵

给定随机变量的协方差矩阵 $\Sigma$ [[Wiki - 协方差矩阵]]，相关系数矩阵

$$
R= (\rho_{ij})= D^{-\frac{1}{2}}\Sigma D^{-\frac{1}{2}}
$$
其中 $D= diag(\Sigma)$

