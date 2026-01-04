---
aliases:
  - Wasserstein Distance
  - Kantorovich-Rubinstein Metric
  - Earth Mover's Distance
info: 概率测度空间上的Wasserstein距离定义与性质
date: 2025-12-15-星期一 15:15
update:
tags:
  - wiki/year2025
  - wiki/month12
  - Diffusion
  - 鲁棒优化/分布鲁棒优化
  - 实分析/测度论
id: wiki20240515135925
banner: "![[astrowalk.gif]]"
---
---

# Wasserstein 距离

**Wasserstein 距离**（又称 Earth Mover's Distance, EMD）是度量两个概率分布之间差异的一种重要方式，它源于最优传输理论。与 KL 散度等不同，它利用了底层空间的度量结构。

## 定义

设 $(S, d)$ 是一个 Polish 空间 [[Wiki - 度量空间的完备性]]、[[Wiki - 度量空间的稠密性|度量空间的可分性]]。对于 $p \ge 1$，定义 **$p$ -阶 Wasserstein 空间** $\mathcal{P}_p(S)$ 为所有具有有限 $p$ 阶矩的概率测度集合。

对于 $\mu, \nu \in \mathcal{P}_p(S)$，它们的 **$p$-阶 Wasserstein 距离** 定义为：
$$
W_p(\mu, \nu) := \left( \inf_{\pi \in \Pi(\mu, \nu)} \int_{S \times S} d(x, y)^p \pi(\mathrm{d}x, \mathrm{d}y) \right)^{1/p}
$$
或者用随机变量表示：
$$
W_p(\mu, \nu) = \left( \inf_{(X, Y) \in \tilde{\Pi}(\mu, \nu)} \mathbb{E}[d(X, Y)^p] \right)^{1/p}
$$
其中 $\Pi(\mu, \nu)$ 是所有以 $\mu$ 和 $\nu$ 为边际分布的联合分布（**耦合**, coupling）的集合。

[[Wiki - 数学期望]]
## 重要性质

1.  **度量性**: $W_p$ 是 $\mathcal{P}_p(S)$ 上的一个度量。
2.  **完备性**: 若 $S$ 是 Polish 空间，则 $(\mathcal{P}_p(S), W_p)$ 也是 Polish 空间。
3.  **单调性**: 若 $p \ge q \ge 1$，则 $W_p \ge W_q$。

## Kantorovich-Rubinstein 对偶表示 ($W_1$)

当 $p=1$ 时，$W_1$ 距离（KR 距离）有著名的对偶表示：
$$
W_1(\mu, \nu) = \sup_{g \in C_{\text{Lip}, 1}(S)} \left| \int_S g(x) \mu(\mathrm{d}x) - \int_S g(x) \nu(\mathrm{d}x) \right|
$$
其中 $C_{\text{Lip}, 1}(S)$ 是 Lipschitz 常数不超过 1 的函数集合。

这一性质使得 $W_1$ 距离在计算和理论分析中非常有用（特别是作为 weak convergence 的度量化）。

## 收敛性 (定理 5.23)

在 $\mathcal{P}_p(S)$ 中，$W_p(\mu_n, \mu) \to 0$ 当且仅当：
1.  **依分布收敛**: $\mu_n \Longrightarrow \mu$ (即弱收敛)。[[Wiki - 弱收敛]]
2.  **矩收敛**: $\int d(x_0, x)^p \mu_n(\mathrm{d}x) \to \int d(x_0, x)^p \mu(\mathrm{d}x)$。

这意味着 Wasserstein 收敛比弱收敛更强，它额外要求了矩的收敛。

## 与全变差距离的关系

$$
\inf_{\pi \in \Pi(\mu, \nu)} \pi(x \neq y) = \frac{1}{2} \|\mu - \nu\|_{\text{TV}}
$$
这可以看作是离散度量下的 $W_1$ 距离。

[[Wiki - 有界变差函数|全变差]]
