---
aliases:
  - 子式
info: Laplace展开
date: 2023-10-09-星期一 09:21
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 线性代数/行列式
id: wiki20231009092104
banner: "![[astrowalk.gif]]"
---
---

## Def 1 子式

$$
A\begin{pmatrix}
i_{1} & i_{2} &\dots&i_{r} \\
j_{1} & j_{2} & \dots & j_{r}
\end{pmatrix}
$$

为 A 的 r 阶子式，为第 $i_{1},\dots,i_{r}$ 行和第 $j_{1},\dots j_{r}$ 列交叉形成的 r 阶行列式[[Wiki - 行列式的定义]]

## The 1 laplace 展开

```ad-theorem
title: Theorem 1


$i_{1},\dots i_{r}$ 选定，$\det A=\sum_{r个行固定}子式\times对应代数余子式$

$$\det A=\sum_{1\le j_1<\cdots j_r\le n}A\begin{pmatrix}i_1,\cdots,i_r\\j_1,\cdots,j_r\end{pmatrix}(-1)^{i_1+\cdots+i_r+j_1+\cdots+j_r}A\begin{pmatrix}i_{r+1},\cdots,i_n\\\\j_{r+1},\cdots,j_n\end{pmatrix}.$$

的扩充

```

[[Wiki - 行列式展开]]




