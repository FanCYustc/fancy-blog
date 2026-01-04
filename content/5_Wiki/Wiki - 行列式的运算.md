---
aliases:
  - 伴随矩阵
info: 分块的行列式，转置行列式，逆矩阵行列式，乘积行列式
date: 2023-05-15-星期一 23:02
update: 
tags:
  - wiki/year2023
  - wiki/month05
  - 线性代数/行列式
id: wiki20230515230209
banner: "![[astrowalk.gif]]"
---
---

## 分块矩阵的行列式

应用：对准三角矩阵 [[Wiki - 矩阵分块运算#Def1]]

行列式为对角线上**方阵**行列式的乘积

**注意：对一般矩阵并没有**

### 例子
```ad-example


$$
\begin{align}
设 A,D\text{ 分别为 }m,n\text{ 阶方阵},B\in F^{n\times m},C\in F^{m\times n},\text{ 且 }A\text{ 可逆}.\\\det\begin{pmatrix}A&C\\B&D\end{pmatrix}=\det(A)\det(D-BA^{-1}C)
\end{align}
$$


```

Because
$$\begin{pmatrix}I_m&O\\-BA^{-1}&I_n\end{pmatrix}\begin{pmatrix}A&C\\B&D\end{pmatrix}=\begin{pmatrix}A&C\\O&D-BA^{-1}C\end{pmatrix}$$
[[Wiki - 分块矩阵的逆矩阵]]

特别的 m=n 且 AB=BA，则 $A(D-BA^{-1}C)=AD-BC$
故
$$\det\begin{pmatrix}A&C\\B&D\end{pmatrix}=\det(AD-BC).$$

**一般情况下分块算行列式不能随便简化**

## 乘积的行列式

对 **n 阶方阵 A，B**

$$
{\rm{det}}\left( {AB} \right) = {\rm{det}}\left( A \right){\rm{det}}\left( B \right)
$$

若非方阵：A 是 $m\times n$ 矩阵，B 是 $n\times m$ 矩阵； m> n 时，乘积行列式为 0。

[[Wiki - 矩阵的乘法]]

### 证明

$$\begin{aligned}
\operatorname{det}(\boldsymbol{A}B)& =\det\left(\sum_{j_1=1}^na_{1j_1}\boldsymbol{\beta}_{j_1},\sum_{j_2=1}^na_{2j_2}\boldsymbol{\beta}_{j_2},\cdots,\sum_{j_n=1}^na_{nj_n}\boldsymbol{\beta}_{j_n}\right)  \\
&\begin{aligned}&=\sum_{j_1=1}^n\sum_{j_2=1}^n\cdots\sum_{j_n=1}^na_{1j_1}a_{2j_2}\cdots a_{nj_n}\det(\beta_{j_1},\beta_{j_2}\cdots,\beta_{j_n})\end{aligned} \\
&=\sum_{1\leqslant j_1,j_2,\cdots,j_n\leqslant n}a_{1j_1}a_{2j_2}\cdots a_{nj_n}\det(\boldsymbol{\beta}_{j_1},\boldsymbol{\beta}_{j_2},\cdots,\boldsymbol{\beta}_{j_n}) \\
&=\sum_{(j_{1},j_{2},\cdots,j_{n})\in S_{n}}a_{1j_{1}}a_{2j_{2}}\cdots a_{nj_{n}}(-1)^{\tau(j_{1},j_{2},\cdots,j_{n})}\det(\beta_{1},\beta_{2},\cdots,\beta_{n}) \\
&=\det(\boldsymbol{A})\det(\boldsymbol{B}).
\end{aligned}$$

对非方阵情况，加上 m-n 行/列向量，补成方阵，扩充矩阵行列式都为 0 [[Wiki - 行列式的性质#Pro1]]。

### 例子

$$
\mid {\begin{array}{*{20}{c}}A&B\\B&A\end{array}} \mid = {\rm{det}}\left ( {A + B} \right){\rm{det}}\left ( {A - B} \right)
$$

A, B 为同阶方阵

## 逆矩阵的行列式

### 伴随矩阵

$$
\begin{aligned}
&A^{*}:={\left(\begin{array}{l l l l}{A_{11}}&{A_{21}}&{\cdots}&{A_{n1}}\\ {A_{12}}&{A_{22}}&{\cdots}&{A_{n2}}\\ {\vdots}&{\vdots}&{}&{\vdots}\\ {A_{1n}}&{A_{2n}}&{\cdots}&{A_{n n}}\end{array}\right)},
\end{aligned}
$$
称为矩阵 A 的**伴随矩阵**，$A_{ij}$ 为 $a_{ij}$ 的代数余子式 [[Wiki - 行列式展开#Def1 另一种对行列式定义]]

有性质
$$A^*A=AA^*=\det(A)I,$$

## 转置的行列式

转置的行列式值不变

[[Wiki - 矩阵的转置和共轭]]

---


## Def 1 Elementary Determinant Properties  

```ad-definition  
title: Basic Operations  

For $n×n$ matrices $A,B$:  
1. **Row/Column Swap**: $\det(B) = -\det(A)$ when $B$ is obtained by swapping two rows/columns of $A$  
2. **Scaling**: $\det(B) = \lambda\det(A)$ when $B$ is obtained by multiplying a row/column of $A$ by scalar $\lambda$  
3. **Additivity**: If $A,B,C$ differ only in one row where $a_{ij} = b_{ij} + c_{ij}$, then $\det(A) = \det(B) + \det(C)$  
```  
Related: [[Wiki - 行列式的定义#Pro1]]  

## Pro 1 Advanced Properties  

```ad-theorem  
title: Multiplicative Property  

For square matrices $A,B$:  
$$\det(AB) = \det(A)\det(B)$$  

**Corollary**:  
- $\det(A^{-1}) = (\det A)^{-1}$ when $A$ is invertible  
- $\det(A^k) = (\det A)^k$ for integer $k$  
```  

## Cal 1 Vandermonde Determinant  

```ad-lemma  
title: Special Case Formula  

For parameters $a_1,...,a_n$:  
$$\Delta = \left|\begin{array}{cccc}1 & a_1 & \cdots & a_1^{n-1} \\ \vdots & \vdots & & \vdots \\ 1 & a_n & \cdots & a_n^{n-1}\end{array}\right| = \prod_{1\leq i<j\leq n}(a_j - a_i)$$  

**Proof**: Induction using row operations [[Wiki - 行列式的性质#范德蒙行列式]]  
```  

## Pro 2 Rank-Determinant Relationship  

```ad-theorem  
title: Invertibility Criterion  

For $n×n$ matrix $A$:  
$$A \text{ is invertible} \iff \det A \neq 0$$  

**Connection**: Relates to [[Wiki - 行列式与可逆]] and elementary matrices [[Wiki - 矩阵的初等变换]]  
```  

## Cal 2 Continuity Argument  

```ad-proposition  
title: Regularization Technique  

For singular $A$, consider $A+tI$:  
- $\exists T>0$ such that $\det(A+tI)\neq 0$ when $t>T$  
- Allows taking limits $t\to 0^+$ [[Wiki - 函数的连续性]]  
```  

Key applications in: [[Wiki - 特征值的运算性质]] and perturbation theory
