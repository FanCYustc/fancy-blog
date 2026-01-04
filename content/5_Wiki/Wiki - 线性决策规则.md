---
aliases: [Linear Decision Rule, LDR, Affine Decision Rule]
info: 多阶段鲁棒优化中的一种近似求解策略，将适应性决策限制为不确定参数的仿射函数
date: 2025-12-11-星期四 10:55:00
update: 
tags: [wiki/year2025, wiki/month12, 优化, 鲁棒优化]
id: wiki20251211105500
banner: "![[astrowalk.gif]]"
---

# 线性决策规则 (Linear Decision Rule)

## 定义
**线性决策规则 (Linear Decision Rule, LDR)**，又称仿射决策规则 (Affine Decision Rule)，是解决**多阶段鲁棒优化 (Multi-stage Robust Optimization)** 或适应性鲁棒优化 (Adaptive RO) 问题的一种主流近似方法。

[[Wiki - 鲁棒优化]]

[[Wiki - 分布鲁棒优化]]

在多阶段问题中，第二阶段（或后续阶段）的决策变量 $\pmb{y}$ 可以依赖于之前观测到的不确定参数 $\xi$。为了避免无限维的函数优化问题（即寻找最优函数 $\pmb{y}(\xi)$），LDR 假设决策变量与不确定参数之间存在**仿射关系**：
$$
\pmb{y}(\xi) = \pmb{y}^0 + \sum_{i \in I} \pmb{Y}^i \xi_i
$$
其中 $\pmb{y}^0$ 和 $\pmb{Y}^i$ 是待求解的系数。

## 优势与劣势
- **优势 (Tractability)**：LDR 将原本难以求解的函数空间优化问题（通常是 NP-hard）转化为有限维的确定性凸优化问题（如 LP 或 SOCP），极大降低了计算复杂度。
- **劣势 (Optimality Gap)**：由于限制了决策函数的结构，LDR 得到的解通常只是原问题的近似解（上界），可能存在最优性差距。但在许多实际应用中（如库存管理、电网调度），LDR 被证明能提供非常高质量的解。

## 拓展形式 (Extended LDR)
为了提高近似精度，学者们提出了 LDR 的多种变体：
1.  **分段线性决策规则 (Piecewise LDR)**：将不确定集划分为多个区域，在每个区域内使用不同的 LDR。
2.  **拓展式线性决策规则 (Extended LDR)**：Wiesemann et al. (2014) 提出。通过引入辅助变量（Lifting），让决策变量依赖于不确定参数的非线性变换（如 $\xi$ 的绝对值、平方等），从而在保持计算可处理性的同时增强表达能力。
    - $Z^* \leq Z^{Extended} \leq Z^{LDR}$
3.  **事件式近似 (Event-wise Adaptation)**：Chen et al. (2020) 提出，结合了离散情景树和 LDR，在不同的离散事件下采用不同的仿射策略。





