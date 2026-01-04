---
aliases: []
info: 多项式的中国剩余定理
date: 2023-09-13-星期三 10:30
update: 2023-09-13-Wednesday 10:33:35
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230913103058
banner: "![[astrowalk.gif]]"
---
---

## The 1 中国剩余定理
```ad-theorem
title: Theorem 1


设 $g_{1}(x),…, g_{s}(x)$ 是数域 F 上任意一组**两两互素**的多项式[[Wiki - 多项式的互素]]，$f_{1}(x), …,f_{s}(x)$ 是 $F[x]$ 中任意一组多项式，则存在 $f (x)\in  F[x]$ 使

$$
f(\:x\:)\equiv f_{i}(\:x\:)(\:\mathrm{mod}\:g_{i}(\:x\:)\:)
$$

对 $1\leq i\leq s$ 成立[[Wiki - 多项式的同余]]

```

### Proof

只要能对每个 $1\leq i\leq s$ 找到一个 $h_{i}\:(\:x\:)\in F[\:x\:]\:\text{使}$

$$
\sigma h_{i}\:(\:x\:)=(\:0,\cdots,0,1,0,\cdots)
$$


$f(x)=f_{1}(x)h_{1}(x)+\dots+f_{s}(x)h_{s}(x)$ 满足条件

$$
f(\:x\:)\equiv\:\sum_{j=1}^{\prime}\:f_{j}\:(\:x\:)\:h_{j}(\:x\:)\equiv f_{i}\:(\:x\:)(\:\mathrm{mod}\:g_{i}(\:x\:)\:)
$$

$h_{i}(x)$ 满足的条件为
$$
g_{j}(x)\mid h_{i}(x),\forall j\neq i；且 h_{i}(x)\equiv1(mod \quad g_{i}(x))
$$
记

$$
\gamma_{i}\:(\:x\:)=\prod_{1\leq j\leq s,j\neq i}g_{i}\:(\:x\:)
$$

为除了 $g_{i}(x)$ 以外所有其余的 $g_{j}(x)(1\leq j\leq s, j\neq i)$ 的乘积，由于每个 $g_{j}(x)(j\neq i)$ 与 $g_{i}(x)$ 互素[[Wiki - 多项式整除的性质]]，乘积也与 $g_{i}(x)$ 互素，于是存在 $u_{i}(x)$ 使[[Wiki - 多项式的裴蜀定理]]

$$
u_{i}\:(\:x\:)\:\gamma_{i}(\:x\:)\equiv1\:(\:\mathrm{mod}\:g_{i}(\:x\:)\:)
$$

取 $h_{i}(x)= u_{i}(x)\gamma_{i}(x)$，满足条件. 于是 f (x）满足要求，存在。


```ad-hint

相通的构造思想：拉格朗日差值多项式[[Wiki - 拉格朗日差值多项式]]

思想：找到一组标准基，使条件中的$f_{i}(x)$恰好为$f(x)$在这组基下的坐标。[[Wiki - 基和维数]]

```

