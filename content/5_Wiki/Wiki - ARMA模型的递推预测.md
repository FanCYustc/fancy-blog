---
aliases: 
info: 
date: 2025-12-16-星期二 10:00
update: 
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析
id: wiki20251216100005
banner: "![[astrowalk.gif]]"
---

## 1. ARMA 模型的预测方法

对于 [[Wiki - ARMA模型]] $X_t - \phi_1 X_{t-1} - \dots - \phi_p X_{t-p} = \varepsilon_t + \theta_1 \varepsilon_{t-1} + \dots + \theta_q \varepsilon_{t-q}$，其预测方法主要有以下几种：

### 1.1 无限阶 AR 逼近
如果 ARMA 模型是**可逆**的，可以将其表示为 AR($\infty$) 模型：
$$ 
X_t = \sum_{j=1}^\infty \pi_j X_{t-j} + \varepsilon_t 
$$
在实际应用中，可以截断为高阶 AR($m$) 模型进行预测，利用 [[Wiki - Levinson递推公式]]。

### 1.2 递推预测 (Innovations Algorithm)
利用 [[Wiki - 递推预测算法]] 可以精确计算 ARMA 过程的预测。
对于 ARMA($p, q$) 模型，当 $n \ge m = \max(p, q)$ 时，新息系数 $\theta_{n,j}$ 满足特定的简化关系（趋于常数或满足差分方程），使得计算量大大降低。

具体来说，当 $n \ge m$ 时，预测公式为：
$$ 
\hat{X}_{n+1} = \sum_{j=1}^p \phi_j X_{n+1-j} + \sum_{j=1}^q \theta_{n,j} (X_{n+1-j} - \hat{X}_{n+1-j}) 
$$
注意这里的 $\theta_{n,j}$ 是时变的，但随着 $n$ 增大，它们会收敛到模型的 MA 系数 $\theta_j$。

## 2. 变换方法
为了简化计算，可以引入变换：
$$ 
\begin{cases} Y_t = X_t / \sigma, & t=1, \dots, m \\ Y_t = A(\mathscr{B}) X_t / \sigma, & t=m+1, \dots 
\end{cases} 
$$
通过这种变换，可以将原问题转化为对变换后序列 {$Y_t$} 的预测，进而利用新息算法求解。

## 3. 截尾性质
ARMA 模型的预测具有截尾性质（对于 MA 部分）：
$$ 
L(X_{n+k}|H_n) \approx \text{Recursive Formula} 
$$
当 $k > q$ 时，MA 部分的影响消失，预测形式回退为纯 AR 形式的递推。
