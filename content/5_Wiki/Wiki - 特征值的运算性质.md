---
aliases: 
info: 各种矩阵运算下特征值的性质
date: 2023-07-03-星期一 22:01
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703220148
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 

## Pro1 

```ad-proposition
title: Propositon 1

```
$\lambda$ 为 A 的特征值[[Wiki - 特征值和特征向量]]，则：

(1) $\lambda^{k}$ 为 $A^k$ 的特征值, 其中 k 为正整数

(2）λ为 $A^{\mathrm{T}}$ 的特征值; [[Wiki - 矩阵的转置和共轭]]

(3)   若 $\lambda\neq0,$ 则 $\frac{1}{\lambda} det(A)$ 为 A 的伴随方阵 $A^*$ 的特征值; [[Wiki - 行列式与可逆]]

(4）若方阵 A 为实方阵且满足 $AA^{\mathrm{T}}=I,$ 则 $|\lambda|=1.$



### Proof:

（1）          

                       $${A^{k}x = {A^{k - 1}}\cdot} Ax = {A^{k - 1}}\lambda x =  \ldots  = {\lambda ^k}x$$

（2）          

                 $${\rm{det}}\left( {\lambda I - A} \right) = {\rm{det}}\left( {\lambda I - {A^T}} \right) = 0$$

（3）          

             $$\begin{array}{*{20}{c}}{det \left( A \right) \ne 0}\\{\lambda {A^{{\rm{*}}}}x = {A^{{\rm{*}}}}Ax = {\rm{det}}\left( A \right)x}\end{array}$$

（4）          

           $$\begin{array}{*{20}{c}}{Ax = \lambda x \to {{\bar x}^T}{A^T} = \bar \lambda {{\bar x}^T}}\\{{{\bar x}^T}{A^T}Ax = \sum {{\left| {{x_i}} \right|}^2} = \bar \lambda {{\bar x}^T}\lambda x = {{\left| \lambda  \right|}^2}\sum {{\left| {{x_i}} \right|}^2}}\end{array}$$

## Cal 1

$\lambda$ 为 A 的特征值，则 $f(\lambda)$ 为 f (A) 的特征值

[[Wiki - 特征值和特征向量的计算]]