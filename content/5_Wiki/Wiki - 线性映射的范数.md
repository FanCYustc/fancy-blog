---
aliases: 
info: 线性映射的范数的定义和性质
date: 2023-11-23-星期四 08:10
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/线性映射
  - 几何学/赋范空间
id: wiki20231123081044
banner: "![[astrowalk.gif]]"
---
---

## Def 1 线性映射的范数

```ad-definition
title: Definition 1


$$
\mid\mid \mathscr{A}\mid\mid=\sup_{|x|=1}\{\mathscr{A}(x)\}
$$

称为线性映射 $\mathscr{A}\in L(\mathbb{R}^{n},\mathbb{R}^{m})$ 的模，与其在一组基下的矩阵的模相同

```

[[Wiki - 矩阵范数]]

即线性映射的范数**与基的选取无关**


## Pro 1 映射范数性质

```ad-proposition
title: Propositon 1

1. 设 $\mathcal{A}\in L(\mathbb{R}^n,\mathbb{R}^m)$, 则 $\|\mathcal{A}\|<+\infty$, 且 $\mathcal{A}$ 是 $\mathbb{R}^n\to\mathbb{R}^m$ 的一致连续映射； 
2. 设 $\mathcal{A},\mathcal{B}\in L(\mathbb{R}^n,\:\mathbb{R}^m),\:c\in\mathbb{R}$, 则

$$
\lVert\mathcal{A}+\mathcal{B}\rVert\leqslant\lVert\mathcal{A}\rVert+\lVert\mathcal{B}\rVert,\quad\lVert c\mathcal{A}\rVert=\lvert c\rvert\:\lVert\mathcal{A}\rVert.
$$

3. 设 $\mathcal{A}\in L(\mathbb{R}^n,\mathbb{R}^m),\mathcal{B}\in L(\mathbb{R}^m,\mathbb{R}^k)$, 则 $\|\mathcal{B\circ A}\|\leqslant\|\mathcal{B}\|\|\mathcal{A}\|.$

```
[[Wiki - 度量空间上的一致连续性]]
## Cal 1 

当 $\mathscr{A} \in L(\mathbb{R}^{n},\mathbb{R}^{1})$，$\mathscr{A}(x)=a_{1}x_{1}+\dots+a_{n}x_{n}$

则 $\mid\mid \mathscr{A}\mid\mid=(a_{1}+a_{2}+\dots+a_{n})^{1/ 2}$，退化为欧几里得范数（$\mathscr{A}$ 是 n 维度量空间的元素）





