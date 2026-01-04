---
aliases: [Effective Number of Parameters, 有效自由度, Effective Degrees of Freedom]
info: 
date: 2025-12-10-星期三 16:35
update: 
tags: [wiki/year2025, wiki/month12, 机器学习/模型评估, 统计学习]
id: wiki20251210163500
banner: "![[astrowalk.gif]]"
---
---

## Def 1 有效参数个数 (Effective Number of Parameters)

对于线性平滑方法，预测值可以写成 $\hat{\mathbf{y}} = \mathbf{S}\mathbf{y}$，其中 $\mathbf{S}$ 是 $N \times N$ 的平滑矩阵（或帽子矩阵）。
有效参数个数（或有效自由度）定义为 $\mathbf{S}$ 的迹 [[Wiki - 矩阵的迹]] ：
$$ 
df(\mathbf{S}) = \text{trace}(\mathbf{S})
$$ 
它推广了普通[[Wiki - 线性回归模型|线性回归]]中参数个数 $d$ 的概念。对于投影矩阵[[Wiki - 正交投影]]（如 OLS），$ext{trace}(\mathbf{S}) = d$ $df(\mathbf{S}) < d$，反映了正则化带来的自由度减少。

## Pro 1 与 Optimism 的关系

训练误差的**乐观 (Optimism)** 与有效参数个数成正比。
$$ 
\sum_{i=1}^N \text{Cov}(\hat{y}_i, y_i) = df(\mathbf{S}) \sigma_\varepsilon^2
$$ 
[[Wiki - 协方差矩阵]]

这构成了 $C_p$ 和 AIC 等准则的基础。

参见：[[Wiki - AIC与BIC]], [[Wiki - 光滑样条]]

