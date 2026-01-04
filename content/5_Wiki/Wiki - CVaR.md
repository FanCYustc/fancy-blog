---
aliases:
info: 条件在险价值
date: 2025-12-11-星期四 11:35
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 鲁棒优化
id: wiki20251211113527
banner: "![[astrowalk.gif]]"
---
---

# 条件在险价值 (Conditional Value-at-Risk)

## 定义
**条件在险价值 (Conditional Value-at-Risk, CVaR)**，也被称为预期亏损 (Expected Shortfall, ES) 或平均在险价值 (Average VaR)[[Wiki - 风险度量]]，是一种衡量尾部风险的指标。它定义为在损失超过**在险价值 (VaR)** 的条件下，损失的期望值。

对于置信水平 $\alpha$（如 95%），如果 $L$ 代表损失变量：
$$
\text{CVaR}_{\alpha}(L) = \mathbb{E}[L \mid L \geq \text{VaR}_{\alpha}(L)]
$$

## 优化定义 (Rockafellar & Uryasev)
CVaR 最重要的特性在于它可以表示为一个凸优化问题的最优值，这使得它极易集成到线性规划或凸规划中。
对于损失变量 $Z$（注意：若 $R$ 为收益，则 $Z=-R$）：
$$
\text{CVaR}_{\alpha}(Z) = \inf_{\nu \in \mathbb{R}} \left\{ \nu + \frac{1}{1-\alpha} \mathbb{E} \left[ (Z - \nu)^+ \right] \right\}
$$
其中 $(x)^+ = \max\{x, 0\}$。
- 最优的 $\nu^*$ 恰好等于 $\text{VaR}_{\alpha}(Z)$。
- 整个表达式是关于 $Z$ 的凸函数 [[Wiki - 凸函数]]。

## 特点
1.  **一致性 (Coherent)**：与 VaR 不同，CVaR 满足次可加性（$\text{CVaR}(X+Y) \leq \text{CVaR}(X) + \text{CVaR}(Y)$），即鼓励分散投资。
2.  **凸性 (Convexity)**：便于优化求解。
3.  **稳健性**：相比 VaR，CVaR 对尾部的极端损失更敏感。

## 分布鲁棒 CVaR

在[[Wiki - 分布鲁棒优化]]中，如果概率分布 $\mathbb{P}$ 不确定但属于某个模糊集 $\mathcal{F}$，则**最坏情况 CVaR (Worst-case CVaR)** 定义为：
$$
\sup_{\mathbb{P} \in \mathcal{F}} \text{CVaR}_{\alpha}^{\mathbb{P}}(Z)
$$
对于[[Wiki - 矩模糊集]]（给定均值和方差），最坏情况 CVaR 往往有解析解或可转化为 SOCP。

