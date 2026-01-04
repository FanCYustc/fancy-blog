---
aliases:
  - 向量的同余类
info: 空间的商
date: 2023-11-06-星期一 09:11
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/线性空间
id: wiki20231106091112
banner: "![[astrowalk.gif]]"
---
---

## Def 1 向量同余

```ad-definition
title: Definition 1

设 W 是 V 的子空间，对 $\alpha, \beta \in V$, $\alpha-\beta\in W$，称 $\alpha和\beta$ **同余**，记为 $\alpha \equiv\beta\quad \text{mod}W$

```


## Def 2 afine subset
```ad-definition
title: Definition 2


A V's **affine subset** is $v+U=\{v+u:u\in U\}$ for a fixed v and U
$v+U$ 即为 VmodU 的一个**同余类**：若 $\mathbf{\alpha}\equiv \mathbf{v}$，则 $\mathbf{\alpha}\in \mathbf{v}+U$

```

## Def 3 quotints 商空间

V 是赋范空间 [[Wiki - 赋范空间]]， $V /U=\{v+U:v\in V\}$

表示 V 平行于 U 的所有仿射集合，其中 U 是 V 的**闭子空间** [[Wiki - n维数组空间#Def2 子空间]]

**此时的元素变成的向量构成的集合，是等价类构成的空间**

**来源：[[Book - 线性代数应该这样学]]**

## The 1 与补空间同构

```ad-theorem
title: Theorem 1


$$
V=W\oplus W'\to V / W \simeq W'
$$


```

### Proof 

To proof $\sigma (\boldsymbol{\overline\alpha}) = \boldsymbol{\alpha_{2}},\alpha=\alpha_{1}+\alpha_{2}\in V,\alpha_{1}\in V,\alpha_{2}\in V'$

对 $\overline{\alpha}=\overline{\alpha'},\alpha'=\alpha_{1}'+\alpha_{2}',\alpha'_{1}\in W,\alpha'_{2}\in W'$

And $\alpha-\alpha'\in W=\alpha_{1}-\alpha'_{1}+\alpha_{2}-\alpha'_{2}$

由直和定义，$\alpha_{2}-\alpha'_{2}\in W \cap W'=\vec{0}$，所以 $\sigma$ 是 $V / W\to W'$ 的单射

对 $\alpha\in W'=\alpha+\vec{0}\to \sigma(\overline\alpha)=\alpha$ 所以是满射

再验证保加法和数乘，是一个同构映射


## Cal 1 

```ad-proposition
title: Propositon 2
```
可以验证，两个空间的商也是一个线性空间 [[Wiki - 一般线性空间]]
且
$$
dim\space V / U=dim\space V - dim\space U
$$

[[Wiki - 基和维数]]


```ad-example


$V=\mathbb{R}^{2}, W=\{(x,v)|x\in \mathbb{R}\}$，$\alpha\equiv\beta \space modW\leftrightarrow y_{\alpha}=y_{\beta}$ 

So $V / W=\{平行于x轴的直线\}$

```







