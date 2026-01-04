---
aliases: Kolmogorov连续性定理
info:
date: 2025-12-19-星期五 12:15
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程
id: wiki20251219121500
banner: "![[astrowalk.gif]]"
---
# Wiki - Kolmogorov-Chentsov定理

## 1. 定理陈述
**Kolmogorov-Chentsov 定理**给出了随机过程存在连续版本（Modification）[[Wiki - 随机过程的同质性|modification]] 的充分条件，基于矩不等式。

设 $X = \{X_t\}_{0 \le t \le T}$ 是一个随机过程。如果存在正常数 $\alpha, \beta, C > 0$，使得对于所有 $0 \le s, t \le T$，满足：
$$
E[|X_t - X_s|^α] ≤ C |t - s|^{1+β}
$$
那么，$X$ 存在一个**连续修正** $\tilde{X} = \{\tilde{X}_t\}$。这意味着：
1.  对于每个 $t$，$\tilde{X}_t = X_t$ a.s.（即 $P(\tilde{X}_t = X_t) = 1$）。
2.  $\tilde{X}$ 的样本路径 $t → \tilde{X}_t(ω)$ 几乎必然是连续的。[[Wiki - 路径正则性定理]]

## 2. 局部 Hölder 连续性

定理不仅保证了连续性，还给出了连续性的模。构造出的连续修正 $\tilde{X}$ 的路径几乎必然是**局部 $\gamma$ -Hölder 连续**的，对于任意满足 $0 < \gamma < \beta / \alpha$ 的指数 $\gamma$。

即对于几乎所有 $\omega$，存在一个随机变量 [[Wiki - 随机变量]] $h(ω) > 0$ 和常数 $K_ω$，使得当 $|t-s| < h(ω)$ 时：
$$
|ΔΣ_t(ω) - ΔΣ_s(ω)| ≤ K_ω |t - s|^γ
$$

## 3. 在布朗运动中的应用

对于标准一维布朗运动 [[Wiki - brown运动]] $B_t$，$B_t - B_s ∼ N(0, t-s)$。计算其 $2n$ 阶矩 [[Wiki - 随机变量的矩]] ：
$$
E[|B_t - B_s|^{2n}] = C_n |t - s|^n
$$
取 $\alpha = 2n$。为了满足定理条件 $1+\beta < n$，我们需要 $n > 1$。

此时 $\beta = n-1$。根据定理，布朗运动存在连续修正，且具有 Hölder 指数 $\gamma$ ：

$$
\gamma <\frac{\beta}{\alpha} =\frac{n-1}{2n} = \frac{1}{2} - \frac{1}{2n}
$$
由于 $n$ 可以任意大，这说明布朗运动路径对于任意 $\gamma < 1/2$ 都是局部 Hölder 连续的（但对 $\gamma = 1/2$ 不是）。这与 [[Wiki - 局部Holder连续性]] 的描述一致。
