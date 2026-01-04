---
aliases:
  - Wasserstein Ambiguity Set
info: 基于Wasserstein距离（最优传输距离）定义的概率分布球
date: 2025-12-11-星期四 10:53:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化/分布鲁棒优化
id: wiki20251211105300
banner: "![[astrowalk.gif]]"
---

# Wasserstein模糊集 (Wasserstein Ambiguity Set)

## 定义
**Wasserstein模糊集 (Wasserstein Ambiguity Set)** 是近年来[[Wiki - 分布鲁棒优化]]中极受关注的一类模糊集。它定义为一个以参考分布（通常是经验分布 $\hat{\mathbb{P}}_N$）为中心，**Wasserstein 距离**为半径 $\epsilon$ 的球。

$$ 
\mathcal{F}_W(\epsilon) = \{ \mathbb{P} \in \mathcal{P}(\Xi) : d_W(\mathbb{P}, \hat{\mathbb{P}}_N) \leq \epsilon \} 
$$ 

## Wasserstein 距离

Wasserstein 距离（又称 Earth Mover's Distance, EMD）衡量将一个分布 $P$ “运输”变换为另一个分布 $Q$ 所需的最小成本。对于 $1$-Wasserstein 距离，其定义为：
$$ 
d_W(P, Q) = \inf_{\pi \in \Pi(P, Q)} \int_{\Xi \times \Xi} \| \xi - \xi' \| \pi(d\xi, d\xi') 
$$ 
其中 $\Pi(P, Q)$ 是所有边缘分布分别为 $P$ 和 $Q$ 的联合分布集合。

参见 [[Wiki - Wasserstein距离]]。

## 优势与特点
1.  **数据驱动与统计一致性**：Esfahani & Kuhn (2018) 证明，随着样本量 $N$ 的增加，真实分布包含在 Wasserstein 球内的概率趋近于 1。这使得该方法具有良好的有限样本保证和渐进一致性。
2.  **能够包含连续分布**：即使经验分布 $\hat{\mathbb{P}}_N$ 是离散的（经验狄拉克分布），Wasserstein 球内也包含连续分布。这克服了 $\phi$-散度模糊集（通常要求支撑集相同）的局限性。
3.  **计算可处理性**：尽管 Wasserstein 距离的定义涉及无限维优化，但对应的 DRO 问题通常可以转化为**有限维凸优化**（如线性规划或对偶形式的正则化问题）。
    - 著名的对偶结果表明，Wasserstein DRO 等价于在目标函数中加入**Lipschitz 正则化**项。

[[Scientech - 凸优化-凸优化和对偶]]

