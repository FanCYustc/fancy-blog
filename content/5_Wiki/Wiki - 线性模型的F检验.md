---
aliases: 
info: 
date: 2025-01-02-星期四 21:21
update: 
tags:
  - wiki/month11
  - 回归分析/线性回归
  - wiki/year2024
  - 数理统计/假设检验
id: wiki20250102212147
banner: "![[astrowalk.gif]]"
---
---

## The 1 wald 检验

对线性回归模型 $\mathbf{y}= X_{n\times p} \boldsymbol{\beta}_{p\times 1}+ \boldsymbol{\epsilon}$，原假设为 $H_{0}: A_{q\times p}\boldsymbol{\beta}= \boldsymbol{\theta}_{0}$，则在原假设下，$\hat{\boldsymbol{\theta}}= A\hat{\boldsymbol{\beta}}$，其中 $\hat{\boldsymbol{\beta}}$ 为 LS 估计 [[Wiki - 多重线性回归最小二乘估计]]，估计的方差估计为
$$
\hat{\Sigma}= \widehat{Var[\hat{\boldsymbol{\theta}|X}]}= \hat{\sigma^{2}} A(X^{T}X)^{-1}A^{T}
$$

则 wald 检验 [[Wiki - wald检验]] 为

$$
W= (A \hat{\boldsymbol{\beta}}-\boldsymbol{\theta}_{0})^{T}(\hat{\sigma}^{2}A(X^{T}X)^{-1}A^{T})^{-1}(A \hat{\boldsymbol{\beta}}-\boldsymbol{\theta}_{0}) \xrightarrow{d} \chi_{q}^{2}
$$

其中 $\hat{\sigma}^{2}$ 为 [[Wiki - 线性回归的误差方差估计]]

[[Wiki - 卡方分布]]
## The 2 F 检验

如果对于线性回归模型有 $\boldsymbol{\epsilon}\sim N(0,\sigma^2I_{n})$ 假设，则可以有 F 检验

$$
F= \frac{W}{q} =\frac{{(A \hat{\boldsymbol{\beta}}-\boldsymbol{\theta}_{0})^{T}(A(X^{T}X)^{-1}A^{T})^{-1}(A \hat{\boldsymbol{\beta}}-\boldsymbol{\theta}_{0})}}{q\hat{\sigma}^{2}} \sim F_{q,n-p}
$$

[[Wiki - F分布]]

应该是要要求 $rank(A)=q$，否则可以减少原假设的约束个数至满秩 [[Wiki - 矩阵的秩]]

### Proof

因为 $A \hat{\boldsymbol{\beta}}|X\sim N(A\boldsymbol{\beta}, \sigma^{2}A(X^{T}X)^{-1}A^{T})$ 由 [[Wiki - 多元正态分布的性质#Pro 4 线性变换]]

所以 $\mathbf{z}= (\sigma^{2}A (X^{T}X)^{-1}A^{T})^{-\frac{1}{2}}(A \hat{\boldsymbol{\beta}}-A \boldsymbol{\beta})\sim N_{q}(0, I_{q})$

于是有 $W= \mathbf{z}^{T}\mathbf{z}\sim \chi_{q}^{2}$

## Pro 1 等价表示

如果约束为 $H_{0}: A\boldsymbol{\beta}= 0$（如果不是一般可以设法消掉 $\boldsymbol{\theta}_{0}$），则由 ![[Wiki - 带约束的最小二乘估计#Pro 1]]
$$
\hat{\boldsymbol{y}}- \hat{\boldsymbol{y}}_{0}= X(X^{T}X)^{-1}A^{T}(A(X^{T}X)^{-1}A^{T})A\hat{\boldsymbol{\beta}}
$$

于是 F 检验量等价表示为
$$
F= \frac{n-p}{q} \frac{\|\hat{\mathbf{y}}-\hat{\mathbf{y}_{0}}\|^{2}}{\|\mathbf{y}- \hat{\mathbf{y}}\|^{2}}
$$

其中 $\hat{\boldsymbol{y}_{0}}=P_{V_{0}}\mathbf{y}, V_{0}= \{X\boldsymbol{\beta}: A\boldsymbol{\beta}=0 \}$

又因为空间的关系，$\|\hat{\mathbf{y}}- \hat{\mathbf{y}_{0}}\|^{2}= \|\mathbf{y}- \hat{\mathbf{y}_{0}}\|^{2}- \|\mathbf{y}- \hat{\mathbf{y}}\|^{2}= RSS_{0}-RSS$

[[Wiki - 正交分解定理]]

[[Wiki - 正交投影]]

所以 F 检验也可以写成
$$
F= \frac{n-p}{q} \frac{RSS_{0}- RSS}{RSS}
$$

[[Wiki - 线性回归的误差方差估计|残差平方和]]

还可以写成

$$
F= \frac{n-p}{q} \frac{R^{2}-R_{0}^{2}}{1-R^{2}}
$$

$R^2,R_{0}^{2}$ 为不带和带约束下的决定系数 [[Wiki - 线性回归的决定系数]]

## Def 1 部分决定系数

定义部分决定系数
$$
R_{par}^{2}=  \frac{R^{2}-R_{0}^{2}}{1-R_{0}^{2}}= \frac{{\|\hat{\mathbf{y}}- \hat{\mathbf{y}_{0}}\|^{2}}}{\|\mathbf{y}- \hat{\mathbf{y}_{0}}\|^{2}}
$$
此时 F 检验统计量写为
$$
F= \frac{n-p}{q} \times \frac{R_{par}^{2}}{1-R_{par}^{2}}
$$
形式统一

特例是如果做检验 $H_{0}: 斜率项均为0$, 则 $q=p-1$，$R_{par}^{2}=R^{2}$

