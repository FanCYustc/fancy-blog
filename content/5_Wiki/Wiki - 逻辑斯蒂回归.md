---
aliases:
  - Logistic Regression
  - 逻辑回归
info:
date: 2025-12-10-星期三 14:40
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/线性分类
  - 统计学习
id: wiki20251210144000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 逻辑斯蒂回归 (Logistic Regression)

逻辑斯蒂回归是一种广泛应用于二分类和多分类问题的线性分类模型。虽然名字中有“回归”，但它主要用于分类。它通过使用 logistic 函数（sigmoid 函数）将线性模型的输出映射到 $[0, 1]$ 区间，从而对后验概率 $\Pr(G=k|X=x)$ 进行建模。

### 二分类模型
$$
\log \frac{\Pr(G=1|X=x)}{\Pr(G=0|X=x)} = \beta_0 + \beta^T x
$$
即
$$
\Pr(G=1|X=x) = \frac{\exp(\beta_0 + \beta^T x)}{1 + \exp(\beta_0 + \beta^T x)} = \frac{1}{1 + \exp(-(\beta_0 + \beta^T x))}
$$

### 多分类模型 (Multinomial)
选取第 $K$ 类作为基准类：
$$
\log \frac{\Pr(G=k|X=x)}{\Pr(G=K|X=x)} = \beta_{k0} + \beta_k^T x, \quad k=1, \dots, K-1
$$
后验概率为：
$$
\Pr(G=k|X=x) = \frac{\exp(\beta_{k0} + \beta_k^T x)}{1 + \sum_{l=1}^{K-1} \exp(\beta_{l0} + \beta_l^T x)}
$$
[[Scientech - 数理统计-贝叶斯方法]]
## Pro 1 求解与性质

### 参数估计
通常使用 **[[Wiki - 极大似然估计]]** (Maximum Likelihood Estimation, MLE) 来估计参数 $\beta$。
对数似然函数为：
$$
\ell(\beta) = \sum_{i=1}^N \log \Pr(G=g_i|X=x_i; \beta)
$$
由于逻辑回归的对数似然函数是关于 $\beta$ 的凹函数，可以通过 **[[Wiki - 牛顿算法]]** 或梯度下降法求得全局最优解。

### 加权迭代最小二乘 (IRLS)
牛顿法求解逻辑回归的过程可以重写为加权迭代最小二乘 (Iteratively Reweighted Least Squares, IRLS) [[Wiki - 迭代加权最小二乘法]]的形式。

### 与 LDA 的关系
- 两者都具有线性的对数几率（log-odds）。
- **LDA**：对 $X$ 和 $G$ 的联合分布进行建模（生成式模型），假设类条件密度为高斯分布。
- **逻辑回归**：直接对条件概率 $\Pr(G|X)$ 进行建模（判别式模型），不假设 $X$ 的分布。
- 逻辑回归更稳健，依赖的假设更少；若高斯假设成立，LDA 效率更高。

参见：[[Wiki - 线性判别分析]]
