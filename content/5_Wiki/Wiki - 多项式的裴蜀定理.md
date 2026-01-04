---
aliases:
  - 最大公因式可由两数线性表示
  - 理想
info: 
date: 2023-09-11-星期一 08:31
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
  - 数论
id: wiki20230911083158
banner: "![[astrowalk.gif]]"
---
---

## The 1 裴蜀定理

```ad-theorem
title: Theorem 1

对任意 $f(x),g (x) \in F[x]$，在 $F[x]$ 中存在 f (x)，g（x）的最大公因式 d (x)，且 d (x) 可以表示成为 f（x)，g（x）的倍式之和，即存在 $u(x),v (x) \in F[x]$ 使

$$
d(\:x\:)=u(\:x\:)f(\:x\:)+v(\:x\:)\:g(\:x\:)
$$


```

[[Wiki - 多项式最大公因式]]
### Proof

$$
I=\{u(x)f(x)+v(x)g(x)\}= <f,g>
$$
称为一个理想

满足性质

$P\in I, Q\in I\to P+Q\in I$
$P\in I,\lambda (x)\in F\to\lambda P\in I$

[[Wiki - 生成子空间]]

试证明 $<f, g> = <d(x)>$

## Pro 1
```ad-proposition
title: Propositon 1


$$\begin{aligned}&\quad f(x),g(x)\text{互素}\Leftrightarrow\text{存在 }u(x),v(x)\in F[x]\text{使 }u(x)f(x)+\\&v(x)g(x)=1.\end{aligned}$$


```
[[Wiki - 多项式的互素]]

## Cal 1 多元推广

$$\begin{array}{ccc}&\text{对}f_1(x),\cdots,f_s(x)\in F[x]\text{的任意一个最大公因式}d(x)\text{,存}\text{在}u_1(x),\cdots,u_s(x)\in F[x]\text{使}\\&u_1(x)f_1(x)+\cdots+u_s(x)f_s(x)=d(x)&\square\end{array}$$

