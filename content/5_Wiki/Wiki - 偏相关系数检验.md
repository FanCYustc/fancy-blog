---
aliases: 
info: 
date: 2024-09-30-星期一 10:24
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 回归分析
  - 数理统计/假设检验
  - 相关
id: wiki20240930102440
banner: "![[astrowalk.gif]]"
---
---

## The 1 正态偏相关检验

对数据 $(x_{i}, y_{i},\boldsymbol{z}_{i}), i=1,\dots,n$ 总维数为 p，$y_{i}|x_{i},\boldsymbol{z}_{i}$ 服从正态分布。 [[Wiki - 正态分布]]

假设 $H_{0}: \rho_{xy\bullet \boldsymbol{z}}=0$，则在原假设下
$$
T= \sqrt{ n-p } \frac{{r_{xy\bullet \boldsymbol{z}}}}{\sqrt{ 1- r^{2}_{xy\bullet\boldsymbol{z}} }} \sim t_{n-p}
$$

[[Wiki - t分布]]

[[Wiki - 偏相关系数]]

当 $p=2$ 时，就退化成 [[Wiki - 正态相关性检验]]

## The 2 大样本检验

对于大样本检验，同 [[Wiki - 大样本相关性检验]]，$H_{0}$ 下

$$
\sqrt{ n-p }r_{xy\bullet \boldsymbol{z}}或\sqrt{ n } r_{xy\bullet\boldsymbol{z}}\xrightarrow{d} N(0,1)
$$

