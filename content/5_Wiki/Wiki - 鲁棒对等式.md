---
aliases:
info: 将含有不确定参数的半无限规划问题转化为可计算的确定性优化问题
date: 2025-12-11-星期四 10:46:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化
id: wiki20251211104600
banner: "![[astrowalk.gif]]"
---

# 鲁棒对等式 (Robust Counterpart)

## 定义
**鲁棒对等式 (Robust Counterpart, RC)** 是指将鲁棒优化中包含的“针对不确定集内所有参数成立”的约束（即半无限约束，Semi-infinite constraints），通过对偶理论或其他数学变换，转化为等价的、有限维的、可直接求解的确定性优化模型（如线性规划 LP、二阶锥规划 SOCP 或半定规划 SDP）。



[[Scientech - 凸优化-凸优化和对偶]]
## 数学推导逻辑
考虑一个典型的线性鲁棒约束：
$$ 
\pmb{a}^{\top} \pmb{x} \leq b, \quad \forall \pmb{a} \in \mathcal{U} 
$$
这等价于要求 $\pmb{a}^{\top} \pmb{x}$ 在集合 $\mathcal{U}$ 上的最大值不超过 $b$：
$$ 
\max_{\pmb{a} \in \mathcal{U}} \left( \pmb{a}^{\top} \pmb{x} \right) \leq b 
$$
**转化步骤**：
1.  **子问题构建**：将 $\max_{\pmb{a} \in \mathcal{U}} (\pmb{a}^{\top} \pmb{x})$ 视为关于不确定参数 $\pmb{a}$ 的优化子问题。
2.  **对偶变换**：利用**对偶理论 (Duality Theory)**，将这个最大化子问题转化为其对偶的最小化问题。（参见 [[Wiki - 拉格朗日乘数法]] 和 [[Wiki - Lagrange对偶问题]]）
3.  **整合**：将对偶后的最小化问题代回原约束，消除 $\max$ 算子，引入新的对偶变量。

## 常见转化示例

### 1. 盒式不确定集 (Box Uncertainty)

- [[Wiki - 盒式不确定集]]
若 $\mathcal{U} = \{ \pmb{a} : \|\pmb{a} - \bar{\pmb{a}}\|_\infty \leq \delta \}$ ，则鲁棒对等式为**线性规划 (LP)**。
$$ 
\bar{\pmb{a}}^{\top} \pmb{x} + \delta \|\pmb{x}\|_1 \leq b 
$$

### 2. 椭球不确定集 (Ellipsoidal Uncertainty)

- [[Wiki - 椭球不确定集]]
若 $\mathcal{U} = \{ \pmb{a} : (\pmb{a} - \bar{\pmb{a}})^{\top} \Sigma^{-1} (\pmb{a} - \bar{\pmb{a}}) \leq \Omega^2 \}$，则鲁棒对等式为**二阶锥规划 (SOCP)**。
$$ 
\bar{\pmb{a}}^{\top} \pmb{x} + \Omega \|\Sigma^{1/2} \pmb{x}\|_2 \leq b 
$$
[[Wiki - 锥]]、[[Wiki - 等式约束凸二次规划]]
### 3. 多面体不确定集 (Polyhedral Uncertainty)
若 $\mathcal{U} = \{ \pmb{a} : \pmb{D} \pmb{a} \leq \pmb{d} \}$，则鲁棒对等式为**线性规划 (LP)**。
[[Scientech - 运筹学-线性规划]]
## 意义
鲁棒对等式的存在使得鲁棒优化问题可以使用成熟的商业求解器（如 Gurobi, CPLEX）进行求解，是鲁棒优化能够落地的核心技术环节。

## 参见
- [[Wiki - 鲁棒优化]]


