---
aliases:
info:
date: 2025-09-19-星期五 11:34
update:
tags:
  - wiki/year2025
  - wiki/month09
id: wiki20250919113435
banner: "![[astrowalk.gif]]"
---
---

## The 1 容斥公式

```ad-theorem
title: 容斥公式
设 $A_1, \dots, A_n \in \mathcal{F}$，则
$$
\mathbb{P}\left( \bigcup_{i=1}^n A_i \right) = \sum_{i=1}^n (-1)^{i-1} \sum_{|J|=i} \mathbb{P}\left( \bigcap_{j \in J} A_j \right),
$$
其中 $J \subset \{1,\dots,n\}$，$|J|=i$。

特别地，$n=2$ 时：$\mathbb{P}(A_1 \cup A_2) = \mathbb{P}(A_1) + \mathbb{P}(A_2) - \mathbb{P}(A_1 \cap A_2)$。
```

### 证明：

由归纳法。基步 $n=1$ 显然。假设 $n=m$ 成立，则
$$
\mathbb{P}\left( \bigcup_{i=1}^{m+1} A_i \right) = \mathbb{P}\left( \left( \bigcup_{i=1}^m A_i \right) \cup A_{m+1} \right) = \mathbb{P}\left( \bigcup_{i=1}^m A_i \right) + \mathbb{P}(A_{m+1}) - \mathbb{P}\left( \bigcup_{i=1}^m (A_i \cap A_{m+1}) \right).
$$
代入归纳假设得证。


注：类似地，对交有 $\mathbb{P}\left( \bigcap_{i=1}^n A_i \right) = \sum_{i=1}^n (-1)^{i-1} \sum_{|J|=i} \mathbb{P}\left( \bigcup_{j \in J} A_j \right)$。

[[Wiki - 概率测度]]
## Pro 2 Bonferroni 不等式

```ad-proposition
title: Bonferroni 不等式
设 $A_1, \dots, A_n \in \mathcal{F}$，对任意 $m=1,\dots,n$，
$$
\mathbb{P}\left( \bigcup_{i=1}^n A_i \right) \leqslant \sum_{i=1}^m (-1)^{i-1} \sum_{|J|=i} \mathbb{P}\left( \bigcap_{j \in J} A_j \right) \ (m \ odd),\quad \geqslant \ (m \ even).
$$

特别地，$m=1$：$\mathbb{P}\left( \bigcup A_i \right) \leqslant \sum \mathbb{P}(A_i)$（Boole 不等式）。

证明：引入单峰数列引理。若 $\{a_i\}_{i=0}^n$ 单峰且 $\sum (-1)^i a_i = 0$，则部分和符号交替。应用容斥公式及指示函数积分得证。
```
