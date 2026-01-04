---
aliases:
  - Cross-Validation
  - K-Fold CV
info:
date: 2025-12-10-星期三 16:45
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/模型评估
  - 统计学习
id: wiki20251210164500
banner: "![[astrowalk.gif]]"
---


## Def 1 交叉验证 (Cross-Validation)

交叉验证是一种直接估计**期望预测误差** (Expected Prediction Error, $Err$) 的方法。它通过重复利用数据，将数据集随机划分为训练集和测试集，从而在数据稀缺的情况下进行模型评估。

### K-折交叉验证 (K-Fold CV)
将数据分成 $K$ 个大小相等的部分。对于第 $k$ 部分（$k=1,\dots,K$）：
1.  使用其余 $K-1$ 部分的数据拟合模型。
2.  使用第 $k$ 部分的数据计算预测误差。
最终的 CV 估计是 $K$ 个预测误差的平均值。
$$ 
\text{CV}(\hat{f}) = \frac{1}{N} \sum_{i=1}^N L(y_i, \hat{f}^{-\kappa(i)}(x_i)) 
$$ 
通常 $K$ 取 5 或 10。

### 留一法 (Leave-One-Out CV, LOOCV)
当 $K=N$ 时，称为留一法。
-   **优点**：偏差极低（训练集大小接近 $N$）。
-   **缺点**：计算量大；方差较高（各个训练模型之间相关性极强）。

### 广义交叉验证 (Generalized Cross-Validation, GCV)
对于线性拟合方法（如线性回归），LOOCV 统计量可以近似为：
$$
\text{GCV}(\hat{f}) = \frac{1}{N} \sum_{i=1}^N \left[ \frac{y_i - \hat{f}(x_i)}{1 - \text{trace}(\mathbf{S})/N} \right]^2
$$
其中 $\text{trace}(\mathbf{S})$ 是[[Wiki - 有效参数个数]]。GCV 计算更简便，常用于平滑参数的选择。

## Pro 1 性质与应用

-   **偏差-方差权衡**：$K=5$ 或 $10$ 通常是偏差和方差的良好折中。
-   **One-Standard-Error Rule**：在模型选择时，通常选择误差在最小误差的一个标准差范围内的**最简单**模型，以防止过拟合。

### 错误与正确的方式 (The Wrong and Right Way)
**常见的陷阱**：在使用交叉验证进行分类器评估时，如果**特征选择**（如选择与类别相关性最高的前 $k$ 个基因）是**在使用所有数据**的情况下进行的，那么交叉验证的误差估计将严重**向下有偏**（过于乐观）。
**正确做法**：特征选择必须是**交叉验证过程的一部分**。即在每一折 (Fold) 中，仅使用该折的训练集进行特征选择，然后再训练模型。
-   外部特征选择 $\rightarrow$ 内部交叉验证 = **错误**
-   交叉验证 $\rightarrow$ (内部特征选择 + 内部模型训练) = **正确**

参见：[[Wiki - 自助法]], [[Wiki - 偏差方差分解]]
