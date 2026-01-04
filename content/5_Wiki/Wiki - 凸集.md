---
aliases:
  - 凸包
info: 
date: 2024-11-13-星期三 10:27
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 几何学
  - 泛函分析
  - 拓扑
id: wiki20241113102737
banner: "![[astrowalk.gif]]"
---
---

## Def 1 凸集


X 为向量空间[[Wiki - 一般线性空间|向量空间]]，C 为其子集，若 $\forall x, y\in C,\forall t\in [0,1]$，有 $tx+(1-t) y\in C$，则称 C 是凸集

## Pro 1

任一族凸集的交还是凸集

## Def 2 凸包

对于集合 $A\subset X$，包含 A 的所有凸集的交称为 A 的**凸包**。

凸包等价于 A 中向量**凸组合**构成的全体，即

$$
conv(A)= \left\{ \sum_{k=1}^{n} \lambda_{k}x_{k} | n\in \mathbb{N}, x_{k}\in A, \lambda_{k}\in[0,1], \sum_{k=1}^{n}\lambda_{k} = 1 \right\}
$$

## Pro 2

对 $\theta_{i}\geq0$ $\begin{array}{r}{i=1,2,\ldots,\;\sum_{i=1}^{\infty}\theta_{i}=1\;,x_{1},x_{2},\ldots\in C,}\end{array}$ 如果下面的级数收敛, 我们有  

$$
\sum_{i=1}^{\infty}\theta_{i}x_{i}\in C.
$$

[[Wiki - 无穷级数的收敛性]]

设 $p:\mathbf{R}^{n}\rightarrow\mathbf{R}$ 对所有 $x\in C$ 满足 $p(x)\geqslant0,$ 并且 $\begin{array}{r}{\int_{C}p(x)d x=1,}\end{array}$ 其中 $C\subseteq\mathbf{R}^{n}$ 是凸集。那么，如果下面的积分存在，我们有  

$$
\int_{C}p(x)x d x\in C.
$$  

若有随机变量X, $P(X=x)=p(x),x\in C,$ 则 $\begin{array}{r}{E X=\int_{C}p(x)x d x\in C.}\end{array}$  

[[Wiki - 数学期望]]