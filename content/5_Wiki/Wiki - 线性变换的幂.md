---
aliases: power of operator
info: 线性变换多次操作的性质
date: 2023-08-08-星期二 15:33
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230808153329
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 

[[Wiki - 线性映射|线性变换]]
## Pro 1 null space 递增

$$
\{0\}=null\space T^{0}\subset \text{null} \space T^{1}\dots \subset \text{null}\space T^{k}\dots
$$

[[Wiki - 线性映射基本定理#Def 1 null space]]

直观上很好理解

## Lemma 1

Suppose $T\:\in\:\mathcal{L}(V)$ . Suppose $\text{m}$ is a nonnegative integer such that null $T^m=\text{null }T^{m+1}$ Then

$$
\operatorname{null}T^m=\operatorname{null}T^{m+1}=\operatorname{null}T^{m+2}=\operatorname{null}T^{m+3}=\cdots.
$$

即只要有一个幂为递增，null space 就保持不变

## Pro 2

```ad-proposition
title: Propositon 2

Dim V=n, then

$$
\operatorname{null}T^{n}=\operatorname{null}T^{n+1}=\operatorname{null}T^{n+2}=\cdots
$$


```

这说明从 n 开始一定会有 lemma1 的现象

## Pro 3

```ad-proposition
title: Propositon 3

Suppose $T\in\mathcal{L}(V)$. Let n=dim V.Then
$$
V=\text{null}T^n\oplus\text{range}T^n.
$$

```
