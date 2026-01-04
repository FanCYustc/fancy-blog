---
aliases:
info:
date: 2025-09-19-星期五 17:21
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
id: wiki20250919172135
banner: "![[astrowalk.gif]]"
---


[[Wiki - 可预测过程]]
## The 3.3 Doob 分解定理

```ad-theorem
title: Doob分解定理 (离散时间)
设 $\{X_n\}$ 是相对于$\sigma$代数流 $\{F_n\}$ 的下鞅，则存在唯一的鞅 $\{M_n\}$ 和递增可预测过程 $\{Z_n\}$，满足 $Z_0 = 0$ 且
$$
X_n = M_n + Z_n, \quad \forall n \geq 0.
$$
其中，$Z_n = \sum_{i=1}^n E\{X_i - X_{i-1} \mid F_{i-1}\}$ 是非负的（因为子鞅性质 $E\{X_i - X_{i-1} \mid F_{i-1}\} \geq 0$），且 $M_n = X_n - Z_n$ 满足 $E\{M_n - M_{n-1} \mid F_{n-1}\} = 0$，故为鞅。
```

### Proof

**唯一性证明**：假设 $X_n = M'_n + Z'_n$ 为另一分解，则 $Z_n - Z'_n = (M'_n - M_n)$。条件期望于 $F_{n-1}$ 得 $Z_n - Z_{n-1} - (Z'_n - Z'_{n-1}) = E\{M'_n - M'_n-1 - (M_n - M_{n-1}) \mid F_{n-1}\} = 0$，故 $Z_n = Z'_n$（由 $Z_0 = Z'_0 = 0$ 递推），从而 $M_n = M'_n$。

**注释**：此分解将下鞅分解为"纯噪声"鞅部分和确定性递增部分。连续时间版本（Doob-Meyer 分解）需局部鞅和通常条件滤波，$X_t = M_t + Z_t$，$M$ 连续局部鞅，$Z$ 连续适应递增过程。

**证明大纲**：定义 $Z_n = \sum_{i=1}^n E\{X_i - X_{i-1} \mid F_{i-1}\}$，则 $Z$ 递增（非负增量）和可预测（$Z_n \in F_{n-1}$）。令 $M_n = X_n - Z_n$，则  
$$
M_n - M_{n-1} = (X_n - X_{n-1}) - E\{X_n - X_{n-1} \mid F_{n-1}\},
$$  
故 $E\{M_n - M_{n-1} \mid F_{n-1}\} = 0$，$M$ 为鞅。唯一性如上。


相关链接：[[Wiki - 鞅]]、[[Wiki - 鞅收敛定理]]
