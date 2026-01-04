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
Yule-Walker 估计是用于估计自回归 (AR) 模型参数的经典方法。它基于将模型参数与自协方差函数联系起来的 [[Wiki - Yule-Walker方程]]。

## Yule-Walker 方程

对于一个平稳的 AR (p) 模型: [[Wiki - AR模型]]
$X_t = \phi_1 X_{t-1} + \phi_2 X_{t-2} + \dots + \phi_p X_{t-p} + \epsilon_t$

其中 $\epsilon_t$ 是白噪声序列。
Yule-Walker 方程通过将模型两边同乘以 $X_{t-k}$ ($k=1, 2, \dots, p$) 并取期望得到：

$\gamma_k = \phi_1 \gamma_{k-1} + \phi_2 \gamma_{k-2} + \dots + \phi_p \gamma_{k-p}$, for $k > 0$

其中 $\gamma_k$ 是滞后 $k$ 的自协方差函数。
当 $k=1, \dots, p$ 时，我们得到一个线性方程组：
$$
\begin{pmatrix}
\gamma_0 & \gamma_1 & \dots & \gamma_{p-1} \\
\gamma_1 & \gamma_0 & \dots & \gamma_{p-2} \\
\vdots & \vdots & \ddots & \vdots \\
\gamma_{p-1} & \gamma_{p-2} & \dots & \gamma_0
\end{pmatrix}
\begin{pmatrix}
\phi_1 \\
\phi_2 \\
\vdots \\
\phi_p
\end{pmatrix}
=
\begin{pmatrix}
\gamma_1 \\
\gamma_2 \\
\vdots \\
\gamma_p
\end{pmatrix}
$$
这可以简写为 $\Gamma_p \boldsymbol{\phi} = \boldsymbol{\gamma}_p$，其中 $\Gamma_p$ 是自协方差矩阵，$\boldsymbol{\phi}$ 是 AR 参数向量，$\boldsymbol{\gamma}_p$ 是自协方差向量。

在实际应用中，自协方差函数 $\gamma_k$ 需要用样本自协方差函数 $\hat{\gamma}_k$ 来代替 ([[Wiki - 时间序列自协方差函数的估计]])，从而得到 Yule-Walker 估计量 $\hat{\boldsymbol{\phi}}$。

$\hat{\boldsymbol{\phi}} = \hat{\Gamma}_p^{-1} \hat{\boldsymbol{\gamma}}_p$

## 参数的性质 (强相合性与渐近正态性)

在一定的条件下 (例如，AR(p) 模型平稳，且白噪声 $\epsilon_t$ 具有有限的四阶矩)，Yule-Walker 估计量具有良好的统计性质：

1.  **强相合性 (Strong Consistency)**: 当样本量 $N \to \infty$ 时，Yule-Walker 估计量 $\hat{\boldsymbol{\phi}}$ 几乎处处收敛到真实参数 $\boldsymbol{\phi}$。即 $\hat{\boldsymbol{\phi}} \xrightarrow{a.s.} \boldsymbol{\phi}$。[[Wiki - 相合估计]]
2.  **渐近正态性 (Asymptotic Normality)**: 当样本量 $N \to \infty$ 时，$\sqrt{N}(\hat{\boldsymbol{\phi}} - \boldsymbol{\phi})$ 依分布收敛到一个多维正态分布 $N(0, \sigma^2 \Gamma_p^{-1})$。这表明 Yule-Walker 估计量在大样本情况下是渐近有效的。[[Wiki - 多元正态分布]]

这些性质使得 Yule-Walker 估计成为 AR 模型参数估计的重要方法之一。
