---
aliases:
  - levy中心极限定理
info: 中心极限定理
date: 2025-12-17-星期三
update: 2025-12-17-星期三
tags:
  - 概率论/极限理论
  - wiki/month11
  - wiki/year2023
id: wiki20231116142322
banner: "![[astrowalk.gif]]"
---

# 中心极限定理 (Central Limit Theorem, CLT) 

中心极限定理描述了大量独立随机变量之和的分布逼近于正态分布的现象。它是概率论中最著名的定理之一。

## 1. 标准中心极限定理 (Lindeberg-Lévy CLT)

设 $\{X_n\}_{n\geqslant 1}$ 为**独立同分布 (i.i.d.)** 的随机变量列，满足：
- $\mathbb{E}[X_1] = \mu$ (有限期望) [[Wiki - 数学期望]]
- $\operatorname{Var}(X_1) = \sigma^2 > 0$ (有限方差) [[Wiki - 方差]]

定义标准化和 $S_n^* = \frac{\sum_{i=1}^n X_i - n\mu}{\sigma \sqrt{n}}$。则：

$$ S_n^* \xrightarrow{d} N(0, 1), \quad n \to \infty $$


[[Wiki - 依分布收敛]]

**证明思路**:
利用 [[Wiki - 特征函数的展开]] 和 [[Wiki - 分布的连续性定理]]。
$\Phi_{S_n^*}(\theta) = \left( \Phi_{X_1-\mu}\left(\frac{\theta}{\sigma\sqrt{n}}\right) \right)^n \approx \left( 1 - \frac{\theta^2}{2n} \right)^n \to e^{-\theta^2/2}$。

