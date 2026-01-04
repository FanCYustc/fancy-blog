---
aliases: 
info: 
date: 2025-01-08-星期三 20:42
update: 
tags:
  - wiki/month12
  - wiki/year2024
  - 时间序列分析
id: wiki20250108204200
banner: "![[astrowalk.gif]]"
---
---
AR (p) 模型的参数估计是时间序列分析中的核心问题。主要有三种常用方法：Yule-Walker 估计、最小二乘估计和极大似然估计。

## 1. Yule-Walker 估计

对于 AR (p) 模型 [[Wiki - AR模型]]，利用 [[Wiki - Yule-Walker方程]]可以得到 $a_{1},\dots,a_{p},\sigma^{2}$ 的估计

$$
\hat{\boldsymbol{a}}= \hat{\Gamma}_{p}^{-1}\hat{\boldsymbol{\gamma}}_{p}, \hat{\sigma}^{2}= \hat{\gamma_{0}}- \hat{\boldsymbol{a}}^{T}\hat{\boldsymbol{\gamma}}_{p} 
$$
其中 $\hat{\Gamma}_{p},\hat{\boldsymbol{\gamma}_{p}}$ 是 AR (p) 模型基于观测值 $x_{1},\dots,x_{N}$ 得到的自协方差函数估计 [[Wiki - 时间序列自协方差函数的估计]]，且可以保证 $\hat{\Gamma}_{p}$ 正定

### Pro

如果 AR (p) 模型中的 $\{\varepsilon_{t}\}$ 是独立同分布的 WN $(0,\sigma^{2})$ [[Wiki - 白噪声]]，$E\varepsilon_{t}^{4}<\infty$，则当 $N\to\infty$ 时 

- (1) $\hat{\sigma}^{2}\to\sigma^{2}$，$\hat{a}_{j}\to a_{j}$，a.s.，$1\leq j\leq p$. [[Wiki - 几乎处处收敛]]
- (2) $\sqrt{N}(\hat{a}_{1}-a_{1},\ldots,\hat{a}_{p}-a_{p})^{T}$ 依分布收敛到 $p$ 维正态分布 $N(0,\sigma^{2}\Gamma_{p}^{-1})$。 [[Wiki - 中心极限定理]]
- (3) 收敛速度： $\sqrt{N}\sup_{1\leq j\leq p}|\hat{a}_{j}-a_{j}|=O(\sqrt{\ln\ln N})$，a.s.，$\sqrt{N}|\hat{\sigma}^{2}-\sigma^{2}|=O(\sqrt{\ln\ln N})$，a.s.

[[Wiki - Yule-Walker估计]]
## The 2 最小二乘估计

最小二乘估计很简单，使残差平方和最小为目标

$$
\arg\min_{\boldsymbol{a}} \sum_{t=p+1}^{N}(x_{t}-a_{1}x_{t-1}-\dots-a_{p}x_{t-p})^{2}
$$

则可以用多重线性回归模型表示 [[Wiki - 多重线性回归最小二乘估计]]

得到 LS 估计为
$$
\hat{\boldsymbol{a}}=(X^{T}X)^{-1}X^{T}Y,Y= \begin{pmatrix}
x_{p+1} \\
\vdots \\
x_{N}
\end{pmatrix}, X=(x_{p+i-j})_{i=1,\dots,N-p;j=1,\dots,p}
$$

$\sigma^{2}$ 的估计也可以用多重线性回归模型的估计 $\hat{\sigma}^{2}= \frac{1}{N-2p}RSS$ [[Wiki - 线性回归的误差方差估计]]

### Pro 

最小二乘估计也是强相合估计 [[Wiki - 相合估计]]，且与 yule-walker 估计有相同的渐进分布 $\sqrt{N}(\hat{a}_{1}-a_{1},\ldots,\hat{a}_{p}-a_{p})^{T}$ 依分布收敛到 $p$ 维正态分布 $N(0,\sigma^{2}\Gamma_{p}^{-1})$。[[Wiki - 多元正态分布]]

```ad-note

当 N 较小时，yule-walker 估计效果较好，LS 估计对 $\sigma^{2}$ 的估计效果较好。
```


## The 3 极大似然估计

参数 $\boldsymbol{a}$ 的极大似然估计与最小二乘估计等价

$\sigma^{2}$ 的极大似然估计为 $\hat{\sigma}^{2}= \frac{1}{N-p} RSS$

[[Wiki - 极大似然估计]]


## The 4 谱估计

对于 AR (p) 模型的谱密度，如果得到 AR 模型阶数的估计 $\hat{p}$ [[Wiki - AR模型的定阶]]，则谱估计为
$$
\hat{f}(\lambda)= \frac{\hat{\sigma}^{2}}{2\pi}| 1-\sum_{j=1}^{\hat{p}}\hat{a}_{j}e^{ij\lambda}|^{-2}
$$
[[Wiki - 平稳序列的谱]]

### Pro

如果 AR (p) 模型中的 $\{\varepsilon_{t}\}$ 是独立同分布的 WN $(0,\sigma^{2})$ [[Wiki - 白噪声]]，$E\varepsilon_{t}^{4}<\infty$，则当 $N\to\infty$ 时 

- (1) $\hat{\sigma}^{2}\to\sigma^{2}$，$\hat{a}_{j}\to a_{j}$，a.s.，$1\leq j\leq p$. [[Wiki - 几乎处处收敛]]
- (2) $\sqrt{N}(\hat{a}_{1}-a_{1},\ldots,\hat{a}_{p}-a_{p})^{T}$ 依分布收敛到 $p$ 维正态分布 $N(0,\sigma^{2}\Gamma_{p}^{-1})$。 [[Wiki - 中心极限定理]]
- (3) 收敛速度： $\sqrt{N}\sup_{1\leq j\leq p}|\hat{a}_{j}-a_{j}|=O(\sqrt{\ln\ln N})$，a.s.，$\sqrt{N}|\hat{\sigma}^{2}-\sigma^{2}|=O(\sqrt{\ln\ln N})$，a.s.

