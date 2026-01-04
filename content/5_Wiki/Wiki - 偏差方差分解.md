---
aliases:
  - 偏差方差分解
info:
date: 2025-12-10-星期三 16:30
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/模型评估
  - 统计学习
  - 回归分析
id: wiki20251210163000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 偏差-方差分解 (Bias-Variance Decomposition)

假设真实模型为 $Y = f(X) + \varepsilon$，其中 $E(\varepsilon) = 0, Var(\varepsilon) = \sigma_\varepsilon^2$。
对于回归问题，在输入点 $x_0$ 处的期望预测误差（平方误差损失）可以分解为：
$$
\begin{align}
Err(x_0) &= E[(Y - \hat{f}(x_0))^2 | X=x_0] \\
&= \sigma_\varepsilon^2 + [E\hat{f}(x_0) - f(x_0)]^2 + E[\hat{f}(x_0) - E\hat{f}(x_0)]^2 \\
&= \textbf{Irreducible Error} + \textbf{Bias}^2 + \textbf{Variance}
\end{align}
$$
-   **不可约误差 (Irreducible Error)** $\sigma_\varepsilon^2$：数据本身的噪声，无法通过模型消除。
-   **偏差平方 (Bias^2)**：模型预测值的期望与真实值之间的差异。反映了模型的**拟合能力**（欠拟合导致高偏差）。
-   **方差 (Variance)**：模型预测值在不同训练集上的波动。反映了模型的**稳定性**（过拟合导致高方差）。

## Pro 1 权衡 (Tradeoff)

模型复杂度通常与偏差和方差呈反比关系：
-   **简单模型**（如[[Wiki - 线性回归模型|线性回归]]）：偏差高，方差低。
-   **复杂模型**（如 [[Wiki - KNN方法|KNN]] k=1）：偏差低，方差高。
模型选择的目标是找到一个复杂度，使得总误差（偏差平方 + 方差）最小。

参见：[[Wiki - 交叉验证]], [[Wiki - 有效参数个数]]