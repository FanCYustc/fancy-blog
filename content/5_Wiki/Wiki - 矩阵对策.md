---
aliases:
  - Matrix Game
  - 二人有限零和博弈
info: 二人有限零和博弈，一方的收益等于另一方的损失
date: 2025-12-17-星期三 10:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 运筹学/博弈论
id: wiki20251217102002
banner: "![[astrowalk.gif]]"
---


# 矩阵对策

**矩阵对策**（Matrix Game）即**二人有限零和对策**。

## 1. 基本要素
*   **局中人**：2人（甲和乙）。
*   **策略集**：有限集。甲有 $m$ 个策略 $\alpha_1, \dots, \alpha_m$，乙有 $n$ 个策略 $\beta_1, \dots, \beta_n$。
*   **赢得矩阵**：$A = (a_{ij})_{m \times n}$。
    *   甲选择 $\alpha_i$，乙选择 $\beta_j$，甲的收益为 $a_{ij}$，乙的收益为 $-a_{ij}$（零和）。

## 2. 纯策略与鞍点
如果满足：
$$
\max_i \min_j a_{ij} = \min_j \max_i a_{ij} = V
$$
则称该对策存在**纯策略纳什均衡**，即**鞍点**（Saddle Point）。$V$ 为对策的值。[[Wiki - 鞍点]]
*   $\\max_i \min_j a_{ij}$：甲在最坏情况下追求最好结果（下界）。
*   $\\min_j \max_i a_{ij}$：乙在甲收益最大时追求最小损失（上界）。

**优超原理**：若某行向量大于另一行（或某列小于另一列），可剔除劣势策略简化矩阵。

## 3. 混合策略
当不存在鞍点时，需引入**混合策略**，即以概率向量 $x=(x_1, \dots, x_m)^T$ 和 $y=(y_1, \dots, y_n)^T$ 进行决策。

**极大极小定理（Minimax Theorem）**：
对于任意矩阵对策，总存在混合策略 $x^*, y^*$ 和数值 $V$，使得：
$$
x^{*T} A y \ge V, \quad \forall y
$$
$$x^T A y^* \le V, \quad \forall x
$$
即混合策略下的最大最小等于最小最大。

## 4. 求解方法
*   **公式法**：适用于 $2 \times 2$ 矩阵。
*   **图解法**：适用于 $2 \times n$ 或 $m \times 2$ 矩阵。
*   **线性规划法**：通用解法。
    *   甲的问题：$\\max \{v\}$ s.t. $\\sum a_{ij} x_i \ge v$, $\\sum x_i=1$.
    *   乙的问题（对偶）：$\\min \{v\}$ s.t. $\\sum a_{ij} y_j \le v$, $\\sum y_j=1$.

[[Scientech - 运筹学-线性规划]]

[[Wiki - Lagrange对偶问题]]