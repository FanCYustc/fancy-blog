---
aliases:
info:
date: 2025-09-24-星期三 16:50
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
id: wiki20250924165026
banner: "![[astrowalk.gif]]"
---
---

## Pro 1

```ad-proposition
title: Proposition 1

一个**一致可积**的下鞅 $\{X_{n}\}_{n\geq 0}$，那么 $\{X_{n}\}$ 以概率为 1 的几乎处处收敛到 $X_{\infty}$，且 $E|X_{n}-X_{\infty}|\to 0$
```


说明一致可积就满足 [[Wiki - 鞅收敛定理]]

## The 1 UI 鞅的表示定理 (Representation Theorem for UI Martingales)

```ad-theorem
title: Representation Theorem for UI Martingales

一个鞅 $\{X_n\}_{n \ge 0}$ 是**一致可积的 (UI)**，当且仅当存在一个可积的随机变量 $X$，使得：
$$
X_n = E[X | \mathcal{F}_n] \quad \text{for all } n \ge 0.
$$
在这种情况下，这个 $X$ 必然是该鞅的几乎处处收敛极限 $X_\infty$，即 $X_n \to X_\infty$ a.s. 且在 $L^1$ 中收敛，且 $X_n = E[X_\infty | \mathcal{F}_n]$。
```

[[Wiki - sigma代数流]]、[[Wiki - 平均收敛]]、[[Wiki - 鞅]]
#### 定理的意义 (Significance)

这是本节最深刻、最漂亮的结果，它给出了**一致可积鞅的完整刻画**。它告诉我们，一致可积的鞅到底是什么样的。

-   **一个方向 (<=):** 如果一个鞅是通过对**某个固定的**未来随机变量 $X$ 不断取条件期望来定义的（如 **Example 7.5** 所示），那么这个鞅**必然是一致可积的**。这类鞅的行为非常良好，它们不会“发散”，因为它们的所有信息都“锚定”在最终的 $X$ 上。
-   **另一个方向 (=>):** 反过来，任何一个一致可积的鞅，都**必然可以被写成这种形式**。它的极限 $X_\infty$ 就是那个“最终的随机变量”，而鞅的每一项 $X_n$ 都是对这个最终结果在当前信息下的最佳预测。

这个定理告诉我们，一致可积的鞅也被称为**闭鞅 (closed martingale)”**，因为它们最终会“闭合”到 $X_\infty$ 上，不仅是值收敛，期望也收敛，并且整个过程都可以由这个极限 $X_\infty$ 反向定义出来。

## Cal 1

$\mathcal{F}_{*}$ 为 $\sigma$ 代数流，$X$ 为可积随机变量，则以概率为 1 的有

$$
E[X|\mathcal{F}_{n}]\to E[X|\mathcal{F}_{\infty}]
$$

其中 $\mathcal{F}_{\infty}= \sigma\{\mathcal{F}_{n}\}$ 为包含所有 $\mathcal{F}_{n}$ 的最小 $\sigma$ 代数 [[Wiki - σ-代数]]

### Proof

设 $X_{n}= E[X|\mathcal{F}_{n}]$，可以证明 $\{X_{n}\}$ 一致可积，应用定理即可

