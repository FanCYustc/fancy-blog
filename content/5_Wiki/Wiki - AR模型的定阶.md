---
aliases: 
info: 
date: 2025-12-16-星期二 00:00
update: 
tags:
  - wiki/month12
  - wiki/year2025
  - 时间序列分析
id: wiki20251216000000
banner: "![[astrowalk.gif]]"
---
---

## 1. 定阶

AR 模型的定阶是模型建立过程中的关键步骤，它决定了模型的复杂度和拟合能力。常用的定阶方法包括基于偏自相关函数 (PACF) 的截尾性分析以及信息准则 (如 AIC 和 BIC)。

我们可以给出偏自相关系数 [[Wiki - 偏自相关函数]]的估计 $\hat{a}_{k, k}$

$$ \left(\begin{array}{cccc} \hat{\gamma}_{0} & \hat{\gamma}_{1} & \cdots & \hat{\gamma}_{k - 1} \\ \hat{\gamma}_{1} & \hat{\gamma}_{0} & \cdots & \hat{\gamma}_{k - 2} \\ \vdots & \vdots & & \vdots \\ \hat{\gamma}_{k - 1} & \hat{\gamma}_{k - 2} & \cdots & \hat{\gamma}_{0} \end{array}\right) \left(\begin{array}{c} \hat{a}_{k,1} \\ \hat{a}_{k,2} \\ \vdots \\ \hat{a}_{k,k} \end{array}\right) = \left(\begin{array}{c} \hat{\gamma}_{1} \\ \hat{\gamma}_{2} \\ \vdots \\ \hat{\gamma}_{k} \end{array}\right) $$
可以用 Levinson 递推公式 [[Wiki - Levinson递推公式]] 计算样本偏相关系数。


## Pro 1 (基于 PACF 截尾性)

如果 AR (p) 模型 [[Wiki - AR模型]] 中的白噪声 [[Wiki - 白噪声]]时独立同分布的，则对任何 $k\geq p$，有 

$$ \lim_{N\to\infty} \hat{a}_{k,j} = \begin{cases} a_{j}, & \text{当} j\leq p, \\ 0, & \text{当} j > p. \end{cases} \quad \text{a.s.} $$

[[Wiki - 几乎处处收敛]]

## Pro 2

如果 AR (p) 模型的白噪声是独立同分布的则对固定的 $k>p$，有
$$
\sqrt{ N }(\hat{a}_{k,1}-a_{k,1},\dots,\hat{a}_{k,k}- a_{k,k})\xrightarrow{d} N(0, \sigma^{2}\Gamma_{k}^{-1})
$$
其中 $\hat{a_{k,j}}$ 为 Yule-Walker 系数的估计 [[Wiki - 最优线性预测|Yule-Walker系数]]

特别的，$\sqrt{ N }(\hat{a}_{k, k})\xrightarrow{d} N (0, 1), k>p$ [[Wiki - 中心极限定理]]

于是利用 AR (p) 模型偏自相关系数 p 后截尾的性质，就可以画出样本的 PACF 图，通过正态检验给 AR 模型定阶。

## 2. 信息准则定阶

信息准则方法通过权衡模型的拟合优度和模型复杂度来选择最优模型阶数。常用的信息准则有 Akaike 信息准则 (AIC) 和 Bayesian 信息准则 (BIC)。

### 2.1 Akaike 信息准则 (AIC)

AIC 的定义为：
$AIC = -2 \ln(L) + 2k$
其中：
- $L$ 是模型的最大似然函数值。
- $k$ 是模型中独立参数的数量 (对于 AR(p) 模型，通常是 $p+1$，包括 $p$ 个 AR 参数和一个误差方差)。

在实际应用中，通常选择使 AIC 值最小的模型阶数。

### 2.2 Bayesian 信息准则 (BIC)

BIC 的定义为：
$BIC = -2 \ln(L) + k \ln(N)$
其中：
- $L$ 是模型的最大似然函数值。
- $k$ 是模型中独立参数的数量。
- $N$ 是样本量。

与 AIC 类似，通常选择使 BIC 值最小的模型阶数。BIC 对模型复杂度的惩罚比 AIC 更重，因此倾向于选择更简单的模型。

[[Wiki - AIC与BIC]]