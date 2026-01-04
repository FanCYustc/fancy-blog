---
aliases: 
info: 矩阵相似于上三角矩阵
date: 2023-07-04-星期二 22:59
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230704225942
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 


**如果相似不了对角矩阵，退而求其次**[[Wiki - 矩阵可相似对角化的条件]]

[[Wiki - 矩阵的相似]]

## Pro1 相似于上三角矩阵

```ad-proposition
title: Propositon 1

任何 n 阶**复方阵**可以相似于一个上三角矩阵，且该上三角矩阵的主对角线上的元素都是 A 的特征值

```
 [[Wiki - 特征值与矩阵#Pro 2]]

其实只要有不变子空间[[Wiki - 不变子空间]]就可以相似于上三角矩阵

### Proof

证明：归纳，假设 n - 1 时成立，对 n

设命题对 $n-1$ 阶方阵成立，现在考虑 n 阶方阵 $A,$ 设 $\lambda_{1}$ 为 A 的一个特征值， $\boldsymbol{x_{1}}$ 为属于 $\lambda_{1}$ 的一个特征向量. 将 $\boldsymbol{x_1}$ 扩充为 $\mathbb{C}^n$ 的一组基 [[Wiki - 基和维数#Pro 3 扩充基]] $\boldsymbol{x}_1,\boldsymbol{x}_2,\cdots,\boldsymbol{x}_n,$ 令

$$
\boldsymbol{T}=(\boldsymbol{x}_1,\boldsymbol{x}_2,\cdots,\boldsymbol{x}_n),
$$


则 $\text{T}$ 为 $\text{n}$ 阶可逆方阵[[Wiki - 线性相关与无关的性质]]. 由 $A\boldsymbol{x}_1=\lambda_1\boldsymbol{x}_1$ 知
$$
AT=A(x_1,x_2,\cdots,x_n)=(\lambda_1x_1,Ax_2,\cdots,Ax_n)=(x_1,x_2,\cdots,x_n)\begin{pmatrix}\lambda_1&*\\0&A_1\end{pmatrix}.
$$

$$\begin{aligned}&\text{其中 }A_1\text{ 为一个 }(n-1)\text{ 阶方阵。所以 }T^{-1}AT=\begin{pmatrix}\lambda_1&*\\0&A_1\end{pmatrix},\text{ 根据归纳假设,存}\\&\text{在 }n-1\text{ 阶可逆方阵 }T_1,\text{ 使得 }T_1^{-1}A_1T_1\text{ 为上三角形矩阵。令 }S=T\begin{pmatrix}1&0\\0&T_1\end{pmatrix},\end{aligned}$$


则

$$\begin{aligned}
S^{-1}AS& =\begin{pmatrix}1&\mathbf{0}\\\mathbf{0}&T_1^{-1}\end{pmatrix}(T^{-1}AT)\begin{pmatrix}1&\mathbf{0}\\\mathbf{0}&T_1\end{pmatrix}  \\
&=\begin{pmatrix}1&\mathbf{0}\\\mathbf{0}&T_1^{-1}\end{pmatrix}\begin{pmatrix}\lambda_1&*\\0&A_1\end{pmatrix}\begin{pmatrix}1&\mathbf{0}\\0&T_1\end{pmatrix} \\
&=\begin{pmatrix}\lambda_1&*\\0&T_1^{-1}A_1T_1\end{pmatrix}.
\end{aligned}$$
  

因为**每个特征值至少有一个非零的特征向量**，所以不用考虑重数[[Wiki - 几何重数与代数重数]]一定可以上三角化

**注：上三角矩阵不唯一**

## Pro 2


```ad-proposition
title: Propositon 2


If T 相似于上三角矩阵，那么存在标准正交基将 T 相似至一上三角矩阵


```



**来源：[[Book - 线性代数应该这样学]]**