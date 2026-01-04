---
aliases:
  - Minimax定理
info: 
date: 2025-04-25-星期五 11:15
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
id: wiki20250425111541
banner: "![[astrowalk.gif]]"
---
---
## Def 1 Saddle Point

```ad-definition
title: Saddle Point

In mathematical optimization, a *saddle point* (or *minimax point*) of a function $f: \mathbb{R}^n \times \mathbb{R}^m \rightarrow \mathbb{R}$ is a point $(x^*, y^*)$ where:
1. $x^*$ is a minimum of $f(x, y^*)$ w.r.t. $x$
2. $y^*$ is a maximum of $f(x^*, y)$ w.r.t. $y$

Formally:
$$
f(x^*, y) \leq f(x^*, y^*) \leq f(x, y^*)\quad \forall x \in \mathbb{R}^n, y \in \mathbb{R}^m
$$

For twice-differentiable functions, this corresponds to a point where the Hessian matrix is indefinite (has both positive and negative eigenvalues).
```

[[Wiki - 海塞矩阵]]
### Key Properties:
1. In Game Theory, saddle points represent Nash equilibria in zero-sum games
2. Critical points of Lagrangian functions in Constrained Optimization often are saddle points [[Wiki - Lagrange对偶问题]]
3. The min-max theorem establishes conditions for existence of saddle points

## The 1 

若 $\tilde{y}\in Y,\tilde{x}\in X$ 是 f 关于 X, Y 的鞍点，那么 f 满足鞍点性质，即
$$
\sup_{y\in Y} \inf_{x\in X}f(x,y)= \inf_{x\in X} \sup_{y\in Y}f(x,y)
$$

## The 2 minimax 定理


```ad-proposition
title: Saddle Point Characterization

对定义域$X,Y$为紧凸集，For convex-concave functions where:
- $f(\cdot,y)$ is convex $\forall y$
- $f(x,\cdot)$ is concave $\forall x$

Then $(x^*, y^*)$ is a saddle point iff:
$$
\min_x \max_y f(x,y) = \max_y \min_x f(x,y) = f(x^*, y^*)
$$
```

[[Wiki - 凸集]]

[[Wiki - 凸优化问题标准形式]]

