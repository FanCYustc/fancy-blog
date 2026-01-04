---
aliases: 
info: 
date: 2024-06-14-星期五 22:52
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/鞅论
id: wiki20240614225254
banner: "![[astrowalk.gif]]"
---
---

## Def 1 上鞅，下鞅

设 $E|Z_{n}|<\infty,\forall n\geq 1$，

```ad-definition
title: Definition 1


$\{Z_{n}, n\geq1\}$称为**下鞅**, 如果
$$
\operatorname{E}\left[Z_{n+1}|Z_{1}, Z_{2},\ldots, Z_{n}\right]\geq Z_{n},\mathrm{a.s.}\quad\forall n\geq1.$$ 
$\{Z_{n},n\geq1\}$称为上鞅,如果
$$
\operatorname{E}\left[Z_{n+1}|Z_{1},Z_{2},\ldots,Z_{n}\right]\leq Z_{n},\mathrm{a.s.}\quad\forall n\geq1$$

下鞅 $\operatorname{E}Z_{n+1}\geq\operatorname{E}Z_n$; 上鞅 $\operatorname{E}Z_{n+1}\leq\operatorname{E}Z_n$.

```

下鞅用的比较多

下鞅取负就是上鞅

## The 1 鞅停止定理

[[Wiki - 停止过程|鞅停止定理]]

N 为 $\{Z_n, n\geq1\}$ 的停时 [[Wiki - 停时]]. 若以下三条之一满足

```ad-theorem
title: theorem 1


$$
\begin{align}
(\mathrm{i})&\quad\overline{Z}_n\text{ 一致有界} \\
\quad(\mathrm{ii})&\quad N\text{ 有界};\\(\mathrm{iii})&\quad\mathrm{E}N<\infty,\text{ 且存在常数}M<\infty\text{ 使得}\\ 
&\operatorname{E}\left[|Z_{n+1}-Z_n|\big|Z_1,\ldots,Z_n\right]\leq M,\\ 
&\text{则 E }Z_1\leq\operatorname{E}Z_N\text{ (下鞅情形),}\operatorname{E}Z_1\geq\operatorname{E}Z_N\text{ (上鞅情形).}
\end{align}
$$



```
