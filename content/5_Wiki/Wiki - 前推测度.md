---
aliases:
info:
date: 2025-10-18-星期六 11:29
update:
tags:
  - wiki/year2025
  - wiki/month10
  - 实分析/测度论
id: wiki20251018112954
banner: "![[astrowalk.gif]]"
---
---

## Def 1 前推测度 (Pushforward Measure)

```ad-definition
title: 测度在可测映射下的前推

设 $(S_1, \mathcal{S}_1)$ 和 $(S_2, \mathcal{S}_2)$ 是可测空间，$T: (S_1, \mathcal{S}_1) \to (S_2, \mathcal{S}_2)$ 是可测映射，$\mu$ 是 $(S_1, \mathcal{S}_1)$ 上的测度。定义**前推测度** $T_\#\mu: \mathcal{S}_2 \to [0,\infty]$ 为：
$$
(T_\#\mu)(B) := \mu(T^{-1}(B)), \quad \forall B \in \mathcal{S}_2
$$
其中 $T^{-1}(B) = \{x \in S_1 : T(x) \in B\}$ 称为 $B$ 的原像。前推测度 $T_\#\mu$ 是 $(S_2, \mathcal{S}_2)$ 上的测度。
````

[[Wiki - 抽象测度|测度空间]]


## Pro 1

1. **保持测度结构**：若 $\mu$ 为概率测度，则 $T_{\#}\mu$ 也是概率测度
2. **积分变换公式**：对任意可测函数 $h:S_2 \to \mathbb{R}$， $$ \int_{S_2} h , d(T_\#\mu) = \int_{S_1} h \circ T , d\mu $$[[Wiki - 积分变换定理]]
3. **复合映射**：对可测映射 $U: (S_2, \mathcal{S}_2) \to (S_3, \mathcal{S}_3)$，有 $(U \circ T)_{\#}\mu = U_{\#}(T_{\#}\mu)$

**特例**：

- 随机变量[[Wiki - 随机变量]] $X:\Omega \to \mathbb{R}$ 的分布[[Wiki - 分布函数]] $\mathbb{P}_X$ 是前推测度 $X_{\#}\mathbb{P}$
- 平移不变性：若 $T_a(x)=x+a$，则 $(T_a)_{\#}m = m$（$m$ 为 Lebesgue 测度）