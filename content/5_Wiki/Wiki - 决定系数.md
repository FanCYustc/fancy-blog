---
aliases: 
info: 
date: 2024-09-23-星期一 10:02
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 回归分析
  - 相关
id: wiki20240923100257
banner: "![[astrowalk.gif]]"
---
---

## Def 1 决定系数

对于 [[Wiki - 典则相关系数]]，当因变量 $\boldsymbol{y}$ 的维数为 $q=1$ 时，将 $\Phi$ 退化成一个数，这个数就是决定系数 

由于形式是 $R^{2}=\sum_{y y}^{-{\frac{1}{2}}}\left( \sum_{yx} \sum_{x x}^{-1} \sum_{xy}\right)\sum_{yy}^{- \frac{1}{2}}$ ，是 [[Wiki - Pearson相关系数]]的推广

相关系数 $\rho_{xy}^{2} = \frac {{\sigma_{xy}^{2}} }{\sigma_{xx}\sigma_{yy}}= \sigma_{yy}^{-\frac{ 1}{2}} \sigma_{yx}  \sigma_{x x}^{-1} \sigma_{xy} \sigma_{yy}^{- \frac{1}{2}}$

## Cal 1 

$$
R^{2}= \max_{\beta\in \mathbb{R}^{P}} \rho(y, \boldsymbol{\beta}^{T}\boldsymbol{y})^{2}
$$

由 [[Wiki - 典则相关系数]]中的推论

