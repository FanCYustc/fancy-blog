---
aliases:
  - PLS
  - Partial Least Squares
info:
date: 2025-12-10-星期三 13:50
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/线性回归
  - 统计学习
id: wiki20251210135000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 偏最小二乘 (Partial Least Squares, PLS)

偏最小二乘是一种类似于 [[Wiki - 主成分回归]] 的降维回归方法，但它在构造新的特征（方向）时，不仅利用了输入变量 $\mathbf{X}$ 的信息，还利用了响应变量 $\mathbf{y}$ 的信息。

### 算法思路
PLS 试图寻找一组方向，使得在这些方向上，输入变量 $\mathbf{X}$ 的方差较大，同时与响应变量 $\mathbf{y}$ 的相关性也较高。

具体步骤（简化版）：
1.  计算第一方向 $\hat{\varphi}_{1} = \mathbf{X}^T \mathbf{y}$（即每个变量与 $\mathbf{y}$ 的相关性）。
2.  构造派生变量 $\mathbf{z}_1 = \mathbf{X} \hat{\varphi}_{1}$。
3.  将 $\mathbf{y}$ 对 $\mathbf{z}_1$ 回归。
4.  将 $\mathbf{X}$ 对 $\mathbf{z}_1$ 进行正交化（去除 $\mathbf{z}_1$ 的影响）。
5.  在残差矩阵上重复上述过程，直到获得 $M$ 个方向。

## Pro 1 性质与比较

### 监督降维
与 PCR 的非监督降维（只看 $\mathbf{X}$ 的方差）不同，PLS 是监督的。它寻找的方向 $\alpha$ 试图最大化：
$$
\text{Var}(\mathbf{X}\alpha) \cdot \text{Corr}^2(\mathbf{y}, \mathbf{X}\alpha)
$$
即同时考虑方差和相关性。

[[Scientech - 回归分析-相关分析]]
### 与其他方法的比较
-   **PLS vs PCR**：PLS 倾向于用更少的成分解释 $\mathbf{y}$，因为它主动寻找与 $\mathbf{y}$ 相关的方向。但方差项通常占主导地位，使得 PLS 的表现往往与 Ridge 和 PCR 非常相似。
-   **收缩性质**：PLS 的系数路径通常介于最小二乘和岭回归之间。

参见：[[Wiki - 主成分回归]], [[Wiki - 岭回归]]

[[Wiki - 多重线性回归最小二乘估计]]
