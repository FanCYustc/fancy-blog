---
aliases:
  - 多项式矩阵的初等变换
  - Smith标准型
info: 多项式矩阵相抵的定义
date: 2023-12-06-星期三 10:16
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/多项式
  - 线性代数/矩阵
id: wiki20231206101629
banner: "![[astrowalk.gif]]"
---
---

## Def 1 初等变换

```ad-definition
title: Definition 1

```
在多项式矩阵中 [[Wiki - 多项式矩阵]]，有下面三种初等变换：

1、$P_{ij}$ ：i, j 两行（列）交换

2、$D_{i}(C)$ ：第 i 行（列）乘上参数 C

3、$T_{ij}(P(\lambda))$ ：将第 j 行（列）乘上 $P(\lambda)$ 后加到第 i 行（列）

[[Wiki - 矩阵的初等变换]]




## Def 2 多项式矩阵相抵

```ad-definition
title: Definition 2

若两个多项式矩阵可以由多项式矩阵有限次初等变换互相得到，则称多项式矩阵相抵



```

[[Wiki - 矩阵相抵]]

## Def 3 相抵标准型

```ad-definition
title: Definition 3

$A (\lambda)\in F[\lambda]^{n\times n}$，$rankA(\lambda)=r$，则 $A(\lambda)$ 相抵与标准型 $B(\lambda)=diag(d_{1}(\lambda),d_{2}(\lambda),\dots,d_{r}(\lambda),0,\dots,0)$
满足 $d_{i}(\lambda)$ 为首一多项式，$i=1,\dots,r$，且 $d_{i}(\lambda)|d_{i+1}(\lambda),i=1,\dots ,r-1$

$B(\lambda)$ 称为 **Smith 标准型**

```

[[Wiki - 极大线性无关组与秩]]
### Proof

归纳



## pro 1 

设数域 $F$ 上 $m\times n\space\lambda$ 矩阵 $A(\lambda)$ 的秩为 r.则存在数域 $F$ 上 $m$ 阶初等 $\lambda$ 方阵 $P_1(\lambda),P_2(\lambda),...,P_s(\lambda)$ 和数域 $F$ 上 n 阶初等 $\lambda$ 方阵 $Q_1(\lambda),Q_2(\lambda),...$, $Q_s(\lambda)$, 使得

$$
P_{s}(\lambda)\cdots P_{2}(\lambda)P_{1}(\lambda)A(\lambda)Q_{1}(\lambda)Q_{2}(\lambda)\cdots Q_{s}(\lambda)\:=\:\begin{pmatrix}
D(\lambda) &0  \\
0& 0
\end{pmatrix}
$$



