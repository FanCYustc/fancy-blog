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

## 1. Levinson 递推公式

对于零均值平稳列 $\{X_t\}$ [[Wiki - 平稳序列]]，如果 $\Gamma_{n + 1}$ 正定 [[Wiki - 正定矩阵]]，$\gamma_k$（$k = 0, 1, \dots, n)$ 的 $1, 2, \dots, n, n+1$ 阶 Yule-Walker 系数 [[Wiki - 最优线性预测#Pro 1 yule-walker 系数]] 和均方误差 [[Wiki - 一致最小方差无偏估计|均方误差]] $\sigma_k^2$ 可以通过以下递推公式计算： 

1. 初始化： $\sigma_0^2=\gamma_0$ ，$a_{1, 1}=\gamma_1/\gamma_0$
2. 对于 $k = 1, 2, \dots, n$ ： 
$$
\begin{align*}  
\sigma_{k}^{2}&=\sigma_{k - 1}^{2}(1 - a_{k, k}^{2}) \\
a_{k + 1, k + 1}&=\frac{\gamma_{k + 1}-a_{k, 1}\gamma_{k}-a_{k, 2}\gamma_{k - 1}-\cdots - a_{k, k}\gamma_{1}}{\gamma_{0}-a_{k, 1}\gamma_{1}-a_{k, 2}\gamma_{2}-\cdots - a_{k, k}\gamma_{k}} \\
a_{k + 1, j}&=a_{k, j}-a_{k + 1, k + 1}a_{k, k + 1 - j},\quad 1\leq j\leq k 
\end{align*} 
$$

其中： 
$$
 \sigma_{k}^{2}=E\left (X_{k + 1}-\left (a_{k, 1}X_{k}+\cdots + a_{k, k}X_{1}\right)\right)^{2} 
$$
 
  这里 $\sigma_k^2$ 表示用 $X_k, X_{k - 1}, \dots, X_1$ 预测 $X_{k + 1}$ 的均方误差。


### 理解记忆

在 Yule-Walker 方程中取 $p=k$ 有 [[Wiki - Yule-Walker方程]]

$$
\begin{align}
\sigma^{2} &=\gamma_{0}- \sum_{j=1}^{k}a_{j}\gamma_{j} \\ 
\gamma_{k+1}&- \sum_{j=1}^{k} a_{j}\gamma_{k+1-j} =0
\end{align}
$$
将式中的 $a_j$ 替换成 $a_{kj}$，就代表

$$
a_{k+1,k+1}= \frac{{\gamma_{k+1}-\sum_{j=1}^{k}}a_{kj}\gamma_{k+1-j}}{\sigma_{k}^{2}}= \frac{{\gamma_{k+1}-\sum_{j=1}^{k}}a_{kj}\gamma_{k+1-j}}{\gamma_{0}- \sum_{j=1}^{k}a_{kj}\gamma_{j}}
$$

$\sigma_k^2$ 就是最优线性预测的最小均方误差 [[Wiki - 最优线性预测]]

对于 $a_{k+1,j},j=1,\dots,k$，有矩阵形式
$$
\begin{pmatrix}
a_{k+1,1} \\ 
\vdots \\ 
a_{k+1,k}
\end{pmatrix} = \begin{pmatrix}
a_{k1} \\ 
\vdots \\ 
a_{kk}
\end{pmatrix}- a_{k+1,k+1} \begin{pmatrix}
a_{kk} \\ 
\vdots \\ 
a_{k 1}
\end{pmatrix}
$$

## 2. 在 AR 模型预测中的应用

Levinson 递推公式是求解 Yule-Walker 方程的高效算法（复杂度 $O(n^2)$），因此广泛用于 **AR ($p$) 模型** 的参数估计和预测。[[Wiki - AR模型]]

- **参数估计**：对于 AR($p$) 模型，Yule-Walker 方程给出了自回归系数 $\phi_1, \dots, \phi_p$ 与自协方差函数的关系。利用 Levinson 递推可以直接求出这些系数。
- **预测**：
    - 一步预测：$\hat{X}_{n+1} = \sum_{j=1}^n a_{n,j} X_{n+1-j}$。随着 $n$ 增大，系数 $a_{n,j}$ 会收敛到 AR 模型的真实系数 $\phi_j$。
    - 均方误差：$\sigma_n^2$ 给出了利用 $n$ 个历史数据进行预测时的误差方差。
- **偏自相关函数 (PACF)**：Levinson 递推过程中产生的 $a_{k,k}$ 正是 $k$ 阶偏自相关系数 [[Wiki - 偏自相关函数]]。