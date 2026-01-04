---
aliases: 
info: 
date: 2024-12-24-星期二 16:55
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 统计算法
  - 数理统计
id: wiki20241224165558
banner: "![[astrowalk.gif]]"
---
---

## Fisher 得分法

Fisher 得分法是在牛顿法 [[Wiki - 牛顿算法]]的基础上，在求极大似然估计 [[Wiki - 极大似然估计]]的时候应用

在牛顿法中，极大似然估计的迭代应为

$$
\theta_{t+1} = \theta_{t} - (\nabla^{2}l(\theta_{t}))^{-1}\nabla l(\theta_{t})
$$

为了减少求逆的运算量，需要将 [[Wiki - 海塞矩阵]]换成 fisher 信息阵 [[Wiki - Fisher信息函数]]

在一些正则条件下，样本量够大时，有

$$
I_{n}( \theta)= -E\left[ \frac{{\partial l^{2} ( \theta)}}{\partial \theta \partial \theta^{T}} \right]
$$

所以 fisher 得分法的迭代为
$$
\theta_{t+1} = \theta_{t}+ I_{n}(\theta_{t})^{-1} \nabla l( \theta_{t})
$$

