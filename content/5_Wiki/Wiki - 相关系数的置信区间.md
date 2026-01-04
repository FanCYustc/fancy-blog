---
aliases: 
info: 
date: 2024-09-14-星期六 10:15
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 数理统计/区间估计
  - 概率论/特征
id: wiki20240914101546
banner: "![[astrowalk.gif]]"
---
---

## The 1 

$(x_{1},y_{1}),\dots,(x_{n},y_{n})$ 服从二元正态 [[Wiki - 多元正态分布]]，总体相关系数 $\rho$，样本相关系数为 r [[Wiki - Pearson相关系数]]，则
$$
\sqrt{ n }( r-\rho)\xrightarrow{d} N(0,(1-\rho^{2})^{2})
$$

[[Wiki - 中心极限定理]]

[[Wiki - 置信区间]]则置信区间为 $\left\{ \rho: |\frac{{\sqrt{ n }(r-p)}}{(1-\rho^{2})}|< z_{\frac{\alpha}{2}} \right\}$

