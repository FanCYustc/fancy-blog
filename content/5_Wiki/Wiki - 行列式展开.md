---
aliases: 
info: 行列式展开定义
date: 2023-04-08-星期六 21:40
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230408214052
banner: "![[astrowalk.gif]]"
---
---
#线性代数/行列式 

## Def1 另一种对行列式定义

```ad-definition
title: Definition 1

递归定义 det (A)

$$
\det(\mathrm{A})=\sum_{i=1}^{n}a_{1i} \mathrm{A}_{1i}=\sum_{i=1}^{n} (-1)^{i+1} a_{1i} \mathrm{M}_{1i}
$$

$A_{1i}$ 为第 1 行第 i 列的代数余子式。

```
[[Wiki - 行列式Laplace展开|子式]]

[[Wiki - 行列式的运算]]

[[Wiki - 行列式的定义#Def1]]

## Pro1 行列式展开

```ad-proposition
title: Propositon 1

行列式按每行展开值相等。

```


### Proof：

归纳：2 阶行列式易证。假设对 n-1 成立

$$
\begin{array}{}
\sum_{j=1}^{n}(-1)^{j+1}a_{i j}M_{i j} \\
=\sum_{j=1}^{n}(-1)^{j+1}a_{1j}\left[\sum_{i=1}^{j-1}a_{i i}(-1)^{k+i-1}D_{i j}+\sum_{i=j+1}^{n}a_{k i}(-1)^{k+i-2}D_{i j}\right] \\
=\sum_{j=1}^n(-1)^{i+1+k}\left(\sum_{i=1}^{j-1}a_{1j}a_{ki}(-1)^{i+1}D_{ij}-\sum_{i=j+1}^n a_{1j}a_{ki}(-1)^{i+1}D_{ij}\right) \\ \\
\end{array}
$$
$$
\begin{array}
\sum_{j=1}^{n}\sum_{i=j+1}^{n}(-1)^{j+k+i}a_{1j}a_{k i}D_{i j}=\sum_{i=1}^{n}\sum_{j=1}^{i-1}a_{1j}a_{k i}(-1)^{j+k+i}D_{i j} \\ \\

 \sum_{j=1}^{n}\sum_{i=1}^{j-1}(-1)^{i+j+k}a_{1j}a_{k i}D_{i j}=\sum_{i=1}^{n}\sum_{j=i+1}^{n}a_{k i}a_{1j}(-1)^{i+k+j}D_{i j} 
\end{array}
$$

（用到二阶展开）


