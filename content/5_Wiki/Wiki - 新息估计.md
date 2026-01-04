---
aliases:
  - 新息
info:
date: 2025-12-16-星期二 00:00
update:
tags:
  - wiki/month12
  - wiki/year2025
  - 时间序列分析
  - 数理统计/点估计
id: wiki20251216000000
banner: "![[astrowalk.gif]]"
---
---
## Def 1 新息 (Innovation)

在时间序列分析中，**新息**定义为观测值 $X_t$ 与其基于历史信息 $H_{t-1} = \text{span}\{X_{t-1}, X_{t-2}, \dots\}$ 的最佳线性预测 [[Wiki - 最优线性预测]] $\hat{X}_t$ 之间的差值：

$$ \varepsilon_t = X_t - \hat{X}_t = X_t - L(X_t|X_{t-1}, X_{t-2}, \dots) $$

对于有限历史预测 $L(X_{n+1}|X_1, \dots, X_n)$，新息记为 $W_{n+1}$ 或 $\varepsilon_{n+1}$。

## Pro 1 性质

1.  **正交性**：新息序列 $\{ \varepsilon_t \}$ 是**两两正交**的（即互不相关，若均值为 0）。
    $$ E(\varepsilon_t \varepsilon_s) = 0, \quad t \ne s $$
    这是因为 $\varepsilon_t$ 是 $X_t$ 在历史子空间上的正交补部分。
2.  **白噪声**：对于**纯非决定性平稳序列** [[Wiki - 非决定性平稳序列|纯非决定性平稳序列]]，其新息序列构成一个方差为 $\sigma^2$ 的白噪声序列 [[Wiki - 白噪声]]。
3.  **等价子空间**：新息序列生成的线性子空间与原序列生成的子空间相同：[[Wiki - 生成子空间]]
    $$ \text{span}\{X_1, \dots, X_n\} = \text{span}\{\varepsilon_1, \dots, \varepsilon_n\} $$
    这使得我们可以用新息的线性组合来表示预测值，大大简化了计算（[[Wiki - 递推预测算法]]）。


## 1. 新息预报公式的递推算法

对于一个平稳时间序列 $\{X_t\}$，我们可以定义其一步向前预测值 $\hat{X}_{t+1} = L(X_{t+1}|X_t, \dots, X_1)$ 和预测误差（新息）$\epsilon_{t+1} = X_{t+1} - \hat{X}_{t+1}$。新息估计法利用这些新息序列的性质来进行参数估计。

MA (q) 参数 [[Wiki - MA模型]] 的新息估计算法通常涉及以下递推公式：

给定观测数据 $x_{1},x_{2},\ldots,x_{N}$，取 $m = o(N^{1/3})$. 
- 计算样本自协方差函数 $\hat{\gamma}_{0},\hat{\gamma}_{1},\cdots,\hat{\gamma}_{m}$. [[Wiki - 平稳序列|自协方差函数矩阵]]
- $\boldsymbol{b}$ 和 $\sigma^{2}$ 的新息估计 
$$ (\hat{b}_{1},\hat{b}_{2},\ldots,\hat{b}_{q}) = (\hat{\theta}_{m,1},\hat{\theta}_{m,2},\ldots,\hat{\theta}_{m,q}), \quad \hat{\sigma}^{2} = \hat{\nu}_{m}$$

由下面的新息预报递推公式得到：
$$ \begin{cases} 
\hat{\nu}_{0} = \hat{\gamma}_{0}, \\ 
\hat{\theta}_{n,n - k} = \hat{\nu}_{k}^{-1}[\hat{\gamma}_{n - k} - \sum_{j = 0}^{k - 1} \hat{\theta}_{k,k - j} \hat{\theta}_{n,n - j} \hat{\nu}_{j}], & 0 \leq k \leq n - 1, \\ 
\hat{\nu}_{n} = \hat{\gamma}_{0} - \sum_{j = 0}^{n - 1} \hat{\theta}_{n,n - j}^{2} \hat{\nu}_{j}, & 1 \leq n \leq m, 
\end{cases} $$
其中 $\sum_{j = 0}^{-1}(\cdot) \triangleq 0$. - 递推次序是 

$$ \hat{\nu}_{0}; \hat{\theta}_{1,1},\hat{\nu}_{1}; \hat{\theta}_{2,2},\hat{\theta}_{2,1},\hat{\nu}_{2}; \hat{\theta}_{3,3},\hat{\theta}_{3,2},\hat{\theta}_{3,1},\hat{\nu}_{3};\cdots $$

## 2. 参数的相合性

新息估计量在一定的条件下具有**相合性 (Consistency)**。[[Wiki - 相合估计]]这意味着当样本量 $N \to \infty$ 时，新息估计量会依概率收敛到真实参数。这表明新息估计法能够在大样本情况下提供可靠的参数估计。

具体来说，如果 MA 模型是可逆的且白噪声序列满足一定的矩条件，新息估计量通常是相合的。
