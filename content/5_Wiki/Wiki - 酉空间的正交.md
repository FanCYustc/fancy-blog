---
aliases: 
info: 酉空间的正交，正交化，正交投影
date: 2023-12-25-星期一 09:10
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/酉空间
  - 正交
id: wiki20231225091042
banner: "![[astrowalk.gif]]"
---
---

## Def 1 正交

酉空间正交为 $(\alpha,\beta)=0,\alpha,\beta\in \mathbb{C}^{n}$

## Def 2 标准正交基

```ad-definition
title: Definition 2


$\{\alpha_{1},\dots,\alpha_{n}\}$ 为一组标准正交基，如果 $(\alpha_{i},\alpha_{j})=\delta_{ij}$

此时若 $\alpha,\beta$ 在标准正交基下的坐标为 x, y，则 $(\alpha,\beta)=x^{*}y$


```

[[Wiki - Schmidt 正交化|标准正交基]]

[[Wiki - 不同基下的度量矩阵变换]]

## Pro 1 正交化

```ad-proposition
title: Propositon 1

对酉空间任意一组基 $\{\alpha_{1},\dots,\alpha_{n}\}$，存在标准正交基 $\{\beta_{1},\dots\beta_{n}\}$，使得存在过渡矩阵 T，$(\beta_{1},\dots,\beta_{n})=(\alpha_{1},\dots\alpha_{n})T$，其中 T 为上三角阵，且对角元为正

```

[[Wiki - Schmidt 正交化]]

## Def 3 正交投影

和 [[Wiki - 欧式空间的子空间]]中的正交投影没什么区别

## Pro 2 勾股定理

$x\perp y$, 则 $\|x+y\|^{2}= \|x\|^{2}+\|y\|^{2}$

[[Wiki - Cauchy-Schwarz不等式]]