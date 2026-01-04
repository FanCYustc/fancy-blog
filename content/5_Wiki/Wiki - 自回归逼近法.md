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
自回归逼近法 (Autoregressive Approximation Method) 是一种用于估计 [[Wiki - ARMA模型]] 参数的方法。其核心思想是，任何一个平稳可逆的 ARMA(p, q) 模型都可以表示为一个无穷阶的自回归 (AR) 模型。通过用一个足够高阶的有限 AR 模型来近似这个无穷阶 AR 模型，可以间接地估计 ARMA 模型的参数。

## 1. 原理

一个平稳可逆的 ARMA(p, q) 模型可以写成：
$\Phi(B) X_t = \Theta(B) \epsilon_t$
其中 $\Phi(B) = 1 - \phi_1 B - \dots - \phi_p B^p$ 和 $\Theta(B) = 1 + \theta_1 B + \dots + \theta_q B^q$ 是自回归和滑动平均算子。
由于模型是可逆的，$\Theta(B)$ 的根都在单位圆外，因此 $\Theta(B)^{-1}$ 存在并且可以表示为无穷阶的 AR算子：
$\Theta(B)^{-1} = 1 + \psi_1 B + \psi_2 B^2 + \dots$
所以，ARMA 模型可以近似表示为：
$\Phi(B) X_t = (1 + \psi_1 B + \psi_2 B^2 + \dots) \epsilon_t$
或者
$X_t = \Phi(B)^{-1} \Theta(B) \epsilon_t = \Psi(B) \epsilon_t$ (无穷阶 MA 表示)
以及
$\Theta(B)^{-1} \Phi(B) X_t = \epsilon_t$ (无穷阶 AR 表示)
即 $X_t = \pi_1 X_{t-1} + \pi_2 X_{t-2} + \dots + \epsilon_t$。

自回归逼近法就是利用这个无穷阶 AR 表示，用一个高阶的 AR(K) 模型来近似它，其中 $K$ 足够大。

## 2. 估计步骤

1.  **拟合高阶 AR(K) 模型**: 将给定的时间序列 {X_t} 视为一个 AR(K) 过程进行拟合，其中 $K$ 远大于 ARMA 模型的真实阶数 $p$ 和 $q$。可以使用 [[Wiki - AR模型的参数估计]] 中的方法，如 Yule-Walker 估计或最小二乘估计，得到参数 $\hat{\pi}_1, \dots, \hat{\pi}_K$。
2.  **估计 AR 部分残差**: 利用估计出的 AR 参数 $\hat{\pi}_j$，计算残差序列 $\hat{\epsilon}_t = X_t - \hat{\pi}_1 X_{t-1} - \dots - \hat{\pi}_K X_{t-K}$。
3.  **最小二乘估计 ARMA 参数**:
    将 ARMA 模型方程重新排列：
    $\Phi(B) X_t = \Theta(B) \epsilon_t$
    $X_t - \sum_{i=1}^p \phi_i X_{t-i} = \epsilon_t + \sum_{j=1}^q \theta_j \epsilon_{t-j}$
    可以写成：
    $X_t = \sum_{i=1}^p \phi_i X_{t-i} + \epsilon_t + \sum_{j=1}^q \theta_j \epsilon_{t-j}$
    在这个方程中，用步骤 2 中估计的残差 $\hat{\epsilon}_t$ 来代替未知的 $\epsilon_t$。
    $X_t \approx \sum_{i=1}^p \phi_i X_{t-i} + \hat{\epsilon}_t + \sum_{j=1}^q \theta_j \hat{\epsilon}_{t-j}$
    这构成了一个线性回归问题，其中 $X_{t-i}$ 和 $\hat{\epsilon}_{t-j}$ 作为回归量，$\phi_i$ 和 $\theta_j$ 作为回归系数。然后可以使用最小二乘法来估计 ARMA 参数。

## 3. 优点与局限性

**优点**:
-   概念相对直观，将复杂的非线性问题转化为一系列线性问题。
-   可以利用成熟的 AR 模型估计技术。

**局限性**:
-   选择合适的 AR 逼近阶数 $K$ 可能比较困难。
-   估计效率可能不如极大似然估计。
-   残差 $\hat{\epsilon}_t$ 是估计量，而不是真实的白噪声，这会引入额外的误差。
