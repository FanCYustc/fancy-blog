---
aliases:
  - 正交投影
info: 
date: 2023-08-04-星期五 11:41
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 正交
id: wiki20230804114130
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 

## Def 1 子空间

```ad-theorem
title: Theorem 1


$W_{1},W_{2}$ 为欧式空间 V 的子空间，则 $W_{1},W_{2}$ 也是欧式空间，其内积的定义就是 V 内积的定义

```
[[Wiki - 欧几里得空间]]

## Def 2 正交补

介绍了正交补的概念 [[Wiki - 欧几里得空间的距离和夹角#Def 3 正交]]

```ad-definition
title: Definition 1


$$U^{\perp}=\{v\in V:\langle v,u\rangle=0\space \text{for every}\space u\in U\}.$$


```

整个空间就是 U 和 $U^\perp$ 的直和[[Wiki - 子空间的直和]]

## Def 2 正交分解

$v\in V$, 可唯一分解为 u+w, $u\in U, w\in U^\perp$, U 是 V 的子空间。

$P_{U}v=u$, 称为 orthogonal projection, 是一个线性映射[[Wiki - 线性映射]]

```ad-proposition

range$P_U$ =U,null $P_U$=$U^\perp$



```
[[Wiki - 线性映射的像空间和核]]

##  Pro 2 最小距离

```ad-proposition
title: Propositon 2


$$
\mid\mid v-P_{U}v\mid\mid\leq \mid\mid v-u\mid\mid
$$
对 $v\in V$ 和任意 $u\in U$

```


应用：[[Wiki - Bessel不等式]]

## 求正交投影

设 $\alpha_{1},\dots,\alpha_{r}$ 为欧式子空间 W 的一组标准正交基，则

$$
P_{W}(\alpha)=(\alpha,\alpha_{1})\alpha_{1}+\dots+(\alpha,\alpha_{r})\alpha_{r},\forall\alpha\in V
$$

