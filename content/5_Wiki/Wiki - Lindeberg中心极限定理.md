---
aliases:
  - Lindeberg条件
info: Lindeberg 与 Lindeberg-Feller CLT
date: 2025-12-17-星期三 10:48
update: 2025-12-17-星期三 10:48
tags:
  - wiki
  - 概率论/极限理论
  - wiki/year2025
  - wiki/month12
id: wiki20251217104800
banner: "![[astrowalk.gif]]"
---
---

##  def 1lindeberg 条件

设 $\{X_n\}$ 为独立随机变量序列, $m_k = E[X_k]$，
$σ_k^2 = Var (X_k)$，$s_n^2 = \sum_{k=1}^n σ_k^2$。[[Wiki - 数学期望]]、[[Wiki - 方差]]

对任意 ε > 0，定义 Lindeberg 比率：
$$
L_n(ε) = \frac{1}{s_n^2} \sum_{k=1}^n \mathbb{E} \left[ (X_k - m_k)^2 \mathbb{1}_{\{|X_k - m_k| \geqslant ε s_n\}} \right]
$$

如果对任意 ε > 0，都有 $\lim_{n \to \infty} L_n (\epsilon) = 0$，则称该序列满足 **Lindeberg 条件**。


## The 1. Lindeberg CLT

设 $\{X_n\}_{n \ge 1}$ 为独立平方可积随机变量列。
- 令 $m_k = \mathbb{E}[X_k]$，$σ_k^2 = \operatorname{Var}(X_k)$。
- 令 $s_n^2 = \sum_{k=1}^n σ_k^2$。

如果满足 Lindeberg 条件：对任意 ε > 0，
$$ 
\lim_{n \to \infty} \frac{1}{s_n^2} \sum_{k=1}^n \mathbb{E} \left[ (X_k - m_k)^2 \mathbb{1}_{\{|X_k - m_k| \geqslant \varepsilon s_n\}} \right] = 0 
$$ 

则标准化和依分布收敛于标准正态分布：
$$ 
\frac{\sum_{k=1}^n (X_k - m_k)}{s_n} \xrightarrow{d} N(0, 1) 
$$ 
[[Wiki - 依分布收敛]]
## the 2. Lindeberg-Feller 中心极限定理

Lindeberg-Feller 定理给出了 CLT 成立的充要条件（在 Feller 条件下）。考虑随机变量三角数组 $\{X_{nk}\}$。

假设满足 [[Wiki - Feller条件]]（即单个变量对方差的贡献渐进可忽略）：
$$ \lim_{n \to \infty} \frac{\max_{1 \leqslant k \leqslant n} \sigma_{nk}^2}{s_n^2} = 0 $$ 

则以下两者等价：
1.  **Lindeberg 条件成立**。
2.  **中心极限定理成立**：$S_n/s_n \xrightarrow{d} N(0, 1)$。[[Wiki - 中心极限定理]]

这意味着，在 Feller 条件下，Lindeberg 条件不仅是 CLT 的充分条件，也是必要条件。