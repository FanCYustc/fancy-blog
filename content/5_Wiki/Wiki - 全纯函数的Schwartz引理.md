---
aliases: 
info: 
date: 2024-06-06-星期四 11:41
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/全纯函数
id: wiki20240606114114
banner: "![[astrowalk.gif]]"
---
---

## The 1 Schwartz 引理

```ad-theorem
title: Theorem 1

设 $f$ 是单位圆盘 $B$ (0, 1) 中的全纯函数，且满足条件

(i) 当 $z\in B(0, 1)$ 时，$|f(\boldsymbol{z})|\leqslant1;$

(ii) $f(0)=0$,

那么下列结论成立：

(i) 对于任意 $z\in B (0, 1)$, 均有 $|f(z)|\leqslant|z|;$

(ii) $\mid f^\prime\left(0\right)\mid\leqslant1$;

(iii) 如果存在某点 $\boldsymbol z_0\in B(0,1),\boldsymbol{z}_0\neq0$, 使得 $|f(z_0)|=|z_0|$, 或者 $|f^\prime(0)|=1$ 成立，那么存在实数 $\theta$, 使得对 $B(0,1)$ 中所有的 $z$, 都有 $f(z)=\mathrm{e}^{\mathrm{i}\theta} z$



```

[[Wiki - 全纯函数]]

### Proof

见 [[Book - 复变函数]]定理 4.5.3 证明

或者可以不用 Taylor 展开，用 [[Wiki - Morera定理]]，只需证构造

$$
g(z)=\begin{cases}
 \frac{f(z)}{z} ,z\in B(0,1) / \{0\} \\
f'(0),z=0
\end{cases}
$$

证明 $g\in H(B(0,1))$

结论 3 证明用到 [[Wiki - 最大模原理]]

