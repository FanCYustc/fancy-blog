---
aliases:
  - 乘积度量空间
info: 
date: 2024-10-30-星期三 09:58
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析/线性算子
  - 几何学/度量空间
id: wiki20241030095829
banner: "![[astrowalk.gif]]"
---
---

## Def 1 乘积度量空间

对乘积空间 $X\times Y$ [[Wiki - 空间的乘积]]，X，Y 为度量空间 [[Wiki - 赋范空间]]，则

$$
\|(x,y)\|_{X\times Y} = \|x\|_{X}+ \|y\|_{Y}
$$

为乘积空间的范数，乘积空间也为赋范空间

## Pro 1

若 X, Y 均为 banach 空间，则 $X\times Y$ 也为 banach 空间 [[Wiki - banach空间]]
## Def 2 闭算子

$T:X\to Y$ 是线性映射 [[Wiki - 线性映射]]，


$$\mathrm{Gr}(T)\stackrel{\mathrm{def}}{=}\{(x,Tx):x\in\mathrm{Dom}(T)\}$$

称为 $T$ 的图像，其中 Dom $(T)\subset X$ 是指 $T$ 的定义域，为 $X$ 的子集.
如果 $Gr (T)$ 是 $X\times Y$ 的闭子空间，则称 $T$ 是**闭算子**。

## Pro 2 

$T$ 是闭算子当且仅当

$$\mathrm{Dom}(\mathrm{T})\ni x_n\to x,Tx_n\to y$$

蕴含

$$x\in\mathrm{Dom}(T),y=Tx$$

即，如果 $T$ 将 Dom $(T)$ 上的收敛列 $\{x_n\}$ 映为收敛列 $\{y_n=Tx_n\}$, 则收敛列 $\{x_n\}$ 的极限 $x\in$ Dom $(T)$ 且收敛列 $\{y_n=Tx_n\}$ 的极限为 $y=Tx.$

### Proof 

Gr (T) 闭等价于 $(x_{n}, Tx_{n})\to (x, Tx)=(x, y)\in Gr(T)$

## Pro 3 

若 A 是有界算子 [[Wiki - 有界线性算子]]，且 $Dom(A)$ 是闭集 [[Wiki - 度量空间的闭子集]]，则 A 是闭算子。

### Proof

$\{x_{n}\}\subset A\to x$，$Ax_{n}\to y$，由闭有 $x\in Dom(A)$，且由 A 的连续性 $Ax_{n}\to Ax=y$，所以 A 是闭算子

