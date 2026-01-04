---
aliases: 
info: 
date: 2024-11-07-星期四 09:10
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 泛函分析/线性算子
id: wiki20241107091054
banner: "![[astrowalk.gif]]"
---
---

## The 1 HBT

$X$ 为赋范空间 [[Wiki - 赋范空间]]，$M$ 是其**子空间**，则

$$\forall f\in M^*,\exists F\in X^*\text{s.t.}F|_M=f\text{and}||F||=||f||$$

这称为**保范延拓**。[[Wiki - 线性算子的范数]]

```ad-caution

保范延拓不唯一
```

### 证明

$$p(x)\stackrel{\mathrm{def}}{=}||f||\cdot||x||,x\in X$$

则 $|f(x)|\leqslant||f||\cdot||x||$, 由复 HBT 可得存在 $X$ 上线性泛函 $F:X\to\mathbb{C}$ 满足 $F|_M=f$ 且 $|F(x)|\leqslant p(x)$, 进而
$|F(x)|\leqslant||F||\cdot||x||$, 因此 $F$ 是 $X$ 上有界线性泛函 [[Wiki - 有界线性算子]]，且 $||F||\leqslant||f||$. 同时显然有 $||F||\geqslant||f||.$

证明中需要先证明实数和复数的 HBT 定理
## The 2 real HBT

X 是实向量空间[[Wiki - 一般线性空间|向量空间]]，$p$ 是 $X$ 上次线性泛函 [[Wiki - 次线性泛函]]，$M$ 是 $X$ 的子空间，$f$ 是 $M$ 上的线性泛函，并满足 $f(x)\leqslant p(x),\forall x\in M.$ 则存在 $X$ 上的线性泛函 $F$ 满足
1. $F| _M= f.$
2. $F( x) \leqslant p( x) , \forall x\in X.$

[[Wiki - 线性算子|线性泛函]]

### Proof

用到引理：

```ad-lemma

在定理条件下，设有 $x_{0}\in X / M$，取 $\tilde{M}= M \oplus span\{x_{0}\}$，则存在 f 的延拓线性泛函 $\tilde{f}:\tilde{M}\to \mathbb{R}$，满足
1. $\tilde{f}|_{M}= f$
2. $\tilde{f}(x)\leq p (x), \forall x\in \tilde{M}$
```

**证明引理：**

由 p 是次线性泛函可以导出存在 $\beta\in \mathbb{R}$，使得 $f (x)-p (x-x_{0})\leq \beta\leq p (y+x_{0})-f (y), \forall x, y\in M$

定义 $\tilde{f}: x+\lambda x_{0}\to f (x)+ \lambda\beta$。可知 $\tilde{f}|_{M}=f$ 且 $\tilde{f}$ 是线性的。再验证有 $\tilde{f}(x+\lambda x_{0})\leq p(x+\lambda x_{0})$

若引理已证，要利用 zorn 引理证明

设 $\mathcal{F}= \{g是f的延拓,g(x)\leq p(x), \forall x\in Dom(g)\}$，在上面引入偏序 $f\leq g\leftrightarrow g是f的延拓$ [[Wiki - 偏序关系]]

取 $\mathcal{C}$ 是 $\mathcal{F}$ 的任一全序子集，supppose $Y= \cup_{g\in \mathcal{C}}Dom(g)$，则定义 $G: Y\to \mathbb{R}, x\to g (x), x\in Dom(g)$ ，由于是全序的延拓，所以 G 的定义是良定的，且是 $\mathcal{C}$ 的上界。于是由 [[Wiki - Zorn引理]]，$\mathcal{F}$ 有极大元 F。

F 必须满足 $Dom(F)=X$，否则由引理，存在 F 在 $Dom (F)\oplus \{x_{0}\}$ 的延拓 $\tilde{F}$ 满足 $\tilde{F}(x)\leq p (x), \forall x\in Dom(\tilde{F})$，就有 $\tilde{F}\in \mathcal{F}, \tilde{F}\geq F$，矛盾。

## The 3 complex HBT

设 $X$ 为**复向量空间**，$p$ 是 $X$ 上次线性泛函，$M$ 是 $X$ 的子空间，$f:M\to\mathbb{C}$ 是 $M$ 上的线性泛函，并满足 $|f(x)|\leqslant p(x),\forall x\in M$. 则存在 $X$ 上的线性泛函 $F:X\to\mathbb{C}$ 满足

1. $F| _M= f.$
2. $| F( x) | \leqslant p( x) , \forall x\in X.$

### Proof

1、先看做实向量空间，取 $g= Re f$，则由 THE2，存在满足条件的延拓 $G|_{M}= g$

2、构造 $F (x)= G(x)-iG(ix)$，验证 F 是线性泛函。

3、验证 $F|_{M}= f$

4、验证 $|F (x)|\leq p(x)$

