---
aliases: 
info: 
date: 2024-05-28-星期二 14:51
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240528145112
banner: "![[astrowalk.gif]]"
---
---

针对假设检验 $H_{0}:F(x)=F_{0}(x)$，$F_{0}(x)$ 为已知的连续型分布函数 [[Wiki - 分布函数]]


## The 1 kolmogorov 定理

从样本出发得到经验分布函数 [[Wiki - 经验分布函数]]，记 $D_{n}=sup_{x}|F_{n}(x)-F_{0}(x)|$

若理论分布 $F_0(x)$ 在 $-\infty<x<+\infty$ 处处连续，则当原假设 $H_0$

成立时有
$$\left.\lim\limits_{n\to\infty}P\left(D_n\leqslant\dfrac{\lambda}{\sqrt{n}}\right)=K(\lambda)=\left\{\begin{array}{cc}\sum\limits_{k=-\infty}^\infty(-1)^ke^{-2k^2\lambda^2},&\lambda>0,\\\\0,&\lambda\leqslant0.\end{array}\right.\right.$$

根据查表以及计算，在显著性 $\alpha$ 下，找到对应的 $\frac{\lambda}{\sqrt{ n }}=D_{n,\alpha}$，当 $D_{n}>D_{n,\alpha}$ 时否定 $H_{0}$

