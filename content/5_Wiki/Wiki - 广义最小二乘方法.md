---
aliases: 
info: 
date: 2025-01-03-星期五 16:00
update: 
tags:
  - wiki/month12
  - wiki/year2024
  - 回归分析/线性回归
  - 计量经济学
id: wiki20250103160027
banner: "![[astrowalk.gif]]"
---
---
## The 1 广义最小二乘

假设异方差线性模型 $\mathbf{y}= X\boldsymbol{\beta}+ \boldsymbol{\epsilon}$，其中 $\boldsymbol{\epsilon}\sim N(0, \Sigma),\Sigma>0$，$\epsilon$ 与 X 独立

若 $\Sigma= \sigma^{2}\Sigma_{0}$，$\Sigma_{0}$ 已知 $\sigma^{2}$ 未知，则广义最小二乘估计为

$$
\hat{\boldsymbol{\beta}}= (X^{T}\Sigma^{-1}X)^{-1}X^{T}\Sigma^{-1}\mathbf{y}
$$

是方差最小的线性无偏估计，满足

$$
\hat{\boldsymbol{\beta}}=\arg\min_{\boldsymbol{\beta}} (\mathbf{y-X\boldsymbol{\beta}})^{T}\Sigma^{-1}(\mathbf{y}-X\boldsymbol{\beta})
$$

此时估计的方差为
$$
Var[\hat{\boldsymbol{\beta}}|X]= (X^{T}\Sigma^{-1}X)^{-1}
$$

[[Wiki - 多重线性回归最小二乘估计#Pro 2]]

### Proof

模型同乘 $\Sigma^{-\frac{1}{2}}$，得到标准线性回归模型
$$
\Sigma^{-\frac{1}{2}}\mathbf{y}= \Sigma^{-\frac{1}{2}}X\boldsymbol{\beta}+ \Sigma^{-\frac{1}{2}}\boldsymbol{\epsilon}
$$
则最小二乘估计为
$$
\hat{\boldsymbol{\beta}}= (X^{*T}X^{*})^{-1}X^{*T}\mathbf{y}^{*}=(X^{T}\Sigma^{-1}X)^{-1}X^{T}\Sigma^{-1}\mathbf{y}
$$


