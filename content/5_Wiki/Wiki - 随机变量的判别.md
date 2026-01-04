---
aliases:
info:
date: 2025-09-19-星期五 12:31
update:
tags:
  - wiki/year2025
  - wiki/month09
id: wiki20250919123127
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 随机变量的 $\sigma$ -代数

```ad-proposition
title: $\sigma(X)$ 的性质
对 $S$-值函数 $X: \Omega \to S$，$\sigma(X) \subset \mathcal{F}$ 当且仅当 $X$ 为随机变量。

对于 $n$-维 $X = (X_1, \dots, X_n): \Omega \to \mathbb{R}^n$，
$$
\sigma(X) = \sigma\left( \bigcup_{i=1}^n \sigma(X_i) \right) = \sigma\left( \bigcap_{i=1}^n \{X_i \leqslant x_i\} : x_i \in \mathbb{R} \right).
$$
```

[[Wiki - 随机变量]]、[[Wiki - 抽象测度|测度空间]]
### 证明：

由逆像[[Wiki - 函数连续的等价条件|原像]]性质，$X^{-1}(B^c) = [X^{-1}(B)]^c$，$X^{-1}(\cup A_i) = \cup X^{-1}(A_i)$ 等，$\{X^{-1}(B)\}$ 为 $\sigma$ -代数。若 $\sigma(X) \subset \mathcal{F}$，则 $X$ 可测。反之，由 Borel 生成集 $\{(-\infty, x]\}$，$X^{-1}((-\infty, x]) \in \mathcal{F}$ 得 $X$ 可测 [[Wiki - 概率测度]]。


注：$n \to \infty$ 时，$\sigma(X) = \sigma(\cup_n \sigma(X_1, \dots, X_n))$。若 $f: (S, \mathcal{S}) \to (T, \mathcal{T})$ 可测，则 $f(X)$ 为随机变量：$[f(X)]^{-1}(B) = X^{-1}(f^{-1}(B)) \in \mathcal{F}$。

## The 1 随机变量判别

```ad-theorem
title: 随机变量判别定理
设 $\mathcal{A} \subset S$ 为生成集。若对任意 $A \in \mathcal{A}$，$X^{-1}(A) \in \mathcal{F}$，则 $X: (\Omega, \mathcal{F}) \to (S, \sigma(\mathcal{A}))$ 为随机变量，且 $\sigma(X) = \sigma(\{X^{-1}(A) : A \in \mathcal{A}\})$。
```

由此有定理表示：$X: \Omega\to S$，则 X 为 S-值随机变量 $\leftrightarrow \sigma (X)\subset \mathcal{S}$，$\leftrightarrow X^{-1}(A)\in \mathcal{F}, \forall A\in \mathcal{S}$


这里 $\sigma (X)= \{X^{-1}(A)| A\in \mathcal{S}\}$，$\sigma(X)$ 是保证 X 是随机变量的最小 $\mathcal{F}$

[[Wiki - σ-代数]]、[[Wiki - 概率空间]]

### 证明：

定义 $\mathcal{M} = \{B \subset S : X^{-1}(B) \in \mathcal{F}\}$，则 $\mathcal{M}$ 为 $\sigma$-代数，$\mathcal{A} \subset \mathcal{M}$，故 $\sigma(\mathcal{A}) \subset \mathcal{M}$。于是 $X^{-1}(\sigma(\mathcal{A})) \subset \mathcal{F}$，即 $X$ 可测。$\sigma(X) \subset \sigma(\{X^{-1}(A) : A \in \mathcal{A}\})$ 由最小性；反之，由逆像封闭，得等式。


注：对于 $\mathbb{R}$，$\mathcal{B}_\mathbb{R} = \sigma((-\infty, x] : x \in \mathbb{R})$，故只需验证 $\{X \leqslant x\} \in \mathcal{F}$。

相关链接：[[Wiki - π-λ定理]]（用于证明性质）


