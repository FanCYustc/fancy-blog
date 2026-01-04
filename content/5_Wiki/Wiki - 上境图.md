---
aliases: 
info: 
date: 2025-03-31-星期一 10:59
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 凸优化
  - 数学分析/函数
id: wiki20250331105912
banner: "![[astrowalk.gif]]"
---
---

## Def 1 上境图 (Epigraph)

```ad-definition
title: 上境图 (Epigraph)

设函数 $f: \mathbb{R}^n \to \mathbb{R}$，其**上境图**定义为：

$$
\mathrm{epi}f = \{(x,t) \mid x \in \mathrm{dom}f, f(x) \leq t\}
$$

其中 $\mathrm{dom}f$ 是 $f$ 的定义域。上境图是函数图像上方的所有点的集合，包含函数图像本身。
```

## Pro 1 上境图与凸函数的关系


```ad-proposition
title: 上境图与凸函数的关系

一个函数 $f: \mathbb{R}^n \to \mathbb{R}$ 是凸函数，当且仅当其**上境图** $\mathrm{epi}f$ 是凸集。
```

### **证明**：

1. **必要性**：假设 $f$ 是凸函数 [[Wiki - 凸函数]]。对于任意 $(x_1, t_1), (x_2, t_2) \in \mathrm{epi}f$ 和 $\lambda \in [0,1]$，有：

   $$
   f(\lambda x_1 + (1-\lambda)x_2) \leq \lambda f(x_1) + (1-\lambda)f(x_2) \leq \lambda t_1 + (1-\lambda)t_2
   $$

   因此，$(\lambda x_1 + (1-\lambda)x_2, \lambda t_1 + (1-\lambda)t_2) \in \mathrm{epi}f$，故 $\mathrm{epi}f$ 是凸集 [[Wiki - 凸集]]。

2. **充分性**：假设 $\mathrm{epi}f$ 是凸集。对于任意 $x_1, x_2 \in \mathrm{dom}f$ 和 $\lambda \in [0,1]$，设 $t_1 = f(x_1)$，$t_2 = f(x_2)$，则 $(x_1, t_1), (x_2, t_2) \in \mathrm{epi}f$。由于 $\mathrm{epi}f$ 是凸集，故：

   $$
   (\lambda x_1 + (1-\lambda)x_2, \lambda t_1 + (1-\lambda)t_2) \in \mathrm{epi}f
   $$

   因此，$f(\lambda x_1 + (1-\lambda)x_2) \leq \lambda t_1 + (1-\lambda)t_2 = \lambda f(x_1) + (1-\lambda)f(x_2)$，即 $f$ 是凸函数。

