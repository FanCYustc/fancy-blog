---
aliases:
info:
date: 2025-12-17-星期三 10:48
update: 2025-12-17-星期三 10:48
tags:
  - 概率论/极限理论
  - wiki/month11
  - wiki/year2023
id: wiki20251217104800
banner: "![[astrowalk.gif]]"
---
---

# Feller 条件

Feller 条件描述了在随机变量和序列中，没有任何单一项起主导作用（即每一项的波动相对于总波动都是微小的）。

## Def 1 

设 $\{X_n\}$ 为独立随机变量序列，$\sigma_k^2 = \operatorname{Var}(X_k)$，$s_n^2 = \sum_{k=1}^n \sigma_k^2$。[[Wiki - 方差]]
如果：

$$
\lim_{n \to \infty} \frac{\max_{1 \leqslant k \leqslant n} \sigma_k^2}{s_n^2} = 0
$$
则称该序列满足 **Feller 条件**（或一致无穷小条件）。

- **Lindeberg ⇒ Feller**: 满足 Lindeberg 条件的序列一定满足 Feller 条件。
- **CLT 的必要性**: 在 Feller 条件下，Lindeberg 条件不仅是 CLT 的充分条件，也是必要条件（参见 [[Wiki - Lindeberg中心极限定理]]）。
- 直观上，它保证了“大数”是由许多“小数”累积而成的，而不是由个别巨大的“异常值”主导。