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
谱密度估计是时间序列分析中的重要组成部分，它描述了时间序列中不同频率成分的强度分布。对于参数模型如自回归 (AR)、滑动平均 (MA) 和自回归滑动平均 (ARMA) 模型，我们可以基于估计出的模型参数来得到其参数化的谱密度估计。[[Wiki - 平稳序列的谱]]

## 1. AR 模型的谱密度估计

对于一个平稳的 AR(p) 模型 [[Wiki - AR模型]]：
$X_t = \phi_1 X_{t-1} + \dots + \phi_p X_{t-p} + \epsilon_t$
其谱密度函数为：
$f_{AR}(\lambda) = \frac{\sigma_{\epsilon}^2}{2\pi} \frac{1}{|1 - \sum_{j=1}^p \phi_j e^{-ij\lambda}|^2}$
其中 $\sigma_{\epsilon}^2$ 是白噪声 $\epsilon_t$ 的方差。

如果得到 AR 模型的参数估计 $\hat{\phi}_1, \dots, \hat{\phi}_p$ 和白噪声方差估计 $\hat{\sigma}_{\epsilon}^2$，以及 AR 模型阶数的估计 $\hat{p}$ [[Wiki - AR模型的定阶]]，则谱估计为：
$$
\hat{f}_{AR}(\lambda)= \frac{\hat{\sigma}_{\epsilon}^{2}}{2\pi}| 1-\sum_{j=1}^{\hat{p}}\hat{\phi}_{j}e^{-ij\lambda}|^{-2}
$$

## 2. MA 模型的谱密度估计

对于一个平稳的 MA(q) 模型 [[Wiki - MA模型]]：
$X_t = \epsilon_t + \theta_1 \epsilon_{t-1} + \dots + \theta_q \epsilon_{t-q}$
其谱密度函数为：
$f_{MA}(\lambda) = \frac{\sigma_{\epsilon}^2}{2\pi} |1 + \sum_{j=1}^q \theta_j e^{-ij\lambda}|^2$

如果得到 MA 模型的参数估计 $\hat{\theta}_1, \dots, \hat{\theta}_q$ 和白噪声方差估计 $\hat{\sigma}_{\epsilon}^2$，以及 MA 模型阶数的估计 $\hat{q}$ [[Wiki - MA模型的定阶]]，则谱估计为：
$$
\hat{f}_{MA}(\lambda)= \frac{\hat{\sigma}_{\epsilon}^{2}}{2\pi} |1+\sum_{j=1}^{\hat{q}}\hat{\theta}_{j}e^{-ij\lambda}|^{2}
$$

## 3. ARMA 模型的谱密度估计

对于一个平稳且可逆的 ARMA(p, q) 模型 [[Wiki - ARMA模型]]：
$X_t = \phi_1 X_{t-1} + \dots + \phi_p X_{t-p} + \epsilon_t + \theta_1 \epsilon_{t-1} + \dots + \theta_q \epsilon_{t-q}$
其谱密度函数结合了 AR 和 MA 部分：
$f_{ARMA}(\lambda) = \frac{\sigma_{\epsilon}^2}{2\pi} \frac{|1 + \sum_{j=1}^q \theta_j e^{-ij\lambda}|^2}{|1 - \sum_{j=1}^p \phi_j e^{-ij\lambda}|^2}$

如果得到 ARMA 模型的参数估计 $\hat{\phi}_i, \hat{\theta}_j$ 和白噪声方差估计 $\hat{\sigma}_{\epsilon}^2$，则谱估计为：
$$
\hat{f}_{ARMA}(\lambda) = \frac{\hat{\sigma}_{\epsilon}^{2}}{2\pi} \frac{|1 + \sum_{j=1}^{\hat{q}} \hat{\theta}_{j} e^{-ij\lambda}|^2}{|1 - \sum_{j=1}^{\hat{p}} \hat{\phi}_{j} e^{-ij\lambda}|^2}
$$

参数化谱密度估计的优势在于其平滑性和对模型信息的充分利用。一旦模型参数被准确估计，就可以得到一个相对精确的谱密度函数。

[[Wiki - 平稳序列]]

