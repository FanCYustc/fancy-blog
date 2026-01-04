---
aliases:
info:
date: 2025-12-29-星期一
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251229100500
banner: "![[astrowalk.gif]]"
---

## 1. 定义

在使用 [[Wiki - Girsanov定理]] 进行测度变换时，关键前提是指数过程 [[Wiki - 随机指数]] 
$$
Z_t(X) = \exp \left( \int_0^t X_s dW_s - \frac{1}{2} \int_0^t \|X_s\|^2 ds \right)
$$
必须是一个**鞅**（Martingale[[Wiki - 鞅]]，而不仅仅是局部鞅（Local Martingale）。Novikov 条件给出了保证这一性质的一个充分条件。

```ad-definition
title: Novikov 条件 (Proposition 5.12, Corollary 5.13)

设 $X = \{X_t, \mathcal{F}_t; 0 \leq t < \infty\}$ 为 $d$-维适应过程。若对于 $0 \leq T < \infty$，满足以下条件：
$$ E \left[ \exp \left( \frac{1}{2} \int_0^T \|X_s\|^2 ds \right) \right] < \infty $$
则过程 $Z(X)$ 在 $[0, T]$ 上是一个鞅，特别地，$E[Z_T(X)] = 1$。
```

[[Wiki - 二次变差]]
### 作用与意义

*   **保证鞅性**: 指数局部鞅 $Z_t$ 总是正的上鞅（Supermartingale）[[Wiki - 上鞅和下鞅]]，即 $E[Z_t] \leq 1$。要使其成为鞅，必须排除“质量逃逸到无穷远”的情况。Novikov 条件通过控制二次变差的指数矩来确保一致可积性。
*   **Girsanov 定理的前提**: 在金融数学和随机控制中，验证 Novikov 条件是应用 Girsanov 定理构造等价测度的标准步骤。

## 2. 相关条件

*   **Kazamaki 条件**: 这是一个比 Novikov 条件更弱（更广泛）的充分条件。它要求 $\exp(\frac{1}{2} \int_0^t X_s dW_s)$ 是一个一致可积下鞅。
*   **反例**: 若不满足这些条件，$Z_t$ 可能只是严格的局部鞅（$E[Z_t] < 1$），此时 Girsanov 变换定义的测度不再是概率测度（总质量小于 1），或者变换后的过程性质会发生改变。[[Wiki - 局部鞅]]
