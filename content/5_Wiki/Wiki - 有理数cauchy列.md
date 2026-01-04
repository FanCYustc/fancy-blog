---
aliases: 
info: 有理数cauchy列的定义和性质
date: 2023-08-17-星期四 22:32
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230817223204
banner: "![[astrowalk.gif]]"
---
---
#数学分析/实数 #数学分析/数列 

## Def 1 有理数 cauchy 列

```ad-definition
title: Definition 1

$$\begin{gathered}\text{一个有理数列}\{x_n\}\text{称为是有理数Cauchy列},\text{ 如果对任意}n\in\mathbb{N},\textit{存在}\\|x_k-x|<\frac1n.\end{gathered}$$

```

与数分 B1 中的 cauchy 列的区别：此时还没有定义实数是什么，只能用有理数来说

## Pro 1 cauchy 列有界

```ad-proposition
title: Propositon 1

有理数 cauchy 列有界


```

[[Wiki - 柯西收敛准则]]

## Pro 2 单调有界必收敛

```ad-proposition
title: Propositon 2

单调递增的有界有理数列是有理数 cauchy 列

```


### Proof

对任意 n，$nx_{1},nx_{2}\dots$ 也单增有上界；设 $m_{0}$ 是最小整数上界

所以存在 k, l>N, s.t.
$$
m_{0}-1\leq nx_{k},nx_{l}\leq m_{0}
$$



