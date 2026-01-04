---
aliases: 
info: 
date: 2023-12-22-星期五 23:03
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 概率论/概率分布
  - 数学分析/级数
id: wiki20231222230303
banner: "![[astrowalk.gif]]"
---
---

## The 1 Kolmogorov 三级数定理

```ad-theorem
title: Theorem 1

设 $\{X_n,n\geq1\}$ 为独立 rv 序列，则 $\sum_{n=1}^\infty X_n$ a.s. 收敛当且仅当，存在常数 $c>0$, 使得

$\left ( \mathrm{i} \right ) \quad \sum _{n= 1}^\infty\mathbb{P} \left ( \left | X_n\right | > c\right ) < \infty;$
 
(ii) $\sum_{n=1}^\infty\mathbb{E}\left[X_nI(|X_n|\leq c)\right]$ 收敛；

$\left(\mathrm{iii}\right)\quad\sum_{n=1}^\infty\operatorname{Var}\left(X_nI(|X_n|\leq c)\right)<\infty.$


```

[[Wiki - 几乎处处收敛]]

[[Wiki - 数学期望]] [[Wiki - 方差]]

### Proof

[[Wiki - Kolmogorov不等式]]

