---
aliases:
  - 强对偶与弱对偶
info: 
date: 2025-04-25-星期五 10:04
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
  - 对偶
id: wiki20250425100432
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Lagrange Dual Problem

```ad-definition
title: Lagrange Dual Problem
Consider the standard optimization problem $(\mathcal{P})$:

$$
\begin{array}{ll}
\operatorname*{minimize} & f_0(x) \\
\text{subject to} & f_i(x) \leq 0, \quad i=1,\ldots,m \\
& h_i(x) = 0, \quad i=1,\ldots,p
\end{array}
$$

with its Lagrange dual function $g(\lambda, \nu)$. The **Lagrange dual problem** $(\mathcal{D})$ is defined as:

$$
\begin{array}{ll}
\operatorname*{maximize} & g(\lambda, \nu) \\
\text{subject to} & \lambda \succeq 0
\end{array}
$$

Key properties:
1. The dual problem is always a convex optimization problem (since $g$ is concave and constraints are convex), even when the primal problem is not convex.
2. The optimal value of $(\mathcal{D})$ is denoted $d^\star = \sup \{g(\lambda, \nu) | \lambda \succeq 0\}$.
3. By weak duality, $d^\star \leq p^\star$ always holds.
```

如果 $\lambda \succeq {0} ,g(\lambda,\nu)> -\infty$，就称为对偶问题的可行解

称最优解 $(\lambda^{*}, \nu^{*})$ 是对偶最优解或者最优 Lagrange 乘子

[[Wiki - Lagrange对偶函数]]
## Pro 3 Weak and Strong Duality

```ad-proposition
title: Duality Theorems
1. **Weak Duality**: For any feasible $x$ in $(\mathcal{P})$ and any $\lambda \succeq 0$:
   $$
   g(\lambda, \nu) \leq f_0(x)
   $$
   Consequently, $d^\star \leq p^\star$.

2. **Strong Duality**: If:
   - $(\mathcal{P})$ is convex (i.e., $f_i$ convex, $h_i$ affine)
   - Slater's condition holds (∃ strictly feasible point)
   Then $d^\star = p^\star$ and the dual optimum is attained when finite.

Proof sketch for (2):
- For convex problems satisfying Slater's condition, the epigraph of $(\mathcal{P})$ and the set of constraint violations have no common interior point
- Apply separating hyperplane theorem to establish existence of optimal dual variables
```

在弱对偶性时，$p^{*}-d^{*}$ 称为对偶间隙

[[Wiki - Slater定理]]


```ad-note
title: Applications
The dual problem is particularly useful when:
1. The dual is easier to solve than the primal 
2. Provides sensitivity analysis via optimal dual variables
3. Offers theoretical insight into primal problem structure
```

[[Wiki - 凸优化问题标准形式]]


Related links: [[Wiki - Lagrange对偶函数]], [[Wiki - 凸函数]], [[Wiki - 拉格朗日乘数法]]

