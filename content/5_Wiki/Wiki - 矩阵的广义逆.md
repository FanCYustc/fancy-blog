---
aliases:
  - Moore-Penrose 广义逆
info: 广义逆的定义
date: 2023-10-25-星期三 11:11
update: 
tags:
  - wiki/year2023
  - wiki/month10
id: wiki20231025111111
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 可逆线性映射]]

## Def 1 广义逆
```ad-definition
title: Definition 1


$A\in F^{m\times n}$ 称 $X\in F^{n\times m}$ 为 A 的广义逆如果 $AXA=A,XAX=X$ 成立

```


## Pro 1 广义逆存在，但不一定唯一

```ad-proposition
title: Propositon 1

广义逆存在，但不一定唯一。设 
$$A=P\begin{pmatrix}
I_{r} & O \\
O &O
\end{pmatrix}Q
$$

P, Q 可逆，则 
$$
A^{-1}=Q^{-1}\begin{pmatrix}
I_{r} & Y_{12} \\
Y_{21}  & Y_{21}Y_{12}\\
 \end{pmatrix}
$$

$Y_{12},Y_{21}$ 为任意矩阵

```

## Def 2 Moore-Penrose 广义逆

```ad-definition
title: Definition 2


$A\in \mathbb{C}^{m\times n}, X\in \mathbb{C}^{n\times m}$ X 为 A 的 M-P 广义逆，如果 $AXA=A,XAX=X,(AX)^*=AX,(XA)^*=XA$

[[Wiki - 伴随映射]]
```

增加条件保证广义逆唯一[[Wiki - 伴随映射|矩阵转置共轭]]

## Pro 2 M-P 广义逆的存在唯一性

```ad-proposition
title: Propositon 2

若 
$$
A=U\begin{pmatrix}
\Lambda & O \\
O &O
\end{pmatrix}V
$$
U, V 为酉方阵（复空间上的正交矩阵）

则
$$
A^{-1}=V^{-1}\begin{pmatrix}
\Lambda^{-1} & O \\
O & O
\end{pmatrix}U^{-1}
$$
存在唯一

```
