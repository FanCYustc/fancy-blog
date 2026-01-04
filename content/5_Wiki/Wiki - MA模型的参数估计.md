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
MA (q) 模型的参数估计比 AR 模型复杂，主要因为 MA 模型参数与自相关函数的关系是非线性的。常用的估计方法包括矩估计、逆相关函数法和新息估计。

## 1. 矩估计

矩估计是 MA(q) 模型参数的一种简单估计方法，它利用样本自协方差函数来估计模型参数。

利用 MA（q）的协方差函数 q 后截尾，用
$$
\tilde{\gamma}_{k}= \begin{cases}
\hat{\gamma}_{k}= \frac{1}{N}\sum_{i=1}^{N-k}(x_{i}-\overline{x}_{N})(x_{i+k}-\overline{x}_{N}), \quad 0\leq k\leq q \\
0, \quad k>q
\end{cases}
$$
[[Wiki - 时间序列自协方差函数的估计]]

对于 MA (q) 模型，用 $\{\tilde{\gamma}_{k}\}$ 作为 $\{\gamma_{k}\}$ 的估计代入 [[Wiki - MA模型#The 2 递推公式]] 计算公式。记 

$$ A = \begin{pmatrix} 0 & 1 & 0 & \cdots & 0 & 0 \\ 0 & 0 & 1 & \cdots & 0 & 0 \\ \cdots & \cdots & \cdots & \cdots & & \\ 0 & 0 & 0 & \cdots & 0 & 1 \\ 0 & 0 & 0 & \cdots & 0 & 0 \end{pmatrix}_{q\times q} , \quad C = \begin{pmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{pmatrix}_{q\times 1} $$

$$ \Omega_{k} = \begin{pmatrix} \tilde{\gamma}_{1} & \tilde{\gamma}_{2} & \cdots & \tilde{\gamma}_{k} \\ \tilde{\gamma}_{2} & \tilde{\gamma}_{3} & \cdots & \tilde{\gamma}_{k + 1} \\ \cdots & \cdots & \cdots & \cdots \\ \tilde{\gamma}_{q} & \tilde{\gamma}_{q + 1} & \cdots & \tilde{\gamma}_{q + k - 1} \end{pmatrix} , \quad \gamma_{q} = \begin{pmatrix} \tilde{\gamma}_{1} \\ \tilde{\gamma}_{2} \\ \vdots \\ \tilde{\gamma}_{q} \end{pmatrix} $$

矩估计为 
$$ (\hat{b}_{1},\ldots,\hat{b}_{q})^{T} = \frac{1}{\hat{\sigma}^{2}}(\gamma_{q} - A\hat{\Pi}C), \quad \hat{\sigma}^{2} = \hat{\gamma}_{0} - C^{T}\hat{\Pi}C $$
其中 
$$ \hat{\Pi} = \lim_{k\to\infty} \hat{\Omega}_{k}\tilde{\Gamma}_{k}^{-1}\hat{\Omega}_{k} $$

估计法的误差太大， 在中小样本情形无法接受。

## 2. 逆相关函数法

逆相关函数法 (Inverse Autocorrelation Function, IACF) 提供了一种将 MA 模型转化为近似 AR 模型的方法，从而可以利用 AR 模型的估计技术。[[Wiki - 逆相关函数法]]

一个平稳的 MA(q) 模型的逆谱密度可以表示为一个 AR($\infty$) 模型的谱密度。其逆自相关函数 (IACF) 在滞后 q 之后截尾，这与 AR 模型的偏自相关函数具有相似的性质。因此，可以通过估计逆自相关函数来确定 MA 模型的阶数 q，并进行参数估计。

具体步骤通常包括：
1.  估计原始时间序列的自相关函数 (ACF)。
2.  通过谱估计将 ACF 转换为谱密度估计。
3.  计算逆谱密度。
4.  从逆谱密度导出逆自相关函数 (IACF)。
5.  利用 IACF 的截尾性质来估计 MA 模型的阶数和参数。

## 3. 新息估计

新息估计法 (Innovations Estimation) 是 MA 模型参数估计的一种有效方法，特别适用于在数值计算上更稳定的情况。它基于时间序列的最佳线性预测理论。[[Wiki - 新息估计]]

利用最佳线性预报的理论 [[Wiki - 最优线性预测]]，可以得到信息预报为
$$
X_{t+1}= L(X_{t+1}|X_{t},\dots,X_{t-q})= \sum_{j=1}^{q} \hat{\theta}_{t,j} \hat{\epsilon}_{t+1-j}
$$
其中 $\hat{ \epsilon}_{t}= X_{t}-\hat{X_{t}}$，于是当 t 较大时可以用 $\hat{b}_{j}= \hat{\theta}_{t,j}$ 来估计 $b_{j}$

MA (q) 参数的新息估计算法如下： 

- 给定观测数据 $x_{1},x_{2},\ldots,x_{N}$，取 $m = o(N^{1/3})$. 
- 计算样本自协方差函数 $\hat{\gamma}_{0},\hat{\gamma}_{1},\cdots,\hat{\gamma}_{m}$. 
- $\boldsymbol{b}$ 和 $\sigma^{2}$ 的新息估计 
$$ (\hat{b}_{1},\hat{b}_{2},\ldots,\hat{b}_{q}) = (\hat{\theta}_{m,1},\hat{\theta}_{m,2},\ldots,\hat{\theta}_{m,q}), \quad \hat{\sigma}^{2} = \hat{\nu}_{m}$$

由下面的新息预报递推公式得到.：
$$ \begin{cases} \hat{\nu}_{0} = \hat{\gamma}_{0}, \\ \hat{\theta}_{n,n - k} = \hat{\nu}_{k}^{-1}[\hat{\gamma}_{n - k} - \sum_{j = 0}^{k - 1} \hat{\theta}_{k,k - j} \hat{\theta}_{n,n - j} \hat{\nu}_{j}], & 0 \leq k \leq n - 1, \\ \hat{\nu}_{n} = \hat{\gamma}_{0} - \sum_{j = 0}^{n - 1} \hat{\theta}_{n,n - j}^{2} \hat{\nu}_{j}, & 1 \leq n \leq m, \end{cases} $$
其中 $\sum_{j = 0}^{-1}(\cdot) \triangleq 0$. - 递推次序是 

$$ \hat{\nu}_{0}; \hat{\theta}_{1,1},\hat{\nu}_{1}; \hat{\theta}_{2,2},\hat{\theta}_{2,1},\hat{\nu}_{2}; \hat{\theta}_{3,3},\hat{\theta}_{3,2},\hat{\theta}_{3,1},\hat{\nu}_{3};\cdots $$

## 4. 谱估计

同 [[Wiki - AR模型的参数估计#4. 谱估计]]

$$
\hat{f}(\lambda)= \frac{\hat{\sigma}^{2}}{2\pi} |1+\sum_{j=1}^{\hat{q}}\hat{b}_{j}e^{ij\lambda}|^{2}
$$

其中 $\hat{q}$ 是 [[Wiki - MA模型的定阶]]中估计的阶数


