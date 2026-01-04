---
aliases:
  - covariance
info: 协方差的定义和性质
date: 2023-11-13-星期一 10:23
update: 2023-11-13-Monday 10:20:03
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/特征
id: wiki20231113102333
banner: "![[astrowalk.gif]]"
---
---

## Def 1 协方差

```ad-definition
title: Definition 1


$$\begin{gathered}\text{协方差 (Covariance) 的定义:}\\\mathrm{Cov}(X,Y)=\mathrm{E}\left[(X-\mathrm{E}X)(Y-\mathrm{E}Y)\right]\end{gathered}$$


```

若 X 和 Y 一样，那么就是方差 [[Wiki - 方差]]


## Pro 1 性质

```ad-proposition
title: Propositon 1


$$\begin{aligned}
\operatorname{Cov}(X,Y) &=\operatorname{E}\left[XY\right]-\operatorname{E}X\operatorname{E}Y,  \\
\mathrm{Cov}(X,Y)& =2\mathrm{Cov}(Y,X),  \\
\mathrm{Cov}(aX_1+bX_2,Y)& =\mathrm{aCov}(X_1,Y)+b\mathrm{Cov}(X_2,Y)  \\
\mathrm{Var}(X+Y)& =\mathrm{Var}(X)+\mathrm{Var}(Y)+2\mathrm{Cov}(X,Y) 
\end{aligned}$$

第三条说明协方差有**双线性性**

```

[[Wiki - 数学期望]]