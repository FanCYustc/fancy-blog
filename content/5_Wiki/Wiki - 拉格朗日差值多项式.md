---
aliases: []
info: 拉格朗日差值多项式
date: 2023-09-13-星期三 11:22
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230913112230
banner: "![[astrowalk.gif]]"
---
---

## The 1 拉格朗日插值

```ad-theorem
title: Theorem 1

对于 $1\leq i\leq n+1$, 设 $a_i,b_i\in F$, 且 $a_i$ 两两不同，则存在唯一的次数不大于 $n$ 的多项式 $f(x)$, 使得 $f(a_i)=b_i.$

且形式为
$$f(x)=\sum_{i=1}^{n+1}b_if_i(x)=\sum_{i=1}^{n+1}\frac{b_i\prod_{j\neq i}(x-a_j)}{\prod_{j\neq i}(a_i-a_j)}$$


```
### Proof

形式已给出可证存在性

证明唯一性. 若 $f(x)$ 与 $g(x)$ 的次数均 $\leq n$ 且对所有 $1\leq i\leq n+1,f(a_i)=g(a_i)=b_i$, 即 $f(a_i)-g(a_i)=0$. 则 $f(x)-g(x)$ 至少有 $n+1$ 个零点，但 $\deg(f-g)\leq n$, 故由拉格朗日零点定理[[Wiki - 多项式的根]]，$f(x)-g(x)=0$, 即 $f(x)=g(x).$



