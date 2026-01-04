---
aliases: 
info: 分块矩阵逆矩阵的求法
date: 2023-10-09-星期一 08:12
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 线性代数/矩阵
id: wiki20231009081241
banner: "![[astrowalk.gif]]"
---
---

## Pro 1

```ad-proposition
title: Propositon 1


$$
S=\begin{pmatrix}
A&B \\
C&D
\end{pmatrix}
$$

其中 A, D 是方阵，A 可逆。


$$S^{-1}=\begin{pmatrix}A^{-1}+A^{-1}B(D-CA^{-1}B)^{-1}CA^{-1}&-A^{-1}B(D-CA^{-1}B)^{-1}\\-(D-CA^{-1}B)^{-1}CA^{-1}&(D-CA^{-1}B)^{-1}\end{pmatrix}$$

但 S 可逆需要满足条件 $D-CA^{-1}B$ 可逆

```

[[Wiki - 矩阵分块运算]]

