---
aliases: 
info: 
date: 2025-04-25-星期五 11:50
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 优化
id: wiki20250425115032
banner: "![[astrowalk.gif]]"
---
---

## Def 1 KKT Conditions

```ad-theorem
title: Karush-Kuhn-Tucker Conditions
The KKT conditions are first-order necessary conditions for optimality in constrained optimization problems. Consider the standard optimization problem:

$$
\begin{array}{ll}
\operatorname*{minimize} & f_0(x) \\
\text{subject to} & f_i(x) \leq 0, \quad i=1,\ldots,m \\
& h_i(x) = 0, \quad i=1,\ldots,p
\end{array}
$$

Let $x^\star$ be a primal optimal point and $(\lambda^\star, \nu^\star)$ be dual optimal points. The KKT conditions consist of:
1. **Primal feasibility**:
   $$
   \begin{aligned}
   f_i(x^\star) &\leq 0, \quad i=1,...,m \\
   h_i(x^\star) &= 0, \quad i=1,...,p
   \end{aligned}
   $$
2. **Dual feasibility**: $\lambda_i^\star \geq 0, \quad i=1,...,m$
3. **Complementary slackness**: $\lambda_i^\star f_i(x^\star) = 0, \quad i=1,...,m$
4. **Stationarity**:
   $$
   \nabla f_0(x^\star) + \sum_{i=1}^m \lambda_i^\star \nabla f_i(x^\star) + \sum_{i=1}^p \nu_i^\star \nabla h_i(x^\star) = 0
   $$

For convex problems satisfying Slater's condition, KKT conditions are both necessary and sufficient for optimality.
```

## Pro 1 KKT Necessity and Sufficiency

```ad-proposition
title: KKT Optimality Properties
1. **Necessity**: For any differentiable optimization problem with strong duality:
   $$
   \text{Optimal solution exists} \Rightarrow \text{KKT conditions hold}
   $$
   
2. **Sufficiency**: For convex problems:
   $$
   \text{KKT conditions hold} \Rightarrow \text{Point is globally optimal}
$$

Proof sketch for (1):
- When strong duality holds, the infimum of $L(x,\lambda^\star,\nu^\star)$ must occur at optimal $x^\star$ (from first-order conditions)
- Complementary slackness follows from $f_0(x^\star) = g(\lambda^\star,\nu^\star)$
```

```ad-note
title: Applications
KKT conditions are fundamental for:
1. Deriving analytical solutions to optimization problems
2. Designing optimization algorithms (e.g., SQP methods)
3. Sensitivity analysis of solutions
4. Verifying optimality in convex problems
```

Related links: [[Wiki - Lagrange对偶问题]], [[Wiki - Slater定理]], [[Wiki - 凸优化问题标准形式]]

[[Wiki - 互补松弛性]]

