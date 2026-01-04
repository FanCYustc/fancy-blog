---
aliases: 
info: 
date: 2025-01-02-星期四 12:26
update: 
tags:
  - wiki/month11
  - wiki/year2024
  - 回归分析/线性回归
id: wiki20250102122620
banner: "![[astrowalk.gif]]"
---
---

## Def 1 中心化

定义
$$
Z= \begin{pmatrix}
\mathbf{x}_{1}^{T} \\
\vdots \\
\mathbf{x}_{n}^{T}
\end{pmatrix}_{n\times(p-1)}
$$
记 $\overline{\mathbf{x}}= \frac{1}{n}(\mathbf{x}_{1}+\dots+\mathbf{x}_{n})$， 定义 Z 的中心化为
$$
Z_{c}= \begin{pmatrix}
\mathbf{x}_{1}^{T}- \overline{\mathbf{x}}^{T} \\
\vdots \\
\mathbf{x}_{n}^{T}- \overline{\mathbf{x}}^{T}
\end{pmatrix}= Z- \mathbf{1}\overline{\mathbf{x}}^{T}= Z-P_{\mathbf{1}} Z
$$
也就是提取 Z 与 $\mathbf{1}$ 正交的部分 [[Wiki - 正交投影]]

## The 1 线性模型的中心化

记 $\boldsymbol{y} = X\boldsymbol{\beta}+\epsilon$ 中 $X=(\mathbf{1}, Z)_{n\times p}, \boldsymbol{\beta}= (\beta_{0}, \boldsymbol{b})^{T}$，则可以对模型进行中心化

$$
\mathbf{y}= \mathbf{1} \beta_{0}+ (Z_{c}+\mathbf{1}\overline{\mathbf{x}}^{T})\boldsymbol{b} + \boldsymbol{\epsilon}= \mathbf{1}(\beta_{0}+ \overline{\mathbf{x}}^{T}\boldsymbol{b})+ Z_{c}\boldsymbol{b}+ \boldsymbol{\epsilon}
$$

对截距项换元 $\beta_{0}^{*}= \beta_{0}+ \overline{\mathbf{x}}^{T}\boldsymbol{b}$，则 Z 中心化后，截距项改变但斜率项不变

此时对 $\boldsymbol{b}$ 的 LS 估计 [[Wiki - 多重线性回归最小二乘估计]]就可以写为

$$
\begin{align}
\hat{\boldsymbol{b}}= (Z_{c}^{T}Z_{c})^{-1}Z_{c}^{T}\mathbf{y}= S_{\mathbf{x x}}^{-1}S_{\mathbf{x}y} \\
\hat{\beta_{0}}= \overline{y}- \overline{\mathbf{x}}^{T}\hat{\boldsymbol{b}}
\end{align}
$$

其中
$$
S_{\mathbf{ x x}}= \frac{1}{n-1} \sum_{i} (\mathbf{x}_{i}- \overline{\mathbf{x}})(\mathbf{x}_{i}-\overline{x})^{T}= \frac{1}{n-1} Z_{c}^{T}Z_{c}
$$

$$
S_{\mathbf{x}y}= \frac{1}{n-1} Z_{c}^{T}\mathbf{y}
$$

为样本方差-协方差矩阵

