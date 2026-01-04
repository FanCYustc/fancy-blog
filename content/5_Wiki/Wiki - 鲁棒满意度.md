---
aliases:
info: 基于有限理性理论的优化目标，追求在满足约束的前提下最大化安全边际或不确定性容忍度
date: 2025-12-11-星期四 10:56:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化
id: wiki20251211105600
banner: "![[astrowalk.gif]]"
---

# 鲁棒满意度 (Robust Satisficing)

## 定义
**鲁棒满意度 (Robust Satisficing)** 源于 H.A. Simon 的**有限理性 (Bounded Rationality)** 和 **Satisficing**（满意即可）理论。与传统优化追求单一目标最大化不同，满意度模型关注的是寻找一个“足够好”的解，能够满足所有关键约束，并对环境的不确定性具有最大的容忍度。

## 核心模型

### 1. P-模型 (Chance Constraints)
早期的满意度模型（Charnes & Cooper, 1963）试图最大化约束成立的概率：
$$ 
\max \mathbb{P}(\text{Constraints Satisfied}) 
$$ 

### 2. 鲁棒性优化 (Robustness Optimization)
Jaillet et al. (2016) 提出了一个新的视角：与其固定不确定集的大小 $\Gamma$ 求解最小成本，不如**固定成本预算**，求解系统能承受的**最大不确定性**。

**传统鲁棒优化 (Robust Optimization)**:
$$ 
\min Cost \quad \text{s.t. } \forall z \in \mathcal{U}(\Gamma_{fixed}), \text{feasible} 
$$ 

**鲁棒满意度/鲁棒性优化 (Robustness Optimization)**:
$$ 
\max \Gamma \quad \text{s.t. } \forall z \in \mathcal{U}(\Gamma), \text{feasible; } Cost \leq Budget 
$$ 

## 理论基础
Jaillet 等人定义了 **Satisficing Decision Criterion**，证明了任何满足“单调性”（不确定集越大越难满足）和“不可行性”公理的准则，都可以表示为最大化某个参数化不确定集的大小。

## 应用场景
适用于决策者难以精确量化风险厌恶程度（即难以确定 $\Gamma$），但对成本预算有明确限制的场景。例如：
- 在给定的投资预算下，最大化投资组合能抵御的市场波动幅度。
- 在给定的时间窗口内，最大化物流网络能承受的中断规模。


## 参见
- [[Wiki - 鲁棒优化]]
- [[Wiki - 预算不确定集]]
