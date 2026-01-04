---
aliases: 
info: 
date: 2023-10-07-星期六 08:23
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 线性代数/矩阵
id: wiki20231007082350
banner: "![[astrowalk.gif]]"
---
---
[[Wiki - 逆矩阵]]

1、直接解线性方程组[[Scientech - 线性代数-线性方程组]]

2、做初等变换 [[Wiki - 矩阵的初等变换]]

3、利用 [[Wiki - 逆矩阵#应用：求逆矩阵]]

分块矩阵求逆矩阵 [[Wiki - 矩阵分块运算]]

$$\left(\begin{matrix}I&0\\ X&I\end{matrix}\right)^{-1}=\left(\begin{matrix}I&0\\ -X&I\end{matrix}\right)$$

矩阵的秩也是矩阵初等变换的应用

4、找化零多项式：
找 $f(x)$ 使得 $f (A)=a_{n}A^{n}+a_{n-1}A^{n-1}+\dots+a_{0}I=0$
所以 $A (a_{n}A^{n-1}+\dots+a_{1}I)=-a_{0}I$

$$
\to A^{-1}= \frac{a_{n}A^{n-1}+\dots+a_{1}I}{-a_{0}}
$$
[[Wiki - 多项式环]]

[[Wiki - 矩阵的最小多项式|化零多项式]]



