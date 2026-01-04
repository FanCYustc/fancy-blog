---
aliases: 
info: 
date: 2025-01-03-星期五 11:32
update: 
tags:
  - wiki/month12
  - wiki/year2024
  - 回归分析
  - 机器学习
id: wiki20250103113224
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Box-Cox 变换

对 $y>0$，定义 box-cox 变换为
$$
y^{(\lambda)} = \begin{cases}
 \frac{{y^{\lambda}-1}}{\lambda}, \quad \lambda\neq 0 \\
\log(y), \quad \lambda=0
\end{cases}
$$
如果有 $y\leq 0$，就先平移再变换

BC 变换常用于对数据进行变换，消除线性回归模型 [[Wiki - 线性回归模型]]的异方差性

```ad-hint

Box-Cox 变换是单调变化，不能把 U 型变换成线性。
```

## Pro 1

在处理数据时，可以用极大似然估计 [[Wiki - 极大似然估计]]选取最合适的 $\lambda$ 使得数据最近似多元正态分布

假设经过 BC 变换后的模型满足 $\mathbf{y}^{(\lambda)}\sim N(X\boldsymbol{\beta}, \sigma^{2}I_{n})$

经过求解有似然函数
$$
I_{p}( \lambda)= l( \lambda, \hat{\boldsymbol{\beta}}( \lambda), \hat{\sigma}^{2}( \lambda))= C- \frac{n}{2} \log RSS( \lambda)+ ( \lambda+1)\sum_{i}\log y_{i}
$$

这里是先把 $\boldsymbol{\beta},\sigma^{2}$ 在给定 $\lambda$ 下的极大似然估计求出 [[Wiki - 多重线性回归最小二乘估计]]（即 LS 估计）

[[Wiki - 线性回归的误差方差估计]]，在对 $\lambda$ 单独求极大似然函数

逐点搜索可以找到取最大值的 $\hat{\lambda}$，以及由于分两步估计产生的一个近似置信区间 [[Wiki - 置信区间]]

