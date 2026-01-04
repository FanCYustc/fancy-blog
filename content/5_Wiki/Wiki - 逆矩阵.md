---
aliases: 
info: 逆矩阵的性质、求法
date: 2023-04-08-星期六 13:29
update: 
tags:
  - wiki/year2023
  - wiki/month04
  - 可逆
id: wiki20230408132919
banner: "![[astrowalk.gif]]"
---
---
#线性代数/矩阵 

## Def1
若 $A^{-1}A=A A^{-1}=I$, 称 $A^{-1}$ 为 A 的逆矩阵

（条件：A 为 n 阶方阵）

## Def2 
特别的，若 $A A^{T}=I$, 称 A 为正交方阵 [[Wiki - 矩阵的转置和共轭]]

## Pro1 逆矩阵运算性质

对任意 n 阶可逆方阵 A, B, 都有
(1) $\left(A^{-1}\right)^{-1}=A;$
(2) $(\lambda A)^{-1}=\lambda^{-1}A^{-1},\lambda\neq0;$
(3）$(AB)^{-1}=B^{-1}A^{-1}.$


## Cal1 二阶三阶简易求法

$$\text{ 当 }ad\neq bc\text{时},\\\begin{pmatrix}a&b\\c&d\end{pmatrix}^{-1}=\frac{1}{ad-bc}\begin{pmatrix}d&-b\\-c&a\end{pmatrix}$$


$$\text{ 设 }\boldsymbol{a}=(a_1,a_2,a_3),\boldsymbol{b}=(b_1,b_2,b_3),\boldsymbol{c}=(c_1,c_2,c_3),\text{ 则当 }(\boldsymbol{a}\times\boldsymbol{b})\cdot\boldsymbol{c}\neq0$$

$$\begin{pmatrix}a_1&a_2&a_3\\b_1&b_2&b_3\\c_1&c_2&c_3\end{pmatrix}^{-1}=\dfrac{1}{(\boldsymbol{a}\times\boldsymbol{b})\cdot\boldsymbol{c}}\begin{pmatrix}u_1&v_1&w_1\\u_2&v_2&w_2\\u_3&v_3&w_3\end{pmatrix}$$

其中 $\boldsymbol{u}=(u_1,u_2,u_3)=\boldsymbol{b}\times\boldsymbol{c},\boldsymbol{v}=(v_1,v_2,v_3)=\boldsymbol{c}\times\boldsymbol{a},\boldsymbol{w}=(w_1,w_2,w_3)=\boldsymbol{a}\times\boldsymbol{b};$

## Pro2 可逆的判断

[[Wiki - 矩阵的初等变换#Cal2]]

### 应用：求逆矩阵

将 A 和 I 联立；进行初等行变换将 A 变为 I，对 I 进行同样的初等行变换，得到的就是 $A^{-1}$.


