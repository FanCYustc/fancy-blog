---
aliases:
info:
date: 2025-09-23-星期二 20:15
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 数学分析/积分
  - 实分析/lebesgue积分
id: wiki20250923201548
banner: "![[astrowalk.gif]]"
---
---

## Def 1 定义：黎曼-斯蒂尔杰斯积分

```ad-definition
title: Riemann-Stieltjes Integral

设 $f$ (被积函数) 和 $g$ (积分函数) 是定义在闭区间 $[a,b]$ 上的两个实值函数。对于 $[a,b]$ 的一个**划分 (Partition)** $P = \{t_0, t_1, \dots, t_n\}$，其中 $a=t_0 < t_1 < \dots < t_n = b$，并在每个子区间 $[t_{i-1}, t_i]$ 内选取一个点 $c_i \in [t_{i-1}, t_i]$。

**黎曼-斯蒂尔杰斯和 (Riemann-Stieltjes Sum)** 定义为：
$$
S(P, f, g) = \sum_{i=1}^{n} f(c_i) [g(t_i) - g(t_{i-1})]
$$
如果当划分的**范数 (Norm)** $\|P\| = \max_{i} (t_i - t_{i-1})$ 趋向于 0 时，无论点 $c_i$ 如何选取，上述和式 $S(P, f, g)$ 都收敛于同一个极限值 $I$，那么我们称这个极限 $I$ 为 $f$ 关于 $g$ 在 $[a,b]$ 上的黎曼-斯蒂尔杰斯积分，记作：
$$
I = \int_a^b f(t) \, dg(t)
$$
```
**注释**：
- 当 $g(t) = t$ 时，$[g(t_i) - g(t_{i-1})] = t_i - t_{i-1}$，此时积分退化为我们熟悉的黎曼积分 $\int_a^b f(t) \, dt$。
- 这个定义的核心在于，积分是根据函数 $g$ 的增量来对函数 $f$ 进行“加权求和”的。

## The 1 积分存在性定理

有界变差是确保黎曼-斯蒂尔杰斯积分存在的关键条件之一。

```ad-theorem
title: Existence of the Riemann-Stieltjes Integral

如果被积函数 $f$ 在 $[a,b]$ 上连续，且积分函数 $g$ 在 $[a,b]$ 上是有界变差的，那么黎曼-斯蒂尔杰斯积分
$$
\int_a^b f(t) \, dg(t)
$$
必定存在。
```

[[Wiki - 有界变差函数]]

**注释**:
- 这是积分存在的一个**充分条件**，也是实际应用中最常用的一个。
## Pro 1 重要性质

```ad-proposition
title: Properties of the Riemann-Stieltjes Integral

假设所有涉及的积分都存在。

1.  **线性性**:
    - 对被积函数线性：$\int_a^b (c_1 f_1 + c_2 f_2) \, dg = c_1 \int_a^b f_1 \, dg + c_2 \int_a^b f_2 \, dg$
    - 对积分函数线性：$\int_a^b f \, d(c_1 g_1 + c_2 g_2) = c_1 \int_a^b f \, dg_1 + c_2 \int_a^b f \, dg_2$

2.  **区间可加性**:
    - 对于 $a < c < b$，$\int_a^b f \, dg = \int_a^c f \, dg + \int_c^b f \, dg$

3.  **分部积分 (Integration by Parts)**:
    - 这是非常重要的一个性质：
    $$
    \int_a^b f(t) \, dg(t) = f(b)g(b) - f(a)g(a) - \int_a^b g(t) \, df(t)
    $$
```

[[Wiki - 分部积分]]
## Cal 5 一个具体计算

当积分函数 $g$ 可微时，黎曼-斯蒂尔杰斯积分可以转化为我们熟悉的黎曼积分。

如果 $g$ 在 $[a,b]$ 上连续可微，且 $g'$ 在 $[a,b]$ 上黎曼可积 [[Wiki - Riemann积分的可积性判断]]，那么
$$
\int_a^b f(t) \, dg(t) = \int_a^b f(t) g'(t) \, dt
$$

[[Wiki - 映射的微分]]
### Proof

**证明概要**:
根据中值定理 [[Wiki - 微分中值定理]]，$g(t_i) - g(t_{i-1}) = g'(\xi_i)(t_i - t_{i-1})$，其中 $\xi_i \in (t_{i-1}, t_i)$。黎曼-斯蒂尔杰斯和变为：

$$
S(P, f, g) = \sum_{i=1}^{n} f(c_i) g'(\xi_i) (t_i - t_{i-1})
$$
当 $f$ 和 $g'$ 连续时，随着 $\|P\| \to 0$，这个和式收敛于黎曼积分 $\int_a^b f(t) g'(t) \, dt$。

