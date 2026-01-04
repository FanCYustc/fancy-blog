---
aliases:
  - 实数的完备性
info: cauchy收敛准则
date: 2023-03-05-星期日 16:49
update: 
tags:
  - wiki/year2023
  - wiki/month03
  - 数学分析/实数
  - 数学分析/极限
  - 数学分析/数列
id: wiki20230305164959
banner: "![[astrowalk.gif]]"
---
---

## The 1 cauchy 收敛准则 

```ad-theorem
title: Theorem 1

一个实数列$\{x_{n}\}$有极限当且仅当它是 cauchy 列

实数 cauchy 列定义类似 

```

[[Wiki - 有理数cauchy列]]

[[Wiki - 数列极限]]

[[Wiki - 实数的定义]]

### Proof

收敛一定是 cauchy 列显然

一个实 cauchy 列一定有极限 x：找一个极限相同的有理 cauchy 列 [[Wiki - 有理数cauchy列]]

根据有理数的稠密性, [[Wiki - 有理数的稠密性]] 存在  $x_{k}\in \mathbb{Q}$ 使得 $|x_{k}-x_{k}^{\prime}|<1/k$ 对所有 $k$ ∈ N 成立。$\{x_{k}'\}$ 是有理数列，我们首先证明它是 Cauchy 列. 事实上, $\forall n,\exists N$ 使得对所有 $j,k\geqslant N$ 成
$\text{立}|x_{j}-x_{k}|<1/2n.$。必要时增加 N的值使之满足 N≥ 4n，则 j, k≥N 时

$$
\begin{array}{rcl}|x_j^{\prime}-x_k^{\prime}|&\leqslant&|x_j^{\prime}-x_j|+|x_j-x_k|+|x_k^{\prime}-x_k|\\&<&\frac1j+\frac1{2n}+\frac1k\leqslant\frac1{2n}+\frac2{4n}=\frac1n.\end{array}
$$

设 x 为 Cauchy 列 $\{x_{k}'\}$ 定义的实数. 那么由定义 $x= \lim_{k\to+\infty} x_{k}^{\prime}$ 又因为

$$
|x-x_{k}|\leqslant|x-x_{k}^{\prime}|+|x_{k}^{\prime}-x_{k}|<|x-x_{k}^{\prime}|+\frac1k,
$$
所以 $\{x_{n}\}$ 的极限也为 x

## The 1 



