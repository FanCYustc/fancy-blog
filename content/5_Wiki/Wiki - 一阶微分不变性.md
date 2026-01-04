---
aliases: 链式法则
info: 一阶微分不变性
date: 2023-03-19-星期日 19:49
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230319194923
banner: "![[astrowalk.gif]]"
---
---
#数学分析/微分
#数学分析/多变量微积分 

## 一阶微分不变性

[[Wiki - 复合函数的微分#链式法则]]

链式法则写成微分[[Wiki - 映射的微分]]形式：$u=f(\xi_{1},\xi_{2},\dots,\xi_{m})$, $\xi_{i}=\phi(x_{1},x_{2},\dots,x_{n})(i=1,2,\dots,m)$.
则有
$$
\mathrm{d}u=\frac{{\partial u}}{\partial\xi_{1}}\mathrm{d\xi_{1}}+\frac{{\partial u}}{\partial\xi_{2}}\mathrm{d}\xi_{2}+\dots+\frac{{\partial u}}{\partial\xi_{m}}d\xi_{m}
$$
$$
=\frac{{\partial u}}{\partial x_{1}}dx_{1}+\frac{{\partial u}}{\partial x_{2}}dx_{2}+\dots+\frac{{\partial u}}{\partial x_{n}}dx_{n}
$$

**只有一阶有不变性**二阶偏导要老老实实求

由 [[Wiki - 全微分]]可得