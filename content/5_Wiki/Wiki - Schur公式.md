---
aliases: 
info: 分块矩阵的逆
date: 2023-10-07-星期六 09:26
update: 2023-10-07-Saturday 09:29:26
tags:
  - wiki/year2023
  - wiki/month10
  - 线性代数/矩阵
id: wiki20231007092618
banner: "![[astrowalk.gif]]"
---
---

## The 1 schur 公式

```ad-theorem
title: Theorem 1


$$\begin{pmatrix}I&O\\-CA^{-1}&I\end{pmatrix}\begin{pmatrix}A&B\\C&D\end{pmatrix}\begin{pmatrix}I&-A^{-1}B\\O&I\end{pmatrix}=\begin{pmatrix}A&O\\O&D-CA^{-1}B\end{pmatrix}$$
称为 **schur 公式**

```

[[Wiki - 矩阵分块运算]]

## Cal 1

A 可逆， $\begin{pmatrix}A&B\\C&D\end{pmatrix}$ 可逆的充要条件是 $D-CA^{-1}B$ 可逆


