---
aliases: 
info: 绝对连续函数定义和性质
date: 2024-05-21-星期二 08:53
update: 
tags:
  - wiki/year2024
  - wiki/month05
id: wiki20240521085320
banner: "![[astrowalk.gif]]"
---
---

## Def 1 绝对连续

```ad-definition
title: Definition 1

f 在 $[a,b]$ 上称为绝对连续，如果 $\forall\epsilon>0,\exists\delta$，对两两不交的 $(a_{k}, b_{k}),k=1,\dots,N$，只要 $\sum_{k=1}^{N}(b_{k}-a_{k})<\delta$，就有 $\sum_{k=1}^{N}|f(b_{k})-f(a_{k})|<\epsilon$。记为$f\in AC[a,b]$

```

## Pro 1 

```ad-proposition
title: Propositon 1

```

1、绝对连续蕴含一致连续 [[Wiki - 度量空间上的一致连续性]]

2、若f在$[a,b]$上**连续可微**，即$f'\in C([a,b])$，则$f\in AC[a,b]$

3、利普希茨条件蕴含绝对连续 [[Wiki - 利普希茨条件]]


```ad-example

$f(x)=\sqrt{ x }$ 在 $[0,1]$ 绝对连续，但不满足 lipschitz 条件，所以是**真包含**
```


## Pro 2 

```ad-proposition
title: Propositon 2

设$f\in L^{1}([a,b]),F(x) = \int_{a}^{x}f(t) \,dt,x\in [a,b]$，则$F\in AC[a,b]$

```

### Proof

利用 lebesgue 积分的绝对连续性 [[Wiki - lebesgue积分的性质#Cal 1 平移变换连续性]]

## Pro 3

```ad-proposition
title: Propositon 3

```
1、 $AC[a,b]\subset BV[a,b]$ [[Wiki - 有界变差函数]]，都为**真包含**。特别的，$f\in AC[a,b]$，则f'几乎处处存在且$f'\in L^{1}([a,b])$

2、$AC[a,b]$ 也是向量空间 [[Wiki - 一般线性空间]]

3、若 $f, g\in AC[a, b]\to fg\in AC[a,b]$


## The 1 

```ad-theorem
title: Theorem 1

If $f\in AC[a,b]$，则 $f'$ 几乎处处存在，且若 $f' (x)=0~a.e. x\in[a,b]$，则 f 为常值函数

```

### Proof

结论 1 由有界变差[[Wiki - 有界变差函数]]得到

结论 2 要用到 [[Wiki - 区间的vitali覆盖]]定理

见于树澄实分析讲义 24 节[[实分析讲义-于树澄.pdf]]

