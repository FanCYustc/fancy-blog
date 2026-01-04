---
aliases: 
info: 线性映射维数的关系
date: 2023-08-01-星期二 22:21
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 线性代数/线性空间
id: wiki20230801222113
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性映射  

[[Wiki - 线性映射的像空间和核]]


## Pro 1 同构

```ad-proposition
title: Propositon 1

$\mathscr{A}:U\to V$ 是线性映射，则 $\mathscr{A} / ker\mathscr{A} \simeq range\mathscr{A}$


```


[[Wiki - 空间的商]]

[[Wiki - 线性空间同构]]

### Proof

证 $\sigma:\mathscr{A} / ker\mathscr{A}\to range\mathscr{A},\quad \overline{\alpha}=\alpha+ker\mathscr{A}\to\mathscr{A}(\alpha)$ 是同构映射 [[Wiki - 线性空间同构#Def1 同构映射]]

首先证明 $\sigma$ 是良定义的. 如果 $\bar{\alpha}=\bar{\beta}$, 那么 $\alpha-\beta\in\ker(\mathscr{A})$, 这就说明 $\mathscr{A}(\alpha)=\mathscr{A}(\beta)$. 所以 $\bar{\alpha}$ 在同余类上的取值与代表元的选取没有关系.

其次证明 $\sigma$ 是线性映射. 设 $\overline{\alpha},\overline{\beta}\in U/\ker\mathscr{A},\lambda,\mu\in F$, 我们有

$$
\mathscr{A}(\lambda\overline{\alpha}+\mu\overline{\beta})=\mathscr{A}(\overline{\lambda\alpha+\mu\beta})=\mathscr{A}(\lambda\alpha+\mu\beta)=\lambda\mathscr{A}(\alpha)+\mu\mathscr{A}(\beta)=\lambda\mathscr{A}(\overline{\alpha})+\mu\mathscr{A}(\overline{\beta}).
$$
 
 
最后证明 $\sigma$ 是一一对应. To proof $\sigma$ 是满射，$\alpha\in range\mathscr{A}$, suppose $\alpha=\mathscr{A}(\alpha')$, thus $\sigma(\bar{\alpha'})=\alpha$

要证明它是单射，$\sigma(\bar{\alpha})=\sigma(\bar{\beta})$，则 $\mathscr{A}(\alpha)=\mathscr{A}(\beta)$
所以 $\mathscr{A}(\alpha-\beta)=\vec{0}\to\alpha-\beta\in ker\mathscr{A}$ so $\bar{\alpha}=\bar{\beta}$


## The 1  线性映射基本定理

```ad-theorem
title: Theorem 1

对$T\in L(V,W)$
$$
dim\space V = dim\space null\space T+ dim\space range\space T
$$



```

[[Wiki - 基和维数]]

来源：[[Book - 线性代数应该这样学]]

具体理解 [[Wiki - 线性方程组解的结构]]

