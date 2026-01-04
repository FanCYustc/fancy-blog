---
aliases: 
info: 
date: 2025-04-25-星期五 10:18
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
  - 对偶
id: wiki20250425101846
banner: "![[astrowalk.gif]]"
---
---

## Pro 2**强对偶性与 Slater 条件**

对于优化问题及其对偶问题 [[Wiki - Lagrange对偶问题]]

**强对偶性**（即 $d^\star = p^\star$）在以下条件下成立：

- **原问题为凸优化问题**（$f_0, f_1, \ldots, f_m$ 是凸函数，$h_i$ 是仿射函数）[[Wiki - 凸优化问题标准形式]] 。

- **Slater 条件**：存在一个严格可行点 $x$（即 $f_i(x) < 0$ 对所有不等式约束成立，且 $h_i(x)=0$）。

例如，在**线性方程组的最小二乘问题**中：
$$
\begin{array}{ll}
\operatorname*{min} & x^\top x \\
\text{s.t.} & Ax = b,
\end{array}
$$
对偶函数为：
$$
g(\nu) = -\frac{1}{4} \nu^\top AA^\top \nu - b^\top \nu.
$$
由于 $b \in \mathcal{R}(A)$ 时原问题可行，Slater 条件满足，故强对偶性成立（$d^\star = p^\star$）。

```ad-tip

是充分条件

在凸优化问题中强对偶性也不一定成立：

考虑
$$
\begin{align}
\min &e^{-x} \\
s.t.& \frac{x^{2}}{y}\leq 0, \quad \mathcal{D}= \{(x,y)|y>0\}
\end{align}
$$
```


