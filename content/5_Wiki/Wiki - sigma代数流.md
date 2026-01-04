---
aliases:
  - filtration信息流
  - 滤子
info:
date: 2025-09-16-星期二 15:08
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 概率论/概率空间
  - 随机过程/鞅论
  - 代数
id: wiki20250916150854
banner: "![[astrowalk.gif]]"
---
---

## Def 1 $\sigma$ 代数流

对于概率空间 $(\Omega, \mathcal{F}, P)$ 完备 [[Wiki - 测度的完备性]]，记 $\mathcal{N} = \{B\subset \Omega| \exists A\in \mathcal{F}, P(A)=0, B\subset A\}$。

称 $\mathcal{F}_{*}= \{\mathcal{F}_{t}\}_{t\geq 0}$ 为 $\sigma$ 代数流，满足：

1. $\mathcal{F}_{t}\in \mathcal{F}$ 为子 $\sigma-$ 代数
2. $\forall s\leq t, \mathcal{F}_{s}\subset \mathcal{F}_{t}$
再假设 $\mathcal{F}_{*}$ 满足通常性条件：
3. 关于 P 完备：$\mathcal{N} \subset \mathcal{F}_{0}$
4. 右连续性：$\mathcal{F}_{t^{+}}= \cap_{s>t} \mathcal{F}_{s} = \mathcal{F}_{t}$（参见 [[Wiki - Filtration的通常条件]]）
[[Wiki - 随机过程的Law]]
## Def 2 自然滤子 (Natural Filtration)

对于一个随机过程 $X = \{X_t\}_{t \ge 0}$，由其自身历史信息生成的最小 $\sigma$ 代数 [[Wiki - σ-代数]] 流称为该过程的**自然滤子**，记为 $\mathcal{F}_t^X$ ：
$$
\mathcal{F}_t^X = \sigma(X_s : 0 \le s \le t)
$$

### 直观理解
自然滤子代表了观测者直到时刻 $t$ 为止所能获得的关于过程 $X$ 的**全部信息**。
*   如果一个事件 $A$ 的发生与否仅取决于过程 $X$ 在区间 $[0, t]$ 上的轨迹，那么 $A \in \mathcal{F}_t^X$。
*   在随机分析中，我们通常会对自然滤子进行完备化和右连续化处理，以满足[[Wiki - Filtration的通常条件]]。

[[Wiki - 概率空间]]

[[Wiki - σ-代数]]

