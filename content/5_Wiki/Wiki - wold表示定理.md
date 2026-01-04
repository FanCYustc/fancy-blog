---
aliases: 
info: 
date: 2025-01-09-星期四 11:27
update: 
tags:
  - wiki/month12
  - wiki/year2024
  - 时间序列分析
  - 随机过程/平稳过程
id: wiki20250109112737
banner: "![[astrowalk.gif]]"
---
---
## The 1 Wold 表示定理

**定理 15.5**：任一非决定性 [[Wiki - 非决定性平稳序列]] 的零均值平稳列可以唯一地分解为：

$$ X_{t} = \sum_{j=0}^{\infty} a_{j}\varepsilon_{t-j} + V_{t}, \quad t \in \mathbb{Z} $$

称为 $\{X_{t}\}$ 的 **Wold 表示**，$\{a_j\}$ 称为 Wold 系数。其中：

(1) $\varepsilon_{t} = X_{t} - L(X_{t}|X_{t-1}, X_{t-2}, \dots)$ 是零均值白噪声 [[Wiki - 白噪声]]，称为 $\{X_t\}$ 的**新息序列** [[Wiki - 新息估计]]。$\sigma^{2} = E\varepsilon_{t}^{2}$ 称为**一步 (线性) 预测的均方误差**。满足：
$$ \begin{align*} E\varepsilon_{t}^{2} &= \sigma^{2} > 0, \quad a_{0} = 1 \\ a_{j} &= E(X_{t}\varepsilon_{t-j})/\sigma^{2} \\ \sum_{j=0}^{\infty}a_{j}^{2} &< \infty \end{align*} $$

(2) $\{U_{t} = \sum_{j=0}^{\infty}a_{j}\varepsilon_{t-j}\}$ 和 $\{V_{t}\}$ 都是平稳列且两者互相正交 ($E(U_s V_t) = 0$)。
    - $U_{t}$ 是 **纯非决定性部分** [[Wiki - 非决定性平稳序列|纯非决定性平稳序列]]。
    - $V_{t}$ 是 **决定性部分** [[Wiki - 非决定性平稳序列|决定性序列]]。

(3) 定义 $H_{\varepsilon}(t) = \overline{\text{sp}}\{\varepsilon_{s}: s \leq t\}$，$H_{U}(t) = \overline{\text{sp}}\{U_{s}: s \leq t\}$，则 $\forall t$ 
$$ H_{U}(t) = H_{\varepsilon}(t) $$

(4) $\{U_{t}\}$ 具有谱密度 [[Wiki - 平稳序列的谱]]：
$$ f(\lambda) = \frac{\sigma^{2}}{2\pi} \left| \sum_{j=0}^{\infty} a_{j}e^{ij\lambda} \right|^{2} $$

(5) $\{V_{t}\}$ 可以由遥远的过去完全决定，即对任何 $t, k \in \mathbb{Z}$，$V_{t} \in H_{t-k}(V)$。



