---
aliases:
  - Budget Uncertainty Set
  - Bertsimas-Sim Model
info: Bertsimas & Sim 提出的基于不确定性预算 Gamma 的集合，平衡了保守性与计算效率
date: 2025-12-11-星期四 10:50:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化
id: wiki20251211105000
banner: "![[astrowalk.gif]]"
---

# 预算不确定集 (Budget Uncertainty Set)

## 定义
**预算不确定集 (Budget Uncertainty Set)**，又常被称为 **Bertsimas & Sim 模型** (2004)，是一种特殊且广泛应用的[[Wiki - 多面体不确定集]]。它旨在解决[[Wiki - 盒式不确定集]]过于保守的问题，同时保持线性规划的计算优势。

其核心思想是引入一个**不确定性预算 (Budget of Uncertainty)** 参数 $\Gamma$，限制允许发生偏离的参数的总量。

数学表达为：
$$
\mathcal{U} = \left\{ z : z_i = \bar{z}_i + \hat{z}_i \delta_i, \quad |\delta_i| \leq 1, \quad \sum_{i ∈ J} |\delta_i| ​\leq ​\Gamma \right\}
$$
其中：
- $\bar{z}_i$ 是标称值。
- $\hat{z}_i$ 是最大偏差幅度。
- $\delta_i$ 是归一化的偏差变量，取值在 $[-1, 1]$ 之间。
- $\Gamma$ 是**预算参数**，$\Gamma ​\in ​[0, |J|]$。
    - 当 $\Gamma = 0$ 时，退化为确定性问题（Nominal Problem）。
    - 当 $\Gamma = |J|$ 时，退化为[[Wiki - 盒式不确定集]]（最坏情况）。
    - 当 $0 < ​\Gamma < |J|$ 时，它表示“在所有不确定参数中，最多只有 $\Gamma$ 个参数同时达到最坏边界，其余参数可以有偏差但总和受限”。

## 概率保证 (Probabilistic Guarantee)
Bertsimas & Sim (2004) 证明了，即使实际参数是随机分布的（例如对称分布），使用预算不确定集得到的鲁棒解违反约束的概率也有严格的上界。
$$ 
\text{Prob}(Violation) ​\leq ​\exp​\left(-\frac{\Gamma^2}{2|J|}​\right)
$$ 
这意味着通过调节 $\Gamma$，决策者可以在**鲁棒性 (Robustness)** 和**保守性 (Conservatism)** 之间进行精确的权衡。

## 鲁棒对等式转化
对于线性约束 $\sum_i z_i x_i ​\leq ​ b$，其针对预算不确定集的鲁棒对等式可以转化为纯线性规划：

$$ 
\sum_i \bar{z}_i x_i + ​\Gamma p + ​\sum_i q_i ​\leq ​ b
$$ 
$$ 
p + q_i ​\geq ​ \hat{z}_i |x_i|, ​\quad ​\forall i
$$ 
$$ 
p ​\geq ​ 0, ​\quad q_i ​\geq ​ 0
$$ 
这里 $p, q_i$ 是引入的对偶变量。

[[Wiki - 鲁棒对等式]]
## 意义
预算不确定集是鲁棒优化发展史上的一个里程碑，因为它成功地证明了“鲁棒优化的代价不一定很高”，并且可以在不引入复杂非线性约束（如 SOCP）的前提下提供概率保证，极大地促进了鲁棒优化在工程和管理科学中的应用。

