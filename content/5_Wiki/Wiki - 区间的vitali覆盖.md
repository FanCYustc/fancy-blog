---
aliases: 
info: 
date: 2024-05-20-星期一 16:24
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/测度论
id: wiki20240520162406
banner: "![[astrowalk.gif]]"
---
---

## Def 1 vitali 覆盖

```ad-definition
title: Definition 1

$E\subset \mathbb{R}$，$\Gamma=\{I_{k}\}$ 为区间族称为 vitali 覆盖，如果满足 $\forall x\in E,\forall\epsilon>0, \exists I\in \Gamma, x\in I,|I|<\epsilon$

```


## Cal 1 

Vitali 覆盖的区间族是**无穷覆盖**

## The 1 vitali 覆盖定理

```ad-theorem
title: Theorem 1

$E\subset \mathbb{R},m^{*}(E)<\infty$，$\Gamma = \{I_{k}\}$ 为 vitali 覆盖，则 $\forall \epsilon>0,\exists I_{1},\dots, I_{n}\in \Gamma$，满足 $I_{1},\dots,I_{n}$ 两两不交，且 $m^{*}(E / \cup_{i=1}^{n}I_{i})<\epsilon$ 

```

[[Wiki - lebesgue外测度]]

跟 [[Wiki - vitali覆盖方法]]很像但不一样

### Proof

不妨设 $\Gamma$ 是闭区间族。用到外测度的外正则性 ![[Wiki - lebesgue外测度#Pro 1]]
存在开集 G 使得 $m (G)< (1+\epsilon)m^{*}(E)$

1、若存在 $E\subset \cup_{i=1}^{n}I_{n}$，则成立

2、若不存在，归纳说明：假设取到 $I_{1},\dots I_{k}$，则设

$$
\delta_{k} = \sup \{|I|: I\in \Gamma, I\cap I_{j} = o,1\leq j\leq k\}
$$

由于假设和 vitali 覆盖的定义，右边的集合非空，所以一定能取到与 $I_{j}$ 不交的 $I_{k+1}$，且有 $|I_{k+1}|> \frac{1}{2}\delta_{k}$

此过程能无限进行，且有 $\sum_{i=1}^{+\infty}|I_{i}|\leq m (G)< +\infty$

说明 $|I_{n}|\to 0$ 且收敛，再利用 vitali 覆盖说明 $\cup_{i=1}^{N}I_{i}$ 满足 $m^{*}(E / \cup_{i=1}^{N}I_{i})<\epsilon$

参考于树澄实分析讲义 22 讲[[实分析讲义-于树澄.pdf]]