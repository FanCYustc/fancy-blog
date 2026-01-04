---
aliases: 
info: 
date: 2024-12-30-星期一 22:27
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 时间序列分析
  - 随机过程/平稳过程
id: wiki20241230222726
banner: "![[astrowalk.gif]]"
---
---
## Def 1 最小序列

设 $\{X_t: t\in\mathbb{Z}\}$ 是平稳序列 [[Wiki - 平稳序列]]。用 $H_X$ 表示 $\{X_t\}$ 产生的 Hilbert 空间 [[Wiki - Hilbert空间]]，用 $H_X(s)$ 表示由 $\{X_t: t\neq s\}$ 产生的 Hilbert 空间。如果 

$$ H_X \neq H_X (s) $$
对某个 $s\in\mathbb{Z}$ 成立，则称 $\{X_t\}$ 是最小序列。 

对平稳序列，可以证明对某个 $s$ 成立 $H_X(s)\neq H_X$ 则对所有的 $s$ 成立 $H_X(s)\neq H_X$。说明最小序列的每个 $X_t$ 都含有其他 $X_s$ 中没有的信息。可完全线性预测 [[Wiki - 完全线性预测]]的平稳序列（某 $\Gamma_n$ 不满秩）非最小序列。 

## The 1 

设平稳序列 $\{X_t\}$ 有谱密度 $f(\lambda)$，则 $\{X_t\}$ 是最小序列的充分必要条件是 

$$ \int_{-\pi}^{\pi} \frac{d\lambda}{f (\lambda)} < \infty 
$$
[[Wiki - 平稳序列的谱]]

## Pro 1 

最小序列一定是非决定性的 [[Wiki - 完全线性预测]]

