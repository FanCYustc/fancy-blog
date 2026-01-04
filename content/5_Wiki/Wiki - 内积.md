---
aliases: 
info: 内积的定义
date: 2023-07-06-星期四 21:54
update: 
tags:
  - wiki/year2023
  - wiki/month07
  - 几何学/内积空间
id: wiki20230706215450
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 


## Def1 内积

```ad-definition
title: Definition 1

在一个 **线性空间**定义一个二元运算内积 $(\boldsymbol{a,b})$

（现在强调在**实数域**上）满足

1.     对称性：$(\boldsymbol{a,b})=(\boldsymbol{b,a})$

2.     线性性 $(\boldsymbol{a+c,b})=(\boldsymbol{a,b})+(\boldsymbol{c,b})$

3.     正定性 $(\boldsymbol{a,a})>  0$

则称（a, b） 为两个向量的内积

```

[[Wiki - 数域]]

这是一种公理化的定义，可以有很多种形式满足条件
## e.g.

在任意线性空间[[Wiki - 一般线性空间]]下都存在内积的定义方式

对一般线性空间 V (R）的一组基 $\{e_{1},\dots,e_{n}\}$ [[Wiki - 基和维数#Def 1基]]

$$
\vec{\alpha}=a_{1}e_{1}+\dots+a_{n}e_{n}
$$
$$
\vec{\beta}=b_{1}e_{1}+\dots+b_{n}e_{n}
$$

定义该空间的内积为

$$
(\vec{\alpha},\vec{\beta})=a_{1}b_{1}+\dots+a_{n}b_{n}
$$


此时

$$
(e_{i},e_{j})=\delta_{ij}
$$

为**此内积定义下的标准正交基**[[Wiki - Schmidt 正交化]]

## Def 2 复空间内积

```ad-definition
title: Definition 1

V 是 $\mathbb{C}^{n}$ 上的线性空间，定义内积 $(\cdot,\cdot):V\times V\to \mathbb{C}$，满足

1. 共轭对称：$\overline{(\alpha,\beta)}=(\beta,\alpha)$
2. 共轭线性性：$$(\lambda\alpha+\mu\beta,\gamma)=\lambda(\alpha,\gamma)+\mu(\beta,\gamma),(\alpha,\lambda\beta+\mu\gamma)=\overline{\lambda}(\alpha,\beta)+\overline{\mu}(\alpha,\gamma)$$
3. 正定性：$(\alpha,\alpha)\geq 0$，当且仅当 $\alpha=0$ 时取 0

```

其也能囊括 $\mathbb{K}=\mathbb{R}$ 上的内积定义