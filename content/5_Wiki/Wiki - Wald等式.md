---
aliases:
info: 停时的应用
date: 2024-04-16-星期二 16:22
update:
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/更新过程
  - 随机过程/鞅论
id: wiki20240416162243
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 停时]]
## The 1 Wald 等式

```ad-theorem
title: Theorem 1

设 $\{X_n,n\geq1\}$ 为 iid 序列，$\mathbb{E}|X_1|<\infty,N$ 为一个整值r.v., $\mathbb{E}N<\infty$, 且 $N$ 为 $\{X_n,n\geq1\}$ 的一个停时，则

$$ E\left[ \sum_{k=1}^{N}X_{k} \right]=\operatorname{E}N\cdot\operatorname{E}X.
$$



```

### Proof

**方法一：利用指示变量与条件期望**

记 $I_n = \mathbb{1}_{\{N \ge n\}}$。注意到事件 $\{N \ge n\} = \{N \le n-1\}^c$ 仅依赖于 $X_1, \dots, X_{n-1}$，因此 $I_n$ 是 $\mathcal{F}_{n-1}$-可测的。
由于 $X_n$ 独立于 $\mathcal{F}_{n-1}$（即独立于 $X_1, \dots, X_{n-1}$），我们有：
$$ \mathbb{E}[X_n I_n] = \mathbb{E}[\mathbb{E}[X_n I_n | \mathcal{F}_{n-1}]] = \mathbb{E}[I_n \mathbb{E}[X_n | \mathcal{F}_{n-1}]] = \mathbb{E}[I_n \cdot \mathbb{E}[X]] = \mathbb{E}[X] \mathbb{P}(N \ge n) $$

于是：
$$
\begin{aligned}
\mathbb{E}\left[\sum_{k=1}^{N}X_{k}\right] &= \mathbb{E}\left[\sum_{n=1}^{\infty}X_{n}I_{n}\right] \quad \text{(交换求和与期望，需 Fubini 条件或非负)} \\
&= \sum_{n=1}^{\infty}\mathbb{E}\left[X_{n}I_{n}\right] \\
&= \sum_{n=1}^{\infty} \mathbb{E}[X] \mathbb{P}(N \ge n) \\
&= \mathbb{E}[X] \sum_{n=1}^{\infty} \mathbb{P}(N \ge n) \\
&= \mathbb{E}[X] \cdot \mathbb{E}[N]
\end{aligned}
$$

[[Wiki - 条件期望]]

**方法二：利用鞅**

构造鞅 [[Wiki - 鞅]] $Z_{n}=\sum_{i=1}^{n}(X_{i}-\mathbb{E}X),n\geq 1$。
利用 [[Wiki - 停时|停时]] 的性质和可选停止定理（需注意有界性条件），可得 $\mathbb{E}[Z_N] = \mathbb{E}[Z_1] = 0$，从而推出结论。
参考 [[Wiki - 停止过程#Pro 2 鞅停止定理]]。


