---
aliases: 
info: 
date: 2025-01-08-星期三 19:36
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 时间序列分析
id: wiki20250108193642
banner: "![[astrowalk.gif]]"
---
---

## The 1 自协方差函数估计

如果观测值为 $x_{1},\dots,x_{N}$ 平稳序列[[Wiki - 平稳序列|自协方差函数矩阵]] $\{X_{t}\}$ 的自协方差函数的估计为

$$
\hat{\gamma}_{k}= \frac{1}{N} \sum_{i=1}^{N-k}(x_{i}-\overline{x}_{N})(x_{i+k}-\overline{x}_{N})
$$
其中 $\overline{x}_{N}= \frac{1}{N}\sum_{i=1}^{N}x_{i}$

样本自相关系数的估计为
$$
\hat{\rho}_{k}= \frac{\hat{\gamma}_{k}}{\hat{\gamma_{0}}}, k\leq N-1
$$

## Pro 1 

1. $\hat{\gamma}_{k}$ 是 $\gamma_{k}$ 的渐进无偏估计 [[Wiki - 无偏估计]]，$\lim_{ N \to \infty }\hat{\gamma_{k}}= \gamma_{k}$
2. 如果 $\{X_{t}\}$ 是严平稳列 [[Wiki - 严平稳过程]]，则 $\hat{\gamma}_{k},\hat{\rho}_{k}$ 都是强相合估计 [[Wiki - 几乎处处收敛]]

## Pro 2 正定性

令 $y_{j}=x_{j}-\bar{x}_{N}$，记 

$$ A=\left(\begin{array}{cccccccc} 0 & \cdots & 0 & y_{1} & y_{2} & \cdots & y_{N - 1} & y_{N} \\ 0 & \cdots & y_{1} & y_{2} & y_{3} & \cdots & y_{N} & 0 \\ \vdots & \cdots & \vdots & \vdots & \vdots & \cdots & \vdots & \vdots \\ y_{1} & \cdots & y_{N - 1} & y_{N} & 0 & \cdots & 0 & 0 \end{array}\right) 
$$
则 
$$ \hat{\Gamma}_{N}=\frac{1}{N}AA^{T} $$ 
只要 $y_{j}$ 不全是零则 $A$ 满秩 [[Wiki - 矩阵的秩]]，故 $x_{1},\ldots,x_{N}$ 不全相同时 $\hat{\Gamma}_{N}$ 正定。$\hat{\Gamma}_{n}(1\leq n\leq N)$ 作为 $\hat{\Gamma}_{N}$ 的主子式也是正定的。[[Wiki - 正定矩阵]]

