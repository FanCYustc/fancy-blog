---
aliases: 
info: 
date: 2025-06-17-星期二 17:12
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 多元统计分析/主成分分析
id: wiki20250617171247
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 因子模型的参数估计 (Parameter Estimation in Factor Models)

因子分析的核心任务是根据样本协方差矩阵 $\mathbf{S}$ 或相关矩阵 $\mathbf{R}$ 来估计因子载荷矩阵 $\mathbf{L}$ 和特殊方差矩阵 $\mathbf{\Psi}$。主要有两种方法：主因子法和极大似然法。

```ad-proposition
title: 方法一：主因子法 (Principal Factor Method / Principal Component Method)
主因子法是一种基于最小二乘思想的估计方法，旨在最小化模型协方差矩阵 $\mathbf{L}\mathbf{L}^T + \mathbf{\Psi}$ 与样本协方差矩阵 $\mathbf{S}$ 之间的差异。一个常用的变体是**主成分法**，其步骤如下：

1.  **近似协方差矩阵**: 该方法首先忽略特殊方差 $\mathbf{\Psi}$，直接用 $\mathbf{L}\mathbf{L}^T$ 来近似样本协方差矩阵 $\mathbf{S}$。其目标是寻找最优的秩为 $m$ 的矩阵 $\hat{\mathbf{L}}\hat{\mathbf{L}}^T$ 来逼近 $\mathbf{S}$，即最小化 $||\mathbf{S} - \mathbf{L}\mathbf{L}^T||_F^2$。

2.  **谱分解**: 对样本协方差矩阵 $\mathbf{S}$ (或相关矩阵 $\mathbf{R}$) 进行谱分解：
    $$
    \mathbf{S} = \mathbf{V}\mathbf{\Lambda}\mathbf{V}^T = \sum_{i=1}^{p} \lambda_i \mathbf{v}_i \mathbf{v}_i^T
    $$
    其中 $\lambda_1 \ge \lambda_2 \ge \dots \ge \lambda_p \ge 0$ 是特征值，$\mathbf{v}_i$ 是对应的正交特征向量。

3.  **估计载荷矩阵 $\mathbf{L}$**: 根据 [[Eckart-Young-Mirsky Theorem]]，$\mathbf{S}$ 的最佳秩 $m$ 逼近是取前 $m$ 个主成分：
    $$
    \hat{\mathbf{L}}\hat{\mathbf{L}}^T = \sum_{i=1}^{m} \lambda_i \mathbf{v}_i \mathbf{v}_i^T = \mathbf{V}_m \mathbf{\Lambda}_m \mathbf{V}_m^T
    $$
    其中 $\mathbf{\Lambda}_m = \text{diag}(\lambda_1, \dots, \lambda_m)$，$\mathbf{V}_m = [\mathbf{v}_1, \dots, \mathbf{v}_m]$。
    因此，载荷矩阵的估计为：
    $$
    \hat{\mathbf{L}} = \mathbf{V}_m \mathbf{\Lambda}_m^{1/2} = [\sqrt{\lambda_1}\mathbf{v}_1, \sqrt{\lambda_2}\mathbf{v}_2, \dots, \sqrt{\lambda_m}\mathbf{v}_m]
    $$

4.  **估计特殊方差 $\mathbf{\Psi}$**: 在得到 $\hat{\mathbf{L}}$ 后，特殊方差可以通过残差来估计：
    $$
    \hat{\psi}_i = s_{ii} - \sum_{j=1}^{m} \hat{l}_{ij}^2
    $$
    即 $\hat{\mathbf{\Psi}} = \text{diag}(\mathbf{S} - \hat{\mathbf{L}}\hat{\mathbf{L}}^T)$。
```

**注释**：主成分法与 [[Wiki - 主成分分析]] 密切相关，但目标不同。PCA 旨在最大化方差解释，而因子分析 [[Wiki - 因子分析]]旨在解释变量间的协方差结构。

[[Wiki - Eckart-Young-Mirsky定理]]

---

## Pro 4 极大似然估计 (Maximum Likelihood Estimation)

```ad-proposition
title: 方法二：极大似然法 (Maximum Likelihood Method)
当假设观测数据 $\mathbf{x}_1, \dots, \mathbf{x}_n$ 来自多元正态分布 $N_p(\boldsymbol{\mu}, \mathbf{\Sigma})$ 且 $\mathbf{\Sigma} = \mathbf{L}\mathbf{L}^T + \mathbf{\Psi}$ 时，可以使用[[极大似然估计 (Maximum Likelihood Estimation)]]。

1.  **似然函数**: 极大似然估计的目标是寻找参数 $\mathbf{L}$ 和 $\mathbf{\Psi}$，使得观测到样本的概率最大。这等价于最小化以下目标函数：
    $$
    F(\mathbf{L}, \mathbf{\Psi}) = \ln|\mathbf{L}\mathbf{L}^T + \mathbf{\Psi}| + \text{tr}(\mathbf{S}(\mathbf{L}\mathbf{L}^T + \mathbf{\Psi})^{-1})
    $$
    其中 $\mathbf{S}$ 是样本协方差矩阵。这是一个需要通过数值优化算法求解的复杂问题。

2.  **唯一性约束**: 由于 [[#Pro 2 因子旋转|因子旋转]] 的不确定性，为了得到唯一解，通常需要施加一个约束，例如要求 $\mathbf{L}^T \mathbf{\Psi}^{-1} \mathbf{L}$ 是一个对角矩阵。

3.  **拟合优度检验**: 极大似然法的一个重要优点是它提供了一个统计检验来评估模型拟合的好坏。可以检验原假设 $H_0$: $m$ 个公共因子足以解释协方差结构。似然比检验统计量为：
    $$
    W = (n-1 - \frac{2p+5}{6} - \frac{2m}{3}) \ln \left( \frac{|\hat{\mathbf{L}}\hat{\mathbf{L}}^T + \hat{\mathbf{\Psi}}|}{|\mathbf{S}|} \right)
    $$
    在 $H_0$ 成立时，$W$ 近似服从自由度为 $df = \frac{1}{2}[(p-m)^2 - (p+m)]$ 的卡方分布 ($\chi^2_{df}$)。若计算出的 p-value 较大（例如 > 0.05），则认为模型拟合良好，接受原假设。
```

相关链接：[[Wiki - Wilks检验]]

[[Wiki - 似然比检验]]

[[Wiki - 卡方分布]]

[[Wiki - 极大似然估计]]

[[Wiki - 协方差矩阵]]

