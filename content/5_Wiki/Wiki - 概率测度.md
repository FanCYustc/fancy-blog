---
aliases:
info:
date: 2025-09-19-星期五 10:41
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 实分析/测度论
  - 概率论/概率空间
id: wiki20250919104115
banner: "![[astrowalk.gif]]"
---
---

# Wiki - 概率测度

## Def 1 概率测度

```ad-definition
title: 概率测度
设 $\mathcal{F}$ 为 $\Omega$ 的一个 $\sigma$-代数，$\mathbb{P}: \mathcal{F} \to [0,1]$ 为一个集函数。若满足：
- (i) $\mathbb{P}(\emptyset) = 0$，$\mathbb{P}(\Omega) = 1$；
- (ii) 对任意互不相交的 $\{A_n\}_{n=1}^\infty \subset \mathcal{F}$，有 $\mathbb{P}\left( \bigcup_{n=1}^\infty A_n \right) = \sum_{n=1}^\infty \mathbb{P}(A_n)$（$\sigma$-可加性）。

则 $\mathbb{P}$ 称为 $\mathcal{F}$ 上的概率测度。概率空间 $(\Omega, \mathcal{F}, \mathbb{P})$ 即 Kolmogorov 公理化。

注：概率测度是归一化有限测度。若 $\mu(\Omega) < \infty$，则 $\mathbb{P}(A) = \mu(A)/\mu(\Omega)$ 为概率测度。
```

相关链接：[[Wiki - σ-代数]]、[[Wiki - 概率空间]]

## Pro 1 概率测度的基本性质

```ad-proposition
title: 有限可加性与连续性
(i) 有限可加性：对有限互不相交 $\{A_i\}_{i=1}^n \subset \mathcal{F}$，$\mathbb{P}\left( \bigcup_{i=1}^n A_i \right) = \sum_{i=1}^n \mathbb{P}(A_i)$。

证明：取 $A_i = \emptyset$ ($i > n$)，由 $\sigma$-可加性得证。

(ii) 连续性：若 $A_n \uparrow A$ ($n \to \infty$)，则 $\mathbb{P}(A_n) \to \mathbb{P}(A)$（下连续）；若 $A_n \downarrow A$，则 $\mathbb{P}(A_n) \to \mathbb{P}(A)$（上连续）。

证明（下连续）：设 $V_n = A_{n+1} \setminus A_n$，则 $A = A_n \cup \bigcup_{j=n}^\infty V_j$，互不相交，故 $\mathbb{P}(A) = \mathbb{P}(A_n) + \sum_{j=n}^\infty \mathbb{P}(V_j)$。由 $\sum \mathbb{P}(V_j) < 1$，$\sum_{j=n}^\infty \mathbb{P}(V_j) \to 0$ ($n \to \infty$)，得 $\lim \mathbb{P}(A_n) = \mathbb{P}(A)$。
```

[[Wiki - 抽象测度]]

注：由连续性，$\mathbb{P}\left( \bigcup_{n=1}^\infty A_n \right) \leqslant \sum_{n=1}^\infty \mathbb{P}(A_n)$（Boole 不等式推广）。

相关链接：[[Wiki - Borel-Cantelli引理]]
## Ex 1 示例：Dirac 测度和经验测度

```ad-proposition
title: Dirac 测度和经验概率测度
对 $x \in \mathbb{R}^d$，定义 $\delta_x(A) = \mathbb{1}_A(x)$ ($A \in \mathcal{B}_{\mathbb{R}^d}$)，则 $\delta_x$ 为 $\mathcal{B}_{\mathbb{R}^d}$ 上的概率测度（Dirac 测度）。

对点列 $\{x_i\}_{i=1}^n$，$\mu^{(n)}(A) = \frac{1}{n} \sum_{i=1}^n \delta_{x_i}(A)$ 为经验概率测度。
```

注：均匀分布空间：$([0,1], \mathcal{B}_{[0,1]}, m)$，$m$ 为 Lebesgue 测度（由 Carathéodory 延拓定理构造）。

相关链接：[[Wiki - lebesgue可测]]

## The 2 Carathéodory 延拓定理

```ad-theorem
title: Carathéodory 延拓定理
设 $\mathcal{A}$ 为代数，$\mu_0: \mathcal{A} \to [0,\infty]$ 在 $\mathcal{A}$ 上 $\sigma$-可加，则存在 $(\Omega, \sigma(\mathcal{A}))$ 上的测度 $\mu$ 使 $\mu|_{\mathcal{A}} = \mu_0$。若 $\mu_0(\Omega) < \infty$，则 $\mu$ 唯一。

证明：详见源文件2.3节，使用外测度构造。应用：由半开区间代数延拓 Lebesgue 测度至 Borel $\sigma$-代数。
```

[[Wiki - 测度延拓定理]]

注：用于例 2.1（Bernoulli 试验无限次），由有限 $\sigma$ -代数 $\mathcal{F}_n$ 生成 $\mathcal{F}_\infty$（代数），延拓至 $\sigma(\mathcal{F}_\infty)$ 上概率测度。

相关链接：[[Wiki - π-λ定理]]（辅助证明性质）
