---
aliases:
  - 实相似标准型
info: 实方阵复相似必实相似
date: 2023-12-13-星期三 10:24
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/相似标准型
id: wiki20231213102453
banner: "![[astrowalk.gif]]"
---
---

## The 1 

```ad-theorem
title: Theorem 1

实方阵 A 和 B 复相似等价于 A 和 B 实相似

```

[[Wiki - 矩阵的相似]]

### Proof

实相似一定复相似，只需考虑

$AP=PB$, P 为复方阵的情况，按实部虚部拆分 $P=P_{1}+iP_{2}$，$P_{1},P_{2}$ 为实方阵

$$\left.A\left(P_1+\mathrm{i}P_2\right)=\left(P_1+\mathrm{i}P_2\right)B\Leftrightarrow\left\{\begin{matrix}AP_1=P_1B\\\\AP_2=P_2B\end{matrix}\right.\right.$$

取 $P_{1}+cP_{2}$ 可逆即可--要证 c 一定可以取到

Def $f (\lambda)=\det (P_{1}+\lambda P_{2}),\lambda\in \mathbb{C}$，$f (i)\neq 0$，所以 f 不恒为 0，且次数有限，所以存在 $c\in\mathbb{R}$ 不为 f 的根，即 $f(c)\neq 0$


## The 2 实相似标准型
```ad-theorem
title: Theorem 1


设 n 阶实方阵 A 的全部初等因子为
 $\lambda^{n_i}(1\leqslant i\leqslant s);\quad(\lambda-\lambda_j)^{m_j}\quad(1\leqslant j\leqslant t)$
$( \lambda- a_j- b_j i ) ^{k_{j}}, \quad ( \lambda- a_j+ b_j i)^{k_{j}}\quad ( 1\leqslant j\leqslant p)$

其中 $\lambda_1,\cdots,\lambda_t$ 是 $A$ 的非零实特征值 (**不一定两两不同**), $a_1\pm b_1 i,  \cdots ,  a_p\pm b_p i$ 是 $A$ 的虚特征值 (不一定两两不同). 则 $A$ 实相似于如下的标准形

$$
\operatorname{diag}(N_{n_1},\cdots,N_{n_s},\lambda_1M_{m_1},\cdots,\lambda_tM_{m_t},L_{k_1}(a_1\pm b_1i),\cdots,L_k(a_p\pm b_pi)),
$$

其中

$$\boldsymbol{N}_{\boldsymbol{n}_j}=\begin{pmatrix}0&1\\&0&\ddots\\&&\ddots&1\\&&&\boldsymbol{0}\end{pmatrix}_{\boldsymbol{n}_j\times\boldsymbol{n}_j},\boldsymbol{M}_{\boldsymbol{m}_j}=\begin{pmatrix}1&1&&\\&1&\ddots&\\&&\ddots&1\\&&&&\boldsymbol{1}\end{pmatrix}_{\boldsymbol{m}_j\times\boldsymbol{m}_j}$$

$$\left.\boldsymbol{L}_{k_j}(\begin{array}{cc}a_j\pm b_j\mathrm{i}\\\end{array})=\left(\begin{array}{cc}\boldsymbol{aM}_{k_j}&b\boldsymbol{M}_{k_j}\\\\\boldsymbol{-}b\boldsymbol{M}_{k_j}&a\boldsymbol{M}_{k_j}\\\end{array}\right.\right)$$



```

### proof

基于 Jordan 型 [[Wiki - Jordan标准型]]，将复数特征值的 Jordan 块配对 [[Wiki - 相似于Jordan标准型]]

首先由于 A 是实方阵，所以其初等因子组是**共轭的**，所以若有 Jordan 块 $J_{m}(\tau)$，则必有 Jordan 块 $J_{m}(\hat{\tau})$

取对角矩阵$A= diag ( 1, \tau, \tau^2, \cdots , \tau^{m- 1})$. 易验证

$$
\Lambda^{-1}\boldsymbol{J}_{m}(\tau)\boldsymbol{\Lambda}=\tau\boldsymbol{J}_{m}(1)\:.
$$

（**这是一个小技巧**）

所以
$$
\begin{pmatrix}
J_{m}(a+ib) &  \\
& J_{m}(a-ib)
\end{pmatrix}\sim \begin{pmatrix}
(a+bi)M_{m} &  \\
& (a-bi)M_{m}
\end{pmatrix}
$$

取

$$\left.P=\left(\begin{array}{cc}I_{(m)}&I_{(m)}\\\mathrm{i}I_{(m)}&-\mathrm{i}I_{(m)}\end{array}\right.\right)\\,P^{-1}=\left(\begin{array}{cc}\frac12I_{(m)}&-\frac12\mathrm{i}I_{(m)}\\\\\frac12I_{(m)}&\frac12\mathrm{i}I_{(m)}\end{array}\right)$$

则有原 Jordan 块相似于

$$\begin{gathered}
\left.\boldsymbol{P}\left(\begin{array}{cc}(a+b\mathbf{i})\boldsymbol{I}_{(m)}&0\\0&(a-b\mathbf{i})\boldsymbol{I}_{(m)}\end{array}\right.\right)\boldsymbol{P}^{-1}\left(\begin{array}{cc}\boldsymbol{M}_m\\&\boldsymbol{M}_m\end{array}\right) \\
\left.=\left(\begin{array}{cc}a\boldsymbol{I}_{(m)}&b\boldsymbol{I}_{(m)}\\-b\boldsymbol{I}_{(m)}&a\boldsymbol{I}_{(m)}\end{array}\right.\right)\left(\begin{array}{cc}\boldsymbol{M}_{m}&\\\\&\boldsymbol{M}_{m}\end{array}\right)=\left(\begin{array}{cc}a\boldsymbol{M}_{m}&b\boldsymbol{M}_{m}\\\\-b\boldsymbol{M}_{m}&a\boldsymbol{M}_{m}\end{array}\right): 
\end{gathered}$$

