---
aliases: VaR
info:
date: 2025-12-11-星期四 14:13
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 鲁棒优化
id: wiki20251211141327
banner: "![[astrowalk.gif]]"
---
---

# 在险价值 (Value at Risk)

## 定义
**在险价值 (Value at Risk, VaR)** 是金融风险管理中最广泛使用的风险度量指标之一[[Wiki - 风险度量]]。它回答了这样一个问题：“在给定的置信水平和持有期内，资产组合的最大预期损失是多少？”。

数学上，对于置信水平 $\alpha ∈ (0, 1)$（例如 95% 或 99%），如果 $L$ 代表损失变量，VaR 定义为损失分布的 $\alpha$ 分位数：
$$ 
\text{VaR}\_\alpha(L) = \min \{ \gamma : \mathbb{P}(L \leq \gamma) \geq \alpha \} 
$$ 
即损失 $L$ 超过 $\text{VaR}\_\alpha(L)$ 的概率不超过 $1-\alpha$。

## 数学性质
VaR 本质上是一个**分位数 (Quantile)**。
- 对于正态分布，VaR 可以简单表示为：$\mu + \sigma \Phi^{-1}(\alpha)$。
- VaR 通常**不是**凸函数，这使得在优化问题中直接最小化 VaR 往往是困难的（非凸、非平滑），通常需要混合整数规划 (MIP) 或近似方法处理。

## 特点
1.  **直观性**：概念简单清晰，易于向高层管理人员和监管机构解释（例如：“我们有 95% 的把握，今天的损失不会超过 100 万”）。
2.  **非一致性 (Non-Coherent)**：VaR 不满足**次可加性**（$\text{VaR}(X+Y) \not\leq \text{VaR}(X) + \text{VaR}(Y)$）。这意味着分散投资在 VaR 度量下并不总能降低风险。
3.  **尾部风险盲区**：VaR 只关注分位数本身，忽略了超过该阈值的损失程度（即尾部有多“厚”）。这也正是 [[Wiki - CVaR]] 被提出的主要原因。

## 与 CVaR 的关系
由于 VaR 缺乏次可加性和凸性，且无法捕捉极端尾部风险，**条件在险价值 (CVaR)** 被提出作为 VaR 的替代或补充。
$$ 
\text{CVaR}\_\alpha(L) = \mathbb{E}[L \mid L \geq \text{VaR}\_\alpha(L)] 
$$ 
在 [[Wiki - CVaR]] 的 Rockafellar & Uryasev 优化框架中，求解 CVaR 的过程会自然地产生 VaR 作为副产品（最优的辅助变量 $\nu^*$）。