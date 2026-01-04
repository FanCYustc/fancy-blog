---
aliases: 
info: 
date: 2025-04-29-星期二 16:57
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 多元统计分析
  - 数理统计/假设检验
id: wiki20250429165707
banner: "![[astrowalk.gif]]"
---
---

## The 1 Hotelling T²检验

```ad-definition
title: Hotelling T²分布

设 $X_1,...,X_n \sim N_p(\mu,\Sigma)$ 为来自p维正态总体的样本，样本均值 $\bar{X}$ 和样本协方差矩阵 $S$ 定义为：
$$
\bar{X} = \frac{1}{n}\sum_{i=1}^n X_i ,\quad
S = \frac{1}{n-1}\sum_{i=1}^n (X_i-\bar{X})(X_i-\bar{X})^T
$$
则Hotelling T²统计量定义为：
$$
T^2 = n(\bar{X}-\mu_0)^T S^{-1} (\bar{X}-\mu_0)
$$
其中$\mu_0$为假设的总体均值向量。
```

[[Wiki - 多元正态分布]]

```ad-theorem
title: Hotelling T²检验

用于检验多变量均值向量$\mu$是否等于给定向量$\mu_0$：
$$
H_0: \mu = \mu_0 \quad vs \quad H_1: \mu \neq \mu_0
$$

检验统计量：
$$
F = \frac{n-p}{p(n-1)} T^2 \sim F_{p,n-p}
$$

拒绝域为 $F > F_{p,n-p}(1-\alpha)$，其中$F_{p,n-p}(1-\alpha)$是F分布的上$\alpha$分位数。
```

当 p=1 时就是 t 检验 [[Wiki - 常见假设检验]]

[[Wiki - 多元正态分布的参数估计]]
### Proof

```ad-lemma

假设 $W \sim  {W}_{p}\left( {m,\sum }\right) ,\mathbf{z} \sim  {N}_{p}\left( {\mathbf{0},\sum }\right) ,\sum  > 0,m \geq  p$ , 假设 $W ⫫ \mathbf{z}$ , 则
$$
{\mathbf{z}}^{\top }{W}^{-1}\mathbf{z} \sim  \frac{p}{m - p + 1}{F}_{p,m - p + 1}
$$

```

由 [[Wiki - Wishart分布的性质#Cal 2]] $\frac{{\mathbf{z}}^{\top }{\sum }^{-1}\mathbf{z}}{{\mathbf{z}}^{\top }{W}^{-1}\mathbf{z}} \sim  {\chi }_{m - p + 1}^{2}$ , 与 $\mathbf{z}$ 独立, 而 ${\mathbf{z}}^{\top }{\sum }^{-1}\mathbf{z} \sim  {\chi }_{p}^{2}$ , 由 $F$ 分布的定义

$$
\frac{m - p + 1}{p}{\mathbf{z}}^{\top }{W}^{-1}\mathbf{z} = \frac{{\mathbf{z}}^{\top }{\sum }^{-1}\mathbf{z}/p}{\frac{{\mathbf{z}}^{\top }{\sum }^{-1}\mathbf{z}}{{\mathbf{z}}^{\top }{W}^{-1}\mathbf{z}}/\left( {m - p + 1}\right) } \sim  {F}_{p,m - p + 1}
$$

[[Wiki - F分布]]

$$
\overline{\mathbf{x}} \sim N_{p}(\boldsymbol{\mu}, \Sigma / n) \Rightarrow \mathbf{z} \triangleq \sqrt{n}(\overline{\mathbf{x}}-\boldsymbol{\mu}) \sim N_{p}(\mathbf{0}, \Sigma)
$$

而 $W \triangleq(n-1) S \sim W_{p}(n-1, \Sigma)$ ，于是

$$  \begin{array}{c} \mathbf{z}^{\top} W^{-1} \mathbf{z}=\frac{1}{n-1} n(\overline{\mathbf{x}}-\boldsymbol{\mu})^{\top} S^{-1}(\overline{\mathbf{x}}-\boldsymbol{\mu}) \sim \frac{p}{n-p} F_{p, n-p} \\ \Rightarrow T^{2}=n(\overline{\mathbf{x}}-\boldsymbol{\mu})^{\top} S^{-1}(\overline{\mathbf{x}}-\boldsymbol{\mu})=(n-1) \mathbf{z}^{\top} W^{-1} \mathbf{z} \sim \frac{(n-1) p}{n-p} F_{p, n-p} \end{array}  $$

## The 2 两样本 hotelling 检验

```ad-theorem
title: Theorem 2

考虑两个正态总体: ${\mathbf{x}}_{11},\ldots ,{\mathbf{x}}_{1{n}_{1}}$ iid $\sim  {N}_{p}\left( {{\mathbf{\mu }}_{1},\sum }\right)$ , 样本均值和样本方差 ${\overline{\mathbf{x}}}_{1},{S}_{1}$

${\mathbf{x}}_{21},\ldots ,{\mathbf{x}}_{2{n}_{2}}$ iid $\sim  {N}_{p}\left( {{\mathbf{\mu }}_{2},\sum }\right)$ , 样本均值和样本方差 ${\overline{\mathbf{x}}}_{2},{S}_{2}$。令

$${S}_{p} = \frac{ {\left( {{n}_{1} - 1}\right) {S}_{1} + \left( {{n}_{2} - 1}\right) {S}_{2}}}{\left( {{n}_{1} + {n}_{2} - 2}\right)} 
$$

定义

$$
{T}^{2} = \frac{{n}_{1}{n}_{2}}{{n}_{1} + {n}_{2}}{\left( {\overline{\mathbf{x}}}_{1} - {\overline{\mathbf{x}}}_{2} - \left( {\mathbf{\mu }}_{1} - {\mathbf{\mu }}_{2}\right) \right) }^{\top }{S}^{-1}\left( {{\overline{\mathbf{x}}}_{1} - {\overline{\mathbf{x}}}_{2} - \left( {{\mathbf{\mu }}_{1} - {\mathbf{\mu }}_{2}}\right) }\right)
$$

与单个正态总体的定理 2 类似, 两正态问题有以下结论:

假设 $\sum  > 0,n > p + 1,{T}^{2}$ 如上定义, 则 

```

$$
{T}^{2} \sim  \frac{\left( {n - 2}\right) p}{n - p - 1}{F}_{p,n - p - 1}$$

于是对于零假设 ${H}_{0} : {\mathbf{\mu }}_{1} - {\mathbf{\mu }}_{2} = {\mathbf{\delta }}_{0}\left( {\mathbf{\delta }}_{0}\right.$ 已知) 的 Hotelling ${T}^{2}$ 检验统计量
$$
{T}^{2} = \frac{{n}_{1}{n}_{2}}{{n}_{1} + {n}_{2}}{\left( {\overline{\mathbf{x}}}_{1} - {\overline{\mathbf{x}}}_{2} - {\mathbf{\delta }}_{0}\right) }^{\top }{S}^{-1}\left( {{\overline{\mathbf{x}}}_{1} - {\overline{\mathbf{x}}}_{2} - {\mathbf{\delta }}_{0}}\right) { \sim  }_{{H}_{0}}\frac{\left( {n - 2}\right) p}{n - p - 1}{F}_{p,n - p - 1}$$

当 ${T}^{2} > \frac{\left( {n - 2}\right) p}{n - p - 1}{F}_{p,n - p - 1}\left( \alpha \right)$ 时否定 ${H}_{0}$ (水平 $\alpha$ )。
### Proof 

$\mathbf{z} \triangleq  \left( {{\overline{\mathbf{x}}}_{1} - {\overline{\mathbf{x}}}_{2} - \left( {{\mathbf{\mu }}_{1} - {\mathbf{\mu }}_{2}}\right) }\right) /\sqrt{\frac{1}{{n}_{1}} + \frac{1}{{n}_{2}}} \sim  {N}_{p}\left( {0,\sum }\right)$

$\left( {{n}_{1} - 1}\right) {S}_{1} \sim  {W}_{p}\left( {{n}_{1} - 1,\sum }\right) ,\left( {{n}_{2} - 1}\right) {S}_{2} \sim  {W}_{p}\left( {{n}_{2} - 1,\sum }\right)$ , 两者独立

$$\Rightarrow  W \triangleq  \left( {{n}_{1} - 1}\right) {S}_{1} + \left( {{n}_{1} - 1}\right) {S}_{2} \sim  {W}_{p}\left( {n - 2,\sum }\right)
$$
[[Wiki - Wishart分布]]所以
  $$
 {\mathbf{z}}^{\top }{W}^{-1}\mathbf{z} \sim  \frac{p}{n - p - 1}{F}_{p,n - p - 1},{T}^{2} = \left( {n - 2}\right) {\mathbf{z}}^{\top }{W}^{-1}\mathbf{z} \sim  \frac{\left( {n - 2}\right) p}{n - p - 1}{F}_{p,n - p}$$
 