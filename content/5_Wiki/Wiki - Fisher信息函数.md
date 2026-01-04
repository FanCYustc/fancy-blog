---
aliases: 
info: 
date: 2024-04-02-星期二 15:21
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数理统计/点估计
id: wiki20240402152142
banner: "![[astrowalk.gif]]"
---
---


## Def 1 fisher 信息量
```ad-definition
title: Definition 1


$$
I(\theta)=E_{X}\left[ \frac{{\partial \log f(X,\theta)}}{\partial \theta} \right]^{2}
$$
称为 fisher 信息函数

```

[[Wiki - 数学期望]]

## Def 2 fisher 信息阵

在一些正则条件下，有 $E_{X}\left[ \frac{{\partial l(\theta)}}{\partial \theta} \right]=0$，则 fisher 信息阵为 $\frac{{\partial l( \theta)}}{\partial \theta}$ 的方差-协方差矩阵 [[Wiki - 协方差矩阵]] ：
$$
I_{n}(\theta)= E_{X}\left[ \left( \frac{{\partial l( \theta)}}{\partial \theta} \right) \left( \frac{{\partial l( \theta)}}{\partial \theta} \right)^{T} \right]
$$
其中 $\theta$ 为 n 维向量，称为 fisher 信息阵





