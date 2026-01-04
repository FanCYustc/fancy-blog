---
aliases:
  - poison分布
  - poison随机变量分类
info: 泊松分布
date: 2023-08-20-星期日 12:11
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 概率论/概率分布
  - 随机过程/poison过程
id: wiki20230820121114
banner: "![[astrowalk.gif]]"
---
---


## Def 1 泊松分布

```ad-definition
title: Definition 1

若
$$
P(X=i)=\frac{{e^{-\lambda}\lambda^{i}}}{i!} (i=0,1,2\dots)
$$
称 X 服从泊松分布；多用于 X 表示在一定时空内出现的事件个数

```


设这段时间为 $[0, 1)$. 取一个很大的自然数 n，把时间段
$[0, 1)$ 分为等长的 n 段:

$$
\begin{aligned}l_1\Big[\left.0,\frac{1}{n}\right),l_2&=\Big[\left.\frac{1}{n},\frac{2}{n}\right),\cdots,l_i\:=\Big[\left.\frac{i-1}{n},\frac{i}{n}\right),\cdots,\\l_{n}&=\Big[\left.\frac{n-1}{n},1\right)\end{aligned}
$$

作几个假定:

1°在每段 $l_{i}$ 内, 恰发生一个事故的概率，近似地与这段时间之长 $\frac{1}{n}$ 成正比, 即可取为 $\lambda/n$，又假定在，很大因而 1/n 很小时, 在 $l_{i}$ 这么短暂的一段时间内, 要发生两次或更多的事故是不可能的，因此, 在 $i_{i}$ 时段内不发生事故的概率为 $1-\lambda/n$.

2° $l_{1,}l_{2}\dots,l_{n}$ 各段是否发生事件是独立的

把在 $[0, 1)$ 时段内发生的事故数 X 视作在 n 个小时段 $l_{1}\dots l_{n}$ 内有事故的时段数, 则按上述 1°, 2°两条假定, X 应服从二项分布 [[Wiki - 二项分布]] $B (n, \lambda/n)$. 于是

$$
P(X\:=\:i\:)\:=\:\left(\begin{array}{c}n\\i\end{array}\right)\left(\frac{\lambda}{n}\right)^i\left(1\:-\:\frac{\lambda}{n}\right)^{n-i}
$$

$n\to \infty$ 时即为泊松分布


## The  1 泊松定理

```ad-theorem
title: Theorem 1

设 $B(n,\:p_{n})$ 为一列二项分布 [[Wiki - 二项分布]]，其中的参数满足条件

$$
\lim_{n\to\infty}np_n=\lambda>0,
$$

则对任何非负整数 k 都有

$$
\operatorname*{lim}_{n\to\infty}b(k;\:n,p_n)=\operatorname*{lim}_{n\to\infty}\begin{pmatrix}n\\k\end{pmatrix}p_n^k(1-p_n)^{n-k}=\mathrm{e}^{-\lambda}\frac{\lambda^k}{k!}.
$$


```

## Pro 1 poison 随机变量分类

```ad-proposition
title: Propositon 1

假设一系列事件相互独立，已知在一特定时间内事件发生的次数

$$
N\sim\mathrm{Poisson}(\lambda).
$$

每个事件又以概率 $p_j$ 划入 $j$ 型，$p_1+\cdots+p_k=1$. 记 $N_j$ 为该时间段内 $j$ 型事件的个数。则
1.  $N_1,N_2,\ldots,N_k$ 相互独立。
2. 对任意 $j=1,\ldots,n$,
$$
N_j\sim\operatorname{Poisson}(\lambda p_j).
$$


```
 