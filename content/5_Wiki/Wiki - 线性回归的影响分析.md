---
aliases:
  - Cook距离
info: 
date: 2025-01-03-星期五 11:53
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 回归分析
id: wiki20250103115341
banner: "![[astrowalk.gif]]"
---
---
[[Wiki - 线性回归模型]]

影响分析主要寻找如下数据点：

- 异常点：y 异常
- 高杠杆点：x 异常
- 高影响点：(x, y) 高影响

## 1 异常点

Outlier 判别标准：

残差 $\boldsymbol{e}= (I_{n}-P_{X})\mathbf{y}\to Var[\boldsymbol{e}]= \sigma^{2}(I_{n}-P_{X})$，所以 $Var[e_{i}]= (1-\omega_{ii})\sigma^{2}$，其中 $\omega_{ii}$ 为 $P_{X}$ 第 i 行第 i 列元素

标准化残差记为
$$
r_{i}= \frac{e_{i}}{\hat{\sigma}\sqrt{ 1-\omega_{ii} }}, i=1,\dots,n
$$

其中 $\hat{\sigma}$ 为 $\sigma$ 的估计 [[Wiki - 线性回归的误差方差估计]]

另一种是用剔除 $x_{i}$ 后的误差估计 $\sigma$，即 $\hat{\sigma}^{(-i)}= \sqrt{ \sum_{j\neq i} \frac{e_{j}^{2}}{n-p-1}}$

此时的 student 化残差为

$$
r_{i}^{*} = \frac{e_{i}}{\hat{\sigma}^{(-i)} \sqrt{ 1-\omega_{ii} }}
$$

这样如果 i 是异常点也不会对 $\sigma$ 的估计产生影响

当 $|r_{i}|$ 或 $|r_{i}^{*}|$ 较大时（比如大于 3），我们可以认为 $y_{i}$ 异常

## 2 高杠杆点

利用 ![[Wiki - 线性回归的误差方差估计#Pro 3]]

且 $P_{x}= \frac{\mathbf{11}^{T}}{n}+ Z_{c}(Z_{c}^{T}Z_{c})^{-1}Z_{c}^{T}$

则
$$
\omega_{ii}= \frac{1}{n}+\frac{{(\mathbf{x}_{i}- \overline{\mathbf{x}})^{T}S_{\mathbf{x x}}^{-1}}(\mathbf{x}_{i}-\overline{\mathbf{x}})}{n-1}
$$

其中 $\mathbf{x}_{i}$ 是指 Z 的第 i 行 [[Wiki - 线性模型的中心化]]，$S_{\mathbf{x x}}$ 是样本协方差矩阵 [[Wiki - 线性回归的决定系数]]

[[Wiki - 协方差矩阵]]

有 $\frac{1}{n}\leq \omega_{ii}\leq 1$，$\omega_{ii}$ 越接近 1，$x_{i}$ 的影响越大，称为高杠杆点

## 3 高影响点

综合考虑 $(x_{i},y_{i})$，定义 cook 距离

$$
D_{i}= \frac{1}{p}\times \frac{\omega_{ii}}{1-\omega_{ii}} r_{i}^{2} 
$$
如果 $D_{i}>0.5$，就称为高影响点

