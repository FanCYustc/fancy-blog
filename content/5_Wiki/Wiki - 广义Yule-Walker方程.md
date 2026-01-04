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
广义 Yule-Walker 方程是 [[Wiki - Yule-Walker方程]] 在 [[Wiki - ARMA模型]] 参数估计中的扩展应用。对于一个平稳且可逆的 ARMA(p, q) 模型，它提供了一种通过自协方差函数来估计 AR 参数的方法。

## 1. ARMA(p, q) 模型

一个标准的 ARMA(p, q) 模型可以表示为：
$X_t = \phi_1 X_{t-1} + \dots + \phi_p X_{t-p} + \epsilon_t + \theta_1 \epsilon_{t-1} + \dots + \theta_q \epsilon_{t-q}$
其中，$\phi_i$ 是 AR 参数，$\theta_j$ 是 MA 参数，$\epsilon_t$ 是白噪声序列。

## 2. 广义 Yule-Walker 方程

对于 ARMA(p, q) 模型，我们知道当滞后 $k > q$ 时，自协方差函数 $\gamma_k$ 满足与纯 AR(p) 模型相同的差分方程：
$\gamma_k = \phi_1 \gamma_{k-1} + \phi_2 \gamma_{k-2} + \dots + \phi_p \gamma_{k-p}$, for $k > q$

这组方程被称为广义 Yule-Walker 方程。通过选择 $p$ 个连续的滞后 $k = q+1, q+2, \dots, q+p$，我们可以得到一个线性方程组：

$$ \begin{cases}
\gamma_{q+1} = \phi_1 \gamma_q + \phi_2 \gamma_{q-1} + \dots + \phi_p \gamma_{q+1-p} \\
\gamma_{q+2} = \phi_1 \gamma_{q+1} + \phi_2 \gamma_q + \dots + \phi_p \gamma_{q+2-p} \\
\vdots \\
\gamma_{q+p} = \phi_1 \gamma_{q+p-1} + \phi_2 \gamma_{q+p-2} + \dots + \phi_p \gamma_q
\end{cases} $$

这个方程组可以矩阵形式表示为：
$$ \begin{pmatrix}
\gamma_q & \gamma_{q-1} & \dots & \gamma_{q+1-p} \\
\gamma_{q+1} & \gamma_q & \dots & \gamma_{q+2-p} \\
\vdots & \vdots & \ddots & \vdots \\
\gamma_{q+p-1} & \gamma_{q+p-2} & \dots & \gamma_q
\end{pmatrix}
\begin{pmatrix}
\phi_1 \\
\phi_2 \\
\vdots \\
\phi_p
\end{pmatrix}
=
\begin{pmatrix}
\gamma_{q+1} \\
\gamma_{q+2} \\
\vdots \\
\gamma_{q+p}
\end{pmatrix} $$

## 3. 参数估计

在实际应用中，我们用样本自协方差函数 $\hat{\gamma}_k$ 替换理论自协方差函数 $\gamma_k$，从而可以求解上述线性方程组，得到 AR 参数的估计值 $\hat{\phi}_1, \dots, \hat{\phi}_p$。

[[Wiki - Yule-Walker估计]]

一旦 AR 参数被估计，我们可以通过将原始时间序列进行“AR 滤波”来近似得到一个 MA 序列。具体而言，构造残差序列 $Z_t = X_t - \hat{\phi}_1 X_{t-1} - \dots - \hat{\phi}_p X_{t-p}$。如果 $\hat{\phi}_i$ 是真实 AR 参数的良好估计，那么 $Z_t$ 将近似为一个 MA (q) 过程。之后，可以使用 MA 模型的估计方法来估计 MA 参数 $\theta_1, \dots, \theta_q$。[[Wiki - MA模型的参数估计]]

这种方法提供了一种相对简单的方法来初步估计 ARMA 模型的参数，但通常不如极大似然估计那样统计高效。
