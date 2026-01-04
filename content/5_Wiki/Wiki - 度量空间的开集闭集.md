---
aliases:
  - n维空间上的开集闭集
info: n维向量空间中的邻域，开闭区间
date: 2023-01-13-星期五 14:56
update: 2023-01-13-Friday 15:50:33
tags:
  - wiki/year2023
  - wiki/month01
  - 数学分析/多变量微积分
  - 几何学/度量空间
  - 拓扑
id: wiki20230113145654
banner: "![[astrowalk.gif]]"
---
---


## Definition1 开球

^5aec18

对于度量空间 X，距离定义为 d [[Wiki - 度量空间|距离空间]]

```ad-definition
title: Definition 1

For  $\delta>0$  the set

$B (a ; \delta)=\left\{x \in X \mid d (a, x)<\delta\right\}$

is called the ball with center  $a \in X$  of radius  $\delta$  or the  $\delta -neighborhood$ of the point  $a \in X$ .

```

$X= \mathbb{R}^{m}$ 为特殊情况

## Definition 2 开集

^ec2d08

```ad-definition
title: Definition 2

 A set  $G \subset X$  is open in  X  if for every point  $x \in G$  there is a ball  $B (x ; \delta)$  such that  $B (x ; \delta) \subset G$ .

```


## Definition 3 闭集

 ```ad-definition
title: Definition 3

The set  $F \subset X$  is closed in  X if its complement  $G=X \backslash F$  is open in  X .

```



另一种：F 包含它自身所有的聚点 [[Wiki - 度量空间的内部外部#Definition 2 聚点]]

## Proposition 1

a) The union  $\bigcup_{\alpha \in A} G_{\alpha}$  of the sets of any system $\left\{G_{\alpha}, \alpha \in A\right\}$  of open sets in  X  is an open set in  X .

b) The intersection  $\bigcap_{i=1}^{n} G_{i}$  of a **finite** number of open sets in  X  is an open set in  X .

 $\left.\mathrm{a}^{\prime}\right)$  The intersection  $\bigcap_{\alpha \in A} F_{\alpha}$  of the sets of any system  $\left\{F_{\alpha}, \alpha \in A\right\}$  of closed sets  $F_{\alpha}  \in  X$ is a closed set in  X .
 
 $\mathrm{b}^{\prime}  )$ The union  $\bigcup_{i=1}^{n} F_{i}$  of a **finite** number of closed sets in X  is a closed set in  X .


同实数域上的开闭区间性质 [[Wiki - 实数域的开集闭集#Pro 1 开集性质]] 

[[Wiki - 实数域的开集闭集#Pro 2 闭集性质]]


## Definition 4 邻域

^cb7c55

An open set ([[Wiki - 度量空间的开集闭集#^ec2d08]]) in $R^m$ containing a given point is called a neighbourhood. 

[[Wiki - 度量空间的开集闭集#^5aec18]] 是特殊的 neighborhood.


## Pro 

```ad-proposition
title: Propositon 1

设 A 是 度量空间 X 的子集合

1. $A^{\circ}$ 是开集，而且是包含于 A 的最大开集 
2. $\overline{A}$ 是闭集，而且是包含 A 的最小闭集

```


[[Wiki - 度量空间的内部外部|闭包和内部]]


