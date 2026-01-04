---
aliases:
  - 等价范数定理
info: 
date: 2024-09-18-星期三 10:29
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 泛函分析
  - 泛函分析/线性算子
  - 几何学/赋范空间
id: wiki20240918102921
banner: "![[astrowalk.gif]]"
---
---

## Def 1 范数等价

$X$ 是向量空间[[Wiki - 赋范空间]]，$\|\cdot\|_1$ 和 $\|\cdot\|_2$ 是 $X$ 上的两个范数 [[Wiki - 范数]]，称 $\|\cdot\|_2$ 强于 $\|\cdot\|_1$ 是指：$\forall\{x_n\}_{n=1}^{\infty}\subset X$,
$$||x_n||_2\to0\Rightarrow||x_n||_1\to0$$
记作 $||\cdot||_1\lesssim||\cdot||_2$. 如果 $||\cdot||_2$ 强于 $||\cdot||_1$, 同时 $||\cdot||_1$ 强于 $||\cdot||_2$, 则称二者是等价范数。

```ad-example

$\mathbb{R}^{n}$ 上 $L^{p}$ 范数 $\|\cdot\|_{p}$ 彼此等价
```

[[Wiki - Lp线性空间]]

## Pro 1 

 $||\cdot||_1\lesssim||\cdot||_2$，等价于 $\exists C,s.t. \|x\|_{1}\leq C\|x\|_{2},\forall x\in X$

## Cal 1 

$\|\cdot\|_{1}$ 与 $\|\cdot\|_{2}$ 等价，当且仅当 $\exists C_{1},C_{2}$，s.t. $C_{1}\|x\|_{1}\leq \|x\|_{2}\leq C_{2}\|x\|_{1},\forall x\in X$

## The 1 

```ad-theorem

对于有限维空间，所有范数都等价

```

 [[Wiki - Hamel基]]

### Proof

见[[泛函分析2023秋笔记.pdf]] 1.4 节定理 1.4.2 证明

通过取基 [[Wiki - 基和维数]]，都像 $\mathbb{R}^{n}$ 空间对应

## The 2 等价范数定理

$(X,\|\cdot\|_{1}),(X,\|\cdot\|_{2})$ 都是 banach 空间 [[Wiki - banach空间]]，$||\cdot||_1\lesssim||\cdot||_{2}$，则有 $\|\cdot\|_{1}\simeq \|\cdot\|_{2}$

### Proof

利用 [[Wiki - 逆算子定理]]

