---
aliases:
  - poison过程的条件分布
info: 
date: 2024-03-04-星期一 09:01
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 随机过程/poison过程
id: wiki20240304090125
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 与次序统计量

[[Wiki - 随机向量的次序统计量]]

```ad-theorem
title: Theorem 1

```
设 $\{N(t),t\geq0\}$ 为 HPP (λ)[[Wiki - poison过程]], 则

$$
\left[(S_1,S_2,\ldots,S_n)\left|N(t)=n\right]\right]\overset{\mathrm{d}}{\operatorname*{=}}\left(U_{1:n},U_{2:n},\ldots,U_{n:n}\right),
$$

其中 $U_1,U_2,\ldots,U_n$ iid $\sim U(0,t),U_{1:n}<U_{2:n}<\cdots<U_{n:n}$ 为 $U_1,\ldots,U_n$ 的次序统计量. [[Wiki - 均匀分布]]



应用：取条件后可以整体替换成次序统计量，更好计算

### Proof

取很小的 $h_{i}$，使得 $(t_{i},t_{i}+h_{i})$ 不交，求证
$$
P(t_{i}\leq S_{i}\leq t_{i}+h_{i},i=1,\dots,n|N(t)=n)= \frac{{n!}}{t^{n}}h_{1}\dots h_{n}+o(h_{1}\dots h_{n})
$$

## Cal 1

$$\begin{gathered}
 \{N(t),t\geq0\}\text{ 为 HPP}(\lambda)\text{,则} \\
\left[(S_{1},S_{2},\ldots,S_{n})\left|S_{n+1}=t\right]\right]\overset{{\mathrm{d}}}{\operatorname*{\operatorname*{\operatorname*{=}}}}\left(U_{1:n},U_{2:n},\ldots,U_{n:n}\right), \\
\end{gathered}
$$

其中 $U_1, U_2,\ldots, U_n\mathrm{~iid}\sim U (0, t)$, $U_{1: n}<U_{2: n}<\cdots<U_{n: n}$ 为 $U_1,\ldots, U_n$ 的次序统计量.


