---
aliases:
  - Phi-divergence Ambiguity Set
info: 基于概率密度比率的统计距离定义的模糊集，包含KL散度等特例
date: 2025-12-11-星期四 10:54:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化/分布鲁棒优化
id: wiki20251211105400
banner: "![[astrowalk.gif]]"
---

# Phi散度模糊集 (Phi-divergence Ambiguity Set)

## 定义
**Phi散度模糊集 (Phi-divergence Ambiguity Set)** 利用 $\phi$-散度来度量真实分布 $\mathbb{P}$ 与参考分布（通常是经验分布 $\hat{\mathbb{P}}$）之间的距离，并限制该距离小于阈值 $\rho$。

$$ 
\mathcal{F}_{\phi} = \left\{ \mathbb{P} \in \mathcal{P}(\Xi) \ \middle| \ D_{\phi}(\mathbb{P} \| \hat{\mathbb{P}}) \leq \rho, \ \sum \mathbb{P}_i = 1, \ \mathbb{P} \geq 0 \right\} 
$$ 

## Phi散度 ($\phi$-divergence)
$\phi$-散度是一类广义的统计距离，定义为：
$$ 
D_{\phi}(\mathbb{P} \| \hat{\mathbb{P}}) = \sum_{i=1}^N \hat{\mathbb{P}}_i \phi\left( \frac{\mathbb{P}_i}{\hat{\mathbb{P}}_i} \right) 
$$ 
其中 $\phi(t)$ 是定义在 $t \geq 0$ 上的凸函数，且通常满足 $\phi(1)=0$。

### 常见的 $\phi$ 函数与对应距离
1.  **KL 散度 (Kullback-Leibler divergence)**:
    - $\phi(t) = t \ln t - t + 1$
    - 对应模型又称相对熵模型。
2.  **卡方距离 (Chi-squared distance)**:
    - $\phi(t) = \frac{1}{t}(t-1)^2$ 或 $(t-1)^2$
3.  **全变差距离 (Total Variation distance)**:
    - $\phi(t) = \frac{1}{2}|t-1|$
4.  **Hellinger 距离**:
    - $\phi(t) = (\sqrt{t}-1)^2$

## 特点与局限
1.  **支撑集限制**：大多数 $\phi$-散度（如 KL 散度）要求 $\mathbb{P}$ 必须绝对连续于 $\hat{\mathbb{P}}$。如果 $\hat{\mathbb{P}}$ 是离散的经验分布，这意味着 $\mathbb{P}$ 也只能在相同的支撑点上取值，无法探索未见过的样本点（Out-of-sample scenarios）。这是其相对于 [[Wiki - Wasserstein模糊集]] 的主要劣势。
2.  **计算性质**：基于 $\phi$-散度的 DRO 问题通常转化为凸优化问题。例如，使用卡方距离通常导出二阶锥规划 (SOCP)。
3.  **似然诠释**：$\phi$-散度球通常对应于非参数似然比检验的置信区间。

## 参考文献
- Ben-Tal, A., Den Hertog, D., De Waegenaere, A., Melenberg, B., & Rennen, G. (2013). Robust solutions of optimization problems affected by uncertain probabilities. *Management Science*.

## 参见
- [[Wiki - 分布鲁棒优化]]
- [[Wiki - Wasserstein模糊集]]
