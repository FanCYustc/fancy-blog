---
aliases:
  - LDA
  - Linear Discriminant Analysis
info:
date: 2025-12-10-星期三 14:30
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/线性分类
  - 统计学习
id: wiki20251210143000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 线性判别分析 (Linear Discriminant Analysis, LDA)

线性判别分析（LDA）是一种经典的线性分类方法。它假设各类别的条件概率密度函数 $f_k(x)$ 服从多元正态分布[[Wiki - 多元正态分布]]，且所有类别具有相同的协方差矩阵 $\mathbf{\Sigma}_k = \mathbf{\Sigma}$。[[Wiki - 协方差矩阵]]

基于贝叶斯定理 [[Wiki - 全概率公式和贝叶斯公式]]，后验概率为：
$$
\Pr(G=k|X=x) = \frac{f_k(x)\pi_k}{\sum_{l=1}^K f_l(x)\pi_l}
$$
其中 $\pi_k$ 是类别 $k$ 的先验概率。

通过比较对数后验概率比（log-odds），我们可以得到线性的判别函数：
$$
\begin{align}
\delta_k(x) &= x^T \mathbf{\Sigma}^{-1} \mu_k - \frac{1}{2} \mu_k^T \mathbf{\Sigma}^{-1} \mu_k + \log \pi_k
\end{align}
$$
分类规则是 $G(x) = \operatorname{argmax}_k \delta_k(x)$。由于判别边界是 $\delta_k(x) = \delta_l(x)$ 的集合，这在 $x$ 上是线性的，因此称为线性判别分析。

## Pro 1 性质与参数估计

### 参数估计
在实际应用中，高斯分布的参数通常通过训练数据估计：
- $\hat{\pi}_k = N_k / N$
- $\hat{\mu}_k = \sum_{g_i=k} x_i / N_k$
- $\hat{\mathbf{\Sigma}} = \sum_{k=1}^K \sum_{g_i=k} (x_i - \hat{\mu}_k)(x_i - \hat{\mu}_k)^T / (N - K)$

### 降维性质
LDA 不仅用于分类，还可以用于降维。Fisher 判别分析的目标是寻找一个投影方向，使得组间方差（Between-class variance）最大化，同时组内方差（Within-class variance）最小化。
- **组内协方差矩阵**：$\mathbf{W} = \hat{\mathbf{\Sigma}}$
- **组间协方差矩阵**：$\mathbf{B}$ 是类别中心 $\hat{\mu}_k$ 的协方差矩阵。
LDA 寻找的最佳投影方向是 $\mathbf{W}^{-1}\mathbf{B}$ 的特征向量。

最多可以找到 $K-1$ 个判别方向，将数据投影到这 $K-1$ 维子空间中不会损失分类信息。

参见：[[Wiki - 二次判别分析]], [[Wiki - 逻辑斯蒂回归]], [[Wiki - 全概率公式和贝叶斯公式]]
