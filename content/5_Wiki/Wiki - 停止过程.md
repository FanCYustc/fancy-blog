---
aliases:
  - 鞅停止定理
info: 
date: 2024-06-14-星期五 22:22
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程
id: wiki20240614222251
banner: "![[astrowalk.gif]]"
---
---

## Def 1 停止过程

对于随机过程 $\{Z_{n},n\geq 1\}$，N 为一个随机时刻 [[Wiki - Wald等式#Def 1 停时]]

```ad-definition
title: Definition 1

定义
$$\overline{Z}_n=Z_{n\wedge N}=\left\{\begin{array}{cc}Z_n,&n\leq N,\\Z_N,&n\geq N,\end{array}\right.$$

称为 $\{Z_{n}\}$ 的**停止过程**

```

即对停时[[Wiki - 停时]]之后的随机过程都当做停时时的观测值处理。

## Pro 1 鞅时的性质

```ad-proposition
title: Propositon 1

特别的，当 $\{Z_{n},n\geq 1\}$ 为鞅 时，$\{\overline{Z_{n}}, n\geq 1\}$ 也为鞅

```

[[Wiki - 鞅]]
### Proof

由鞅的定义验证即可

## Pro 2 鞅停止定理

注意 $Z_{N}$ 相当于是一个具有两重性的随机变量，不一定期望就等于 $EZ_{1}$

```ad-proposition
title: Propositon 2

设 $\{Z_n,n\geq1\}$ 为鞅，$N$ 为停时. 若以下三条之一满足：

(i) $\overline {Z}_n$  一致有界；

(ii) $N$ 有界；

(iii) E $N<\infty$, 且存在常数 $M<\infty$ 使得
$$\operatorname{E}\left[\left|Z_{n+1}-Z_n\right|\left|Z_1,\ldots,Z_n\right]\leq M,\right.$$
则 $EZ_{1}=EZ_{N}$

```


[[Wiki - 鞅]]