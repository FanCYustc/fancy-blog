---
aliases:
  - 矩阵求导
info: 行列式求特征值和特征向量
date: 2023-07-03-星期一 21:59
update: 
tags:
  - wiki/year2023
  - wiki/month07
id: wiki20230703215938
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 

## Def1 特征多项式

$${P_A}\left( \lambda  \right) = {\rm{det}}\left( {\lambda I - A} \right)$$
为关于入的 **n 次多项式**（数域一般为复数域）[[Wiki - 数域]]  <br>特征值[[Wiki - 特征值和特征向量]]即为**特征多项式的根**

再代入每个特征值分别求其对应的特征向量的解

### 注意：

在线性变换对应矩阵下求出特征值和特征向量，若问线性变换的特征值和特征向量，要将数组空间的特征向量换回线性变换的特征向量（原 V 空间中）

## Pro 1 矩阵求导

```ad-proposition
title: Propositon 1

对方阵 A, 其特征多项式为

$$
P_{A}(\lambda)=\sum_{k=0}^{n} \frac{{P_{A}(\lambda)^{(k)}(0)}}{k!}\lambda^{k}=\sum_{k=0}^{n}(-1)^{k} \sum_{1\leq i_{1}<\dots< i_{k}\leq n} A \begin{pmatrix}
i_{1}\space i_{2}\dots\space i_{k} \\
i_{1}\space i_{2}\dots\space i_{k}
\end{pmatrix}\lambda^{n-k}
$$

即 n-k 项的系数为 k 阶主子式之和乘 $(-1)^{k}$


```


## Pro 2 化零多项式

```ad-proposition
title: Propositon 2

在复空间中，特征多项式 $q(z)=(z-\lambda_{1})^{d_{1}}(z-\lambda_{2})^{d_{2}}\cdots(z-\lambda_{m})^{d_{m}}$，将 z 代入为变换 T，有 $q(T)=0$



```

[[Wiki - 矩阵的最小多项式|化零多项式]]

### Proof：

由于 [[Wiki - 广义特征向量#Cal 1]], we have $(T-\lambda_{j}I)^{d_{j}}|_{G(\lambda_{j},T)}=0$

**来源：[[Book - 线性代数应该这样学]]**

