---
aliases: 
info: 线性变换的矩阵表示
date: 2023-05-22-星期一 20:59
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230522205900
banner: "![[astrowalk.gif]]"
---
---

#线性代数/线性变换 

## Pro1 线性变换在一组基下

取定一般线性空间 [[Wiki - 一般线性空间]] V 上的一组基 [[Wiki - 基和维数#Def 1基]] $e_{1},e_{2},\dots,e_{n}$ .

$$\left\{ {\begin{array}{*{20}{c}}{\mathscr{A}\left( {{e_1}} \right) = {a_{11}}{e_1} + {a_{21}}{e_2} +  \ldots  + {a_{n1}}{e_n}}\\ \vdots \\{\mathscr{A}\left( {{e_n}} \right) = {a_{1n}}{e_1} +  \ldots  + {a_{nn}}{e_n}}\end{array}} \right.$$

              $$\mathscr{A}\left( {{e_1},{e_2}, \ldots {e_n}} \right) = \left( {{e_1}, \ldots {e_n}} \right)  \left( {\begin{array}{*{20}{c}}{{a_{11}}}& \ldots &{{a_n}}\\ \vdots & \ddots & \vdots \\{{a_{n1}}}& \ldots &{{a_{nn}}}\end{array}} \right)=(e_{1},\dots,e_{n})A$$
[[Wiki - 矩阵的乘法]]

称矩阵 A 为线性变换[[Wiki - 线性映射|线性变换]] $\mathscr{A}$ 在基 $e_{i}$ 下的矩阵



## Pro 2 坐标变换


```ad-proposition
title: Propositon 2

设β=A（α），在一组基下的坐标分别为 Y, X

则 Y= A X

```

[[Wiki - 基和维数#Def 1基]]

这样就把一般线性空间的线性变换**变为数组空间的线性变换**

[[Wiki - n维数组空间]]

