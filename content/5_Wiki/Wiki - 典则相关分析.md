---
aliases:
  - CCA
info: 
date: 2025-06-18-星期三 10:13
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 多元统计分析/主成分分析
  - 相关
id: wiki20250618101341
banner: "![[astrowalk.gif]]"
---
---
## Def 1 典则相关分析

```ad-definition
title: Def 1 典则相关分析动机
给定随机向量 $X \in \mathbb{R}^p$ 和 $Y \in \mathbb{R}^q$，其联合协方差矩阵：
$$
\Sigma = \begin{pmatrix}
\Sigma_{XX} & \Sigma_{XY} \\
\Sigma_{YX} & \Sigma_{YY}
\end{pmatrix}
$$
CCA 的目标是寻找投影方向 $a \in \mathbb{R}^p, b \in \mathbb{R}^q$ 使得投影后的协方差最大化：
$$
\max_{a,b} \text{cov}(a^T X, b^T Y) = a^T \Sigma_{XY} b
$$
为消除尺度影响，添加约束：
$$
\text{var}(a^T X) = a^T \Sigma_{XX} a = 1, \quad \text{var}(b^T Y) = b^T \Sigma_{YY} b = 1
$$
```

[[Wiki - 协方差矩阵]]


## The 1 CCA 求解

```ad-theorem
title: The 1 CCA 求解定理
令 $A = \Sigma_{XX}^{-1/2} \Sigma_{XY} \Sigma_{YY}^{-1/2}$，其 SVD 分解为 $A = U D V^T$，其中：
- $D = \text{diag}(\sqrt{\lambda_1}, \dots, \sqrt{\lambda_r})$, $\lambda_1 \geq \cdots \geq \lambda_r > 0$
- $U^T U = I_r$, $V^T V = I_r$

则第 $k$ 对典则变量为：
$$
\xi_k = u_k^T \Sigma_{XX}^{-1/2} X, \quad \eta_k = v_k^T \Sigma_{YY}^{-1/2} Y
$$
典则相关系数为 $\sqrt{\lambda_k}$，且满足：
$$
\text{var}\begin{pmatrix} \xi \\ \eta \end{pmatrix} = 
\begin{pmatrix} I_r & D \\ D & I_r \end{pmatrix}, \quad
D = \text{diag}(\sqrt{\lambda_1}, \dots, \sqrt{\lambda_r})
$$
```

[[Wiki - 典则相关系数]]

CCA 计算步骤：
1. **标准化**：$\hat{X} = \Sigma_{XX}^{-1/2} X$, $\hat{Y} = \Sigma_{YY}^{-1/2} Y$
2. **计算相关矩阵**：$A = \text{cov}(\hat{X}, \hat{Y}) = \Sigma_{XX}^{-1/2} \Sigma_{XY} \Sigma_{YY}^{-1/2}$
3. **SVD 分解**：$A = U D V^T$ [[Wiki - 矩阵的奇异值分解]]
4. **典则变换**：
   $$
   \xi = U^T \hat{X}, \quad \eta = V^T \hat{Y} \implies \text{cov}(\xi, \eta) = D
   $$
## Def 2 样本 CCA

```ad-definition
title: 样本 CCA
给定**中心化数据**矩阵 $X_{n \times p}$, $Y_{n \times q}$，样本协方差矩阵：
$$
S = \frac{1}{n-1} \begin{pmatrix} X^T X & X^T Y \\ Y^T X & Y^T Y \end{pmatrix}
$$
1. 计算 $A = S_{XX}^{-1/2} S_{XY} S_{YY}^{-1/2}$
2. SVD 分解：$A = U D V^T$
3. 样本典则变量：
   $$
   \xi_i = u_k^T S_{XX}^{-1/2} x_i, \quad \eta_i = v_k^T S_{YY}^{-1/2} y_i
   $$
典则相关系数为 $\sqrt{\lambda_k}$，其中 $\lambda_k$ 是投影矩阵 $P_X P_Y$ 的特征值。
```

[[Wiki - 正交投影]]

因为 
$$
\begin{align}
A^{T}A&= S_{YY}^{-\frac{1}{2}} S_{YX} S_{XX}^{-1} S_{XY} S_{YY}^{- \frac{1}{2}} \\
&= (Y^{T}Y)^{- \frac{1}{2}} Y^{T}X(X^{T}X)^{-1}X^{T}Y(Y^{T}Y)^{- \frac{1}{2}}
\end{align}
$$

交换乘积顺序不改变特征值 [[Wiki - 特征值和特征向量]]
$$
\lambda(A^{T}A)=\lambda(\Phi) = \lambda(P_{X}P_{Y})
$$


CCA 与 PCA [[Wiki - 主成分分析]]对比

| **特性**       | PCA                          | CCA                          |
|----------------|------------------------------|------------------------------|
| **目标**       | 最大化内部方差               | 最大化组间协方差             |
| **矩阵分解**   | $\Sigma_{XX} = V \Lambda V^T$ | $\Sigma_{XY} = U D V^T$    |
| **变换**       | $z = V^T X$                | $\xi = U^T \hat{X}, \eta = V^T \hat{Y}$ |
| **协方差结构** | $\text{cov}(z) = \Lambda$  | $\text{cov}(\xi, \eta) = D$ |

## Pro 1

```ad-proposition
title: Prop 1 CCA 与回归关系
CCA 等价于对多元线性模型 $Y = B^T X + \epsilon$ 进行对角化：
1. 标准化：$\hat{Y} = \Sigma_{YY}^{-1/2} Y$, $\hat{X} = \Sigma_{XX}^{-1/2} X$
2. 模型转化为：$\hat{Y} = A^T \hat{X} + \epsilon$
3. SVD 分解 $A = U D V^T$ 得：
   $$
   V^T \hat{Y} = D U^T \hat{X} + \delta \implies \eta_k = \sqrt{\lambda_k} \xi_k + \delta_k
   $$
其中 $\sqrt{\lambda_k} = \text{corr}(\eta_k, \xi_k)$ 为第 $k$ 个决定系数。
```

[[Wiki - 决定系数]]
## Pro 2


```ad-proposition
title: 统计检验
检验假设 $H_0: \Sigma_{XY} = 0$（即 $X,Y$ 独立）：
$$
\text{统计量：} \quad T = -n \log \left( \prod_{i=1}^r (1 - \lambda_i) \right) \sim \chi^2_{pq}
$$
其中 $\lambda_i$ 是样本典则相关系数的平方，$r = \text{rank}(\Sigma_{XY})$。
```

[[Wiki - 卡方分布]]

