---
aliases:
  - Target Fragility
info: 目标鲁棒优化中用于衡量无法达成目标成本的风险程度的指标
date: 2025-12-11-星期四 11:02:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化
id: wiki20251211110200
banner: "![[astrowalk.gif]]"
---

# 目标脆弱度 (Target Fragility)

## 定义
**目标脆弱度 (Target Fragility)** 是**目标鲁棒优化 (Target Robustness Optimization)** 或 **鲁棒满意度 (Robust Satisficing)** [[Wiki - 鲁棒满意度]]框架下的核心概念。

当预设的目标成本 $\tau$（Target Cost）设定得过于激进（低于最坏情况下的最小成本），或者环境过于恶劣时，完全满足目标可能是不可能的。目标脆弱度 $\kappa_{\tau}$ 用于量化系统偏离该目标的程度（即系统的“脆弱性”）。

形式化地，对于不确定参数 $z$ 和决策 $x$，定义目标超额变量 $\tilde{\nu} = f(x, z) - \tau$。目标脆弱度 $\rho(\tilde{\nu})$ 是对该超额变量的度量。

## 脆弱度度量 (Fragility Measure) 的性质
类似于[[Wiki - 风险度量]]，一个合理的脆弱度度量 $\rho: \mathcal{L} \to \mathbb{R}$ 应满足以下公理 (Zhu et al., 2021)：
1.  **单调性 (Monotonicity)**：超额越多，脆弱度越高。
2.  **正齐次性 (Positive Homogeneity)**。
3.  **次可加性 (Subadditivity)**。
4.  **稳健性 (Pro-robustness)**：如果 $\tilde{\nu} \leq 0$（即所有情况下都达成目标），则 $\rho(\tilde{\nu}) = 0$。
5.  **反脆弱性 (Anti-fragility)**：如果连平均情况都无法达成目标（$\mathbb{E}[\tilde{\nu}] > 0$），则脆弱度趋于无穷大（或定义为不可接受）。

## 典型形式
基于 [[Wiki - CVaR]] (CVaR) 的脆弱度度量是最常见的形式之一。它可以理解为在最坏的 $\alpha$ -分位点以上，平均超出目标 $\tau$ 的幅度。

## 优化目标
在目标鲁棒优化中，我们的目标不再是直接最小化成本，而是最小化目标脆弱度：
$$
\min_x \rho(f(x, z) - \tau)
$$
这等价于寻找一个决策，使得系统在最坏情况下偏离目标的程度最小，或者说系统对不确定性的容忍度（Safety Margin）最大。

