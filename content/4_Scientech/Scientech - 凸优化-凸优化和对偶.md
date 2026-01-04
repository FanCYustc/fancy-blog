---
aliases: 
info: 25春凸优化第4章第5章
date: 2025-04-04-星期五 16:12
update: 
tags:
  - scientech/year2025
  - scientech/month04
  - 凸优化
  - 对偶
id: scientech20250404161245
banner: "![[astrofishing.gif]]"
---
---
# CH4-凸优化问题

## 4.1 优化问题

优化问题的标准形式为
$$
\begin{align}
&\min_{x} f_{0}(x) \\
s.t.& f_{i}(x)\leq 0, i=1,\dots,m \\
& h_{j}(x)=0, j=1,\dots,p
\end{align}
$$

定义域为 $\mathcal{D}=\cap_{i}dom\space f_{i}\cap_{j}dom\space h_{j}$

对于 $\mathcal{D}$ 中的点如果满足约束，就称为**可行的**

最优解定义为
$$
p^{*}=\inf\{f_{0}(x)| x\in \mathcal{D},f_{i}(x)\leq 0, h_{j}(x)=0\}
$$
最优点的集合为
$$
X_{opt}= \{x\in \mathcal{D}| f_{0}(x)=p^{*},f_{i}(x)\leq 0,h_{j}(x)=0\}
$$

满足 $f_{0}(x)\leq p^{*}+\epsilon$ 的可行点称为 $\epsilon-$ 次优的

## 4.2 凸优化问题

[[Wiki - 凸优化问题标准形式]]

[[Wiki - 拟凸优化问题]]

## 4.3 线性优化问题

## 4.4 二次优化问题

[[Wiki - 二次优化问题]]

## 4.5 几何优化问题

[[Wiki - 几何规划]]

# CH5 - 对偶问题

## 5.1 Lagrange 对偶函数

[[Wiki - 拉格朗日乘数法]]

[[Wiki - Lagrange对偶函数]]

## 5.2 Lagrange 对偶问题

[[Wiki - Lagrange对偶问题]]

[[Wiki - Slater定理]]

## 5.3 几何解释

1. **上境图（Epigraph）视角**
设原优化问题为：
$$
\begin{align*}
p^* = \min \ & f_0(x) \\
\text{s.t.} \ & f_i(x) \leq 0, \quad i = 1,\dots,m \\
\end{align*}
$$
构造其对偶函数：$g (\lambda) = \inf_{x} \left[ f_0 (x) + \sum_{i=1}^m \lambda_i f_i (x) \right], \quad \lambda \geq 0$

**几何意义**：
- **原始问题**的可行解对应上凸集：
  $$
  \mathcal{A} = \{ (f_1(x),\dots,f_m(x), f_0(x)) \mid x \in \text{可行域} \}
  $$
- **上境图**即该集合与目标函数构成的区域：
  $$
  \text{epi}(p^*) = \mathcal{A} + \mathbb{R}_+^{m+1}
  $$
- **对偶函数**表现为通过超平面 $\lambda^T u + z = g(\lambda)$ 在 $\mathcal{A}$ 下方的最大截距。

2. **超平面分离（Hyperplane Separation）**
- **对偶函数构造的超平面**：
  对任意 $\lambda \geq 0$，存在超平面 $H_\lambda = \{ (u, t) \mid \lambda^T u + t = g(\lambda) \}$，使得：
  $$
  \lambda^T u + t \geq g(\lambda), \quad \forall (u, t) \in \mathcal{A}
  $$
- **最大化截距**：
  对偶问题的目标是寻找一个 $\lambda \geq 0$，使得超平面在 $t$-轴的截距（即 $g(\lambda)$）最大。但始终满足：
  $$
  g(\lambda) \leq f_0(x), \quad \text{若 } x \text{ 可行}
  $$
## 5.4 鞍点

[[Wiki - 鞍点]]

## 5.5 最优性条件

[[Wiki - 优化算法停止准则]]

[[Wiki - 互补松弛性]]

[[Wiki - KKT条件]]

## 5.6 扰动与敏感度分析

[[Wiki - 凸优化问题的敏感度分析]]

