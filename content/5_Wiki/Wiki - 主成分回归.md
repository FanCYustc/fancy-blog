---
aliases: [PCR, 主成分回归, Principal Component Regression]
info: 
date: 2025-12-10-星期三 13:45
update: 
tags: [wiki/year2025, wiki/month12, 机器学习/线性回归, 统计学习, 降维]
id: wiki20251210134500
banner: "![[astrowalk.gif]]"
---
---

## Def 1 主成分回归 (Principal Component Regression, PCR)

主成分回归是一种结合了 [[Wiki - 主成分分析]] (PCA) 和线性回归的回归方法。它首先对预测变量 $\mathbf{X}$ 进行 PCA 降维，然后使用提取的主成分作为新的预测变量进行回归分析。

### 算法步骤
1.  对中心化后的输入矩阵 $\mathbf{X}$ 进行奇异值分解 (SVD) 或特征分解，得到主成分 $\mathbf{z}_m = \mathbf{X} v_m$。
2.  选择前 $M$ 个主成分 ($M \leq p$)。
3.  将响应变量 $\mathbf{y}$ 对这 $M$ 个主成分进行线性回归，得到系数 $\hat{\theta}$。
    $$
    \hat{\mathbf{y}}_{(M)}^{pcr} = \bar{y}\mathbf{1} + \sum_{m=1}^M \hat{\theta}_m \mathbf{z}_m
    $$
4.  将结果转换回原始变量 $\mathbf{x}$ 的系数。

[[Wiki - 线性回归模型]]
## Pro 1 性质与比较

### 降维与去噪
PCR 通过丢弃方差较小的后 $p-M$ 个主成分来降低模型复杂度。这相当于假设响应变量主要由输入数据中方差较大的方向决定。

### 与岭回归的联系
PCR 和 [[Wiki - 岭回归]] 都利用了输入矩阵的奇异值分解 [[Wiki - 矩阵的奇异值分解]]（主成分）。
-   **PCR**：直接**截断**（Discard），将后 $p-M$ 个小奇异值对应的成分系数置为 0。
-   **岭回归**：进行**收缩**（Shrink），通过因子 $\frac{d_j^2}{d_j^2 + \lambda}$ 连续地压缩所有成分的系数，方差越小的方向压缩越厉害。

PCR 是离散的（选择整数 $M$ 个成分），而岭回归是连续的（调节 $\lambda$）。

参见：[[Wiki - 岭回归]], [[Wiki - 偏最小二乘]]
