---
aliases: 
info: 
date: 2025-12-16-星期二 10:00
update: 
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析
id: wiki20251216100004
banner: "![[astrowalk.gif]]"
---

## Def 1 递推预测算法 (The Innovations Algorithm)

对于**非平稳**（或平稳）的零均值时间序列 $\{X_t\}$，只要其二阶矩有限，我们可以利用**新息算法 (Innovations Algorithm)** 递推地计算最佳线性预测 $\hat{X}_{n+1} = L (X_{n+1}|X_1, \dots, X_n)$。[[Wiki - 最优线性预测]]

### 核心思想
利用 Gram-Schmidt 正交化 [[Wiki - Schmidt 正交化]]思想，将历史观测值 $X_1, \dots, X_n$ 转化为互不相关的**新息序列** (Innovations) $W_1, \dots, W_n$，其中：
$$
 W_{k+1} = X_{k+1} - \hat{X}_{k+1} = X_{k+1} - L(X_{k+1}|X_1, \dots, X_k) 
$$
由于 $\{W_t\}$ 正交，在 $L^2$ 空间中的投影变得简单：
$$
 \hat{X}_{n+1} = \sum_{j=1}^n \theta_{n,j} (X_{n+1-j} - \hat{X}_{n+1-j}) = \sum_{j=1}^n \theta_{n,j} W_{n+1-j} 
$$

### 递推公式
设 $\nu_n = E (W_{n+1}^2)$ 为预测均方误差，$\kappa (i, j) = E (X_i X_j)$ 为协方差函数（若平稳则为 $\gamma_{i-j}$）。[[Wiki - 协方差矩阵]]

1.  **初始化**：
$$
 \nu_0 = \kappa(1,1), \quad \hat{X}_1 = 0
$$
2.  **递推** $(n=1, 2, \dots)$ ：
    系数计算：
$$
 \theta_{n, n-k} = \nu_k^{-1} \left( \kappa(n+1, k+1) - \sum_{j=0}^{k-1} \theta_{k, k-j} \theta_{n, n-j} \nu_j \right), \quad k=0, \dots, n-1
$$
    均方误差更新：
$$
 \nu_n = \kappa(n+1, n+1) - \sum_{j=0}^{n-1} \theta_{n, n-j}^2 \nu_j
$$
    预测值更新：
$$
 \hat{X}_{n+1} = \sum_{j=1}^n \theta_{n, j} (X_{n+1-j} - \hat{X}_{n+1-j})
$$

## 优点
- 不需要序列平稳，仅需知道协方差函数。
- 相比于直接求解 Yule-Walker 方程 [[Wiki - Yule-Walker方程]]（涉及矩阵求逆），计算更加高效且数值稳定。
- 特别适用于 [[Wiki - ARMA模型]] 的预测（可转化为有限项递推）。

