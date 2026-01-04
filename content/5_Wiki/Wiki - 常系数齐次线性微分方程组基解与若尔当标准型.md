---
aliases: 
info: 用Jordan标准型解常系数线性微分方程组的基解矩阵
date: 2023-11-21-星期二 15:07
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/微分方程组
  - 线性代数/相似标准型
id: wiki20231121150756
banner: "![[astrowalk.gif]]"
---
---

## The 1 

对常系数线性微分方程组 $\frac{d\boldsymbol{y}}{dx}=A\boldsymbol{y}$ 假设 A 相似于 Jordan 标准型 [[Wiki - Jordan标准型]]，$J=diag(J_{1},J_{2},\dots,J_{m})$

其中每一个都是 Jordan 块

$$\left.J_i=\left(\begin{array}{rrrrr}\lambda_i&&&&\\&\lambda_i&&&\\&&\ddots&\\&&&\lambda_i\end{array}\right.\right)+\left(\begin{array}{rrrrr}0&1&&\\&0&\ddots&\\&&\ddots&1\\&&&&0\end{array}\right)$$

$\lambda_{i}$ 可以相同。由[[Wiki - 更多矩阵运算|矩阵指数函数]]的性质可得

$$\left.e^{xJ_{i}}=e^{\lambda_{i} x}E(E+x\left(\begin{array}{rrrrrr}0&1&&&\\&\ddots&\ddots&&\\&&\ddots&\ddots&\\&&&\ddots&\ddots&\\&&&&\ddots&1\\&&&&&0\end{array}\right.\right)+$$

$$\left.\frac{x^2}{2!}\left(\begin{array}{rrrrrr}0&0&1&&\\&\ddots&\ddots&\ddots&\\&&\ddots&\ddots&1\\&&&\ddots&0\\&&&&0\end{array}\right.\right)+\cdots $$

$$\left.+\frac{x^{n_i-1}}{(n_i-1)!}\left(\begin{array}{rrrrr}0&\cdots&\cdots&0&1\\&0&\cdots&\cdots&0\\&&\ddots&&\vdots\\&&&\ddots&\vdots\\&&&&0\end{array}\right.\right)$$

整理得

$$e^{\boldsymbol{x}J_i}=\boldsymbol{e}^{\boldsymbol{\lambda_{i}}\boldsymbol{x}}\begin{Bmatrix}1&&x&\frac{x^2}{2!}&&...&&...&\frac{x^{n_i-1}}{(n_i-1)!}\\\\&&1&x&&...&&\frac{x^{n_i-2}}{(n_i-2)!}\\\\&&&&\ddots&\ddots&&\ddots&\vdots\\&&&&&\ddots&\ddots&&\vdots\\&&&&&&\ddots&&x\\&&&&&&&&1\end{Bmatrix}$$


整理得

$$
e^{xJ}=\begin{pmatrix}
e^{xJ_{1}}& \\
& e^{xJ_{2}} \\
& &\ddots \\
&&&&e^{J_{m}}
\end{pmatrix}
$$



但现在的形式很丑，利用 [[Wiki - 齐次线性微分方程组解的结构#cal 1]]，可以知道 $e^{xA}P=Pe^{xJ}$ 也是方程的基解矩阵






