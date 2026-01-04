---
aliases:
  - Banach不动点定理
info: 
date: 2024-09-09-星期一 14:20
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 泛函分析
  - 几何学/度量空间
id: wiki20240909142025
banner: "![[astrowalk.gif]]"
---
---

## The 1 压缩映射定理

度量空间 $(X,d)$, 映射 $T:X\to X$, 如果存在 $x^*\in X$ 使得 $T(x^*)=x^*$, 则称 $x^*$ 是 $T$ 的一个不动点。如果存在 $\alpha\in(0,1)$, 使得
$$d(T(x),T(y))\leqslant\alpha d(x,y),\forall x,y\in X$$
则称 $T$ 是一个压缩映射。

完备度量空间 [[Wiki - 度量空间的完备性]]到自身的**压缩映射有唯一的不动点**。

### Proof

证明使用 picard 迭代，类似 [[Wiki - cauchy初值定理]]


```ad-attention

不完备时的反例：$X=(0,1),d=|x-y|$，不完备，$T (x)=\frac{1}{2} x$，无不动点
```

任取 $x_{0}$，$x_{n+1}=Tx_{n}$

则有 $d (x_{n+p}, x_{n})\leq \frac{\alpha^{n}}{1-\alpha}d(x_{1},x_{0})\to 0$

所以由 X 的完备性，存在 $x^{*}\in X, d (x_{n}, x^{*})\to 0$

$$
d(Tx^{*},x^{*})\leq d(Tx^{*},Tx_{n})+ d(Tx_{n}x_{n})+d(x_{n},x^{*})\to 0
$$

所以 $Tx^{*}=x^{*}$

再证唯一性：反证。