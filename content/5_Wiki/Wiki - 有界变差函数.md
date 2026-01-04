---
aliases:
  - 全变差
info: 有界变差函数定义
date: 2024-05-19-星期日 17:27
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数学分析/函数
  - 实分析/函数
id: wiki20240519172710
banner: "![[astrowalk.gif]]"
---
---

## Def 1 有界变差函数

```ad-definition
title: Definition 1

$f:[a,b]\to \mathbb{R}$，对 $[a,b]$ 的任意划分 P：$a=t_{0}<t_{1}<\dots<t_{n}=b$，定义

$$
V(f,P) = \sum_{j=1}^{n}|f(t_{j})-f(t_{j-1})|
$$

称为 f 在 $[a,b]$ 上相对于 P 的变差。$V_{a}^{b}(f)= \sup_{P} V(f,P)$ 称为 f 在 $[a,b]$ 上的**全变差**

若 $V_{a}^{b}(f)<\infty$，则称 f 为**有界变差函数**，记为 $f\in BV[a,b]$

```

思想来源于 ![[Wiki - 复变函数路径积分#Def 1 可求长曲线]]

## Pro 1 

```ad-proposition
title: Propositon 1

1、曲线 $z (t)= (x (t), y (t)), t\in [a,b]$，则曲线 z 可求长等价于 $x, y\in BV[a,b]$

2、若 f 可微且 $|f'|\leq M$，则 $V_{a}^{b}(f)\leq M (b-a). f\in BV[a,b]$

```



## Pro 2 变差的性质

```ad-proposition
title: Propositon 2

1. $V(f,P)>|f(b)-f(a)|$
2. $V(\alpha f,P)=|a|V(f,P)$
3. 对 $f, g:[a,b]\to \mathbb{R}$，有 $V (f+g, P)\leq V(f,P)+V(g,P)$
4. 若 P‘是 P 的精细划分，则 $V(f,P')\geq V(f,P)$
5. 对 $c\in(a,b)$，$P_{1}$ 是 $[a,c]$ 上的划分，$P_{2}$ 是 $[c,b]$ 上的划分，则对 $f:[a,b]\to \mathbb{R}$，$V(f,P_{1}\cup P_{2})=V(f,P_{1})+V(f,P_{2})$

```


性质 2 和 3 说明 $BV[a,b]$ 是一个向量空间 [[Wiki - 一般线性空间]]

### Proof

基本都是有变差的定义验证

## Pro 3 全变差的性质

```ad-proposition
title: Propositon 3

1. 对任意 $x\in[a,b]$，$V_{a}^{b}(f) = V_{a}^{x}(f) + V_{x}^{b}(f)$，其中规定 $V_{c}^{c}(f) = 0,\forall c\in[a,b]$
2. If $f\in BV[a,b]$，则 $x\to V_{a}^{x}(f)$ 作为函数关于 x 在 $[a,b]$ 上单调递增

```

### Proof

对性质 1，先证 $V_{a}^{b}(f)\leq RHS$，即证对任意 $[a,b]$ 的划分 P，使得 $V (f, P)\leq V_{a}^{x}(f)+V_{x}^{B}(f)$，由变差的性质即得，$P_{1}\cup P_{2}=P'$ 是 P 的精细划分

再证 $LHS\geq RHS$ ：$\forall\epsilon>0$，存在 $[a,x]和[x,b]$ 上的划分 $P_{1},P_{2}$，使得 $V (f, P_{1})\geq V_{a}^{x}(f)-\epsilon, V (f, P_{2})\geq V_{x}^{b}(f)-\epsilon$。利用变差的性质再令 $\epsilon\to 0$ 即证

对性质 2，即证 $V_{a}^{x_{2}}(f)- V_{a}^{x_{1}}(f) = V_{x_{1}}^{x_{2}}(f)\geq 0$，由性质 1。其中 $x_{1}<x_{2}$


## Pro 4 

```ad-proposition
title: Propositon 4

设 $f\in BV[a,b]$，则 f 在 $[a,b]$ 上几乎处处可微且 $f'\in L^{1}([a,b])$

```

[[Wiki - lebesgue积分]]


### Proof 

[[Wiki - Jordan分解定理]]和 [[Wiki - 单调函数微分定理]]的直接推论 