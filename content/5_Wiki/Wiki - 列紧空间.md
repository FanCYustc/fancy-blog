---
aliases: 
info: 度量空间列紧性的定义
date: 2023-11-11-星期六 22:26
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 几何学/度量空间
  - 泛函分析
id: wiki20231111222613
banner: "![[astrowalk.gif]]"
---
---

## Def 1 列紧性

```ad-definition
title: Definition 1
度量空间$(X,d)$，$A\subset X$

如果$A$中任一点列都有在$X$中收敛的子列，则称$A$列紧。

如果$A$中任一点列都有在$A$中收敛的子列，则称$A$自列紧。

如果空间$X$自身列紧，则称$X$为列紧空间。

```

[[Wiki - 多变量函数的极限]]

[[Wiki - 紧致集合]]

## The 1 列紧与闭子集

[[Wiki - 度量空间的闭子集#The 2 紧致与闭子集]]

## Pro 1 列紧与完备性

```ad-proposition
title: Propositon 1

列紧空间一定是完备空间，完备性推不出列紧性

```

[[Wiki - 度量空间的完备性]]

### Proof

对基本列 $\{x_{n}\}$，由列紧空间存在 $\{x_{n_{k}}\}\to x_{0}\in X$。则 $d (x_{n}, x_{0})\leq d (x_{n}, x_{n_{k}})+d (x_{n_{k}}, x_{0})\to 0$
## Pro 2 列紧的等价命题

1、列紧与紧致性有区别，在度量空间子列紧与紧致等价


[[Wiki - 度量空间的紧致性]]

```ad-note

$\mathbb{R}^n$ 的子集是紧致的当且仅当它是有界和闭[[Wiki - n维空间上的开集闭集]]的

**注意必须是 r 维数组空间**
```


[[Wiki - 一致等度连续]]


2、![[Wiki - 度量空间完全有界#The 1 与列紧性]]


### Proof

同 [[Wiki - 紧致集合]]，从有界闭集到紧致的证明中，每一个分量仿照实数上的情况证明有收敛子列

## Pro4 列紧一定可分

列紧空间都是可分的 [[Wiki - 度量空间的稠密性]]

### Proof

取 $N_{\frac{1}{n}}$ 为有限 $\frac{1}{n}-$ 网，则 $\bigcup_{n=1}^{\infty} N_{\frac{1}{n}} \subset X$，为可数集且稠密

