---
aliases: 
info: 
date: 2024-10-16-星期三 10:14
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析/线性算子
id: wiki20241016101409
banner: "![[astrowalk.gif]]"
---
---

## Def 1 有界算子

$(X,\|\cdot\|_X)$ 和 $(Y,\|\cdot\|_Y)$ 是赋范空间[[Wiki - 赋范空间]]，$T:X\to Y$ 是 L.O. [[Wiki - 线性算子]] 如果存在 $C>0$ 使得
$$||Tx||_Y\leqslant C||x||_X,\forall x\in X$$

则称 $T$ 有界。

无界的例子：$T= \frac{d}{dt}: C^{1}[0, 1]\to C[0,1]$，取 $u_{n}(t)= t^{n}$，则 $\frac{\|T (u_{n})\|}{\|u_{n}\|}\to \infty$

[[Wiki - 线性算子的范数]]

## The 1 有界与连续

对于赋范空间 X, Y 之间的线性映射 T，T 有界 $\leftrightarrow$ T 连续 $\leftrightarrow$ T 在 0 处连续

[[Wiki - 度量空间的连续映射]]

## The 2

有限维赋范空间之间的线性算子一定有界[[Wiki - 线性映射的范数]]

### Proof

在有限维的情形与线性代数一致 [[Wiki - 线性映射与矩阵]]，$Tx = Ax,A=(a_{ij})_{m\times n}$

[[Wiki - 线性映射]]

而对 m 维和 n 维的赋范空间 X, Y 存在同构映射 $\varphi,\psi$ 同构到 $\mathbb{K}^{n},\mathbb{K}^{m}$


无界线性算子：$X=C^{1}[0, 1], Y=C[0, 1], T= \frac{d}{dt}$，赋予一致范数

