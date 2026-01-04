---
aliases:
  - n阶行列式函数
info: 行列式的形式，唯一性，运算性质
date: 2023-03-06-星期一 23:00
update: 
tags:
  - wiki/year2023
  - wiki/month03
id: wiki20230306230006
banner: "![[astrowalk.gif]]"
---
---

#线性代数/行列式

## Def1 n 阶行列式函数

```ad-definition
title: Definition 1


$$
 \begin{array}{l}
n  阶行列式函数  \operatorname{det}\left (\xi_{1}, \xi_{2}, \cdots, \xi_{n}\right)  是唯一的.\\ 并且当  \xi_{1}=\left (a_{i 1}, a_{i 2}\right. ,  \left.\cdots, a_{\text {in }}\right), i=1, 2, \cdots, n  时,
\end{array}
$$
$$
\left|\begin{array}{cccc}
a_{11} & a_{12} & \cdots & a_{1 n} \\
a_{21} & a_{22} & \cdots & a_{2 n} \\
& \cdots \cdots \cdots \cdots & \\
a_{n 1} & a_{n 2} & \cdots & a_{n n}
\end{array}\right|=\sum_{\left (\begin{array}{c}
1 \\
i_{1} i_{2} \cdots i_{n}
\end{array}\right)} \delta\left (\begin{array}{llll}
1 & 2 & \cdots & n \\
i_{1} i_{2} \cdots i_{n}
\end{array}\right) a_{1 i_{1}} a_{2 i_{2}} \cdots a_{n i_{n}},
$$

$\delta$ 是逆序数。

```


## Def 2 行列式展开的定义

[[Wiki - 行列式展开#Def1 另一种对行列式定义]]

## Pro1 行列式函数的性质

```ad-proposition
title: Propositon 1

- 反对称性：交换两行/列，行列式变号
- 多重线性：关于每行都是线性的
- 规范性：$\det(e_{1},e_{2},\cdots,e_{n})=1$



```

这种定义下的线性函数存在唯一就是行列式

## Def 3 n 维多面体体积

```ad-definition
title: Definition 3

从线性空间的角度定义行列式，定义为 n 维空间多面体的体积

$$
A=\begin{pmatrix}
\alpha_{1} \\
\alpha_{2} \\
\dots \\
\alpha_{n}
\end{pmatrix}
$$
$\alpha_{i}$ 是 n 维行向量

满足 [[Wiki - 行列式的定义]] 的3 条性质

```

```ad-attention

用性质反过来抽象定义--需要证明存在性和唯一性


```

$\alpha_{k}=\sum_{j=1}^{n}a_{kj}e_{j}$ 由线性性有

$$
\begin{aligned}
\det(\alpha_{1},\dots,\alpha_{n})=\det\left( \sum a_{1j}e_{j},\sum a_{2j}e_{j},\dots,\sum a_{nj}e_{j} \right)\\
=\sum a_{1j_{1}}\det\left( e_{j_{1}},\sum a_{2j}e_{j},\dots,\sum a_{nj}e_{j} \right)=\dots\\
=\sum_{\{j_{1},\dots,j_{n}\}=\{1,\dots,n\}}a_{1j_{1}}a_{2j_{2}}\dots a_{nj_{n}}\det(e_{j_{1}},\dots,e_{j_{n}})\\
=\sum_{\{j_{1},\dots,j_{n}\}=\{1,\dots,n\}}a_{1j_{1}}a_{2j_{2}}\dots a_{nj_{n}}^{\tau(j_{1},\dots,j_{n})}\det(e_{1},\dots,e_{n})
\end{aligned}
$$

---

# Linear Algebra/Determinant

## Def1 n-Order Determinant Function
```ad-definition
title: Definition 1

The n-order determinant function $\operatorname{det}(\xi_{1}, \xi_{2}, \cdots, \xi_{n})$ is unique. When $\xi_{i}=(a_{i1}, a_{i2}, \cdots, a_{in})$ for $i=1,2,\cdots,n$, it can be expressed as:

$$
\left|\begin{array}{cccc}
a_{11} & a_{12} & \cdots & a_{1n} \\
a_{21} & a_{22} & \cdots & a_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right| = \sum_{\sigma \in S_n} \text{sgn}(\sigma) \prod_{i=1}^n a_{i,\sigma(i)}
$$

where $\text{sgn}(\sigma)$ is the sign of permutation $\sigma$ (equivalent to $\delta$ in the Chinese version representing inversion count).

```

## Def2 Determinant Expansion Definition
[[Wiki - 行列式展开#Def1 Alternative Definition of Determinant]]

## Pro1 Properties of Determinant Functions

```ad-proposition
title: Proposition 1

- **Antisymmetry**: Swapping two rows/columns changes the sign
- **Multilinearity**: Linear in each row
- **Normalization**: $\det(e_{1},e_{2},\cdots,e_{n})=1$

```

This definition uniquely characterizes the determinant function.

## Def3 n-Dimensional Polytope Volume

```ad-definition
title: Definition 3

From a geometric perspective, the determinant can be defined as the signed volume of an n-dimensional parallelotope formed by the row vectors:

$$
A=\begin{pmatrix}
\alpha_{1} \\
\alpha_{2} \\
\vdots \\
\alpha_{n}
\end{pmatrix}
$$

satisfying the three fundamental properties listed in [[Wiki - 行列式的定义#Pro1]].

```

```ad-attention
This abstract definition requires proof of existence and uniqueness.
```

Using multilinearity with $\alpha_k=\sum_{j=1}^{n}a_{kj}e_j$, we derive:

$$
\begin{aligned}
\det(\alpha_{1},\dots,\alpha_{n}) &= \sum_{\sigma \in S_n} \text{sgn}(\sigma) \prod_{i=1}^n a_{i,\sigma(i)} \det(e_{\sigma(1)},\dots,e_{\sigma(n)}) \\
&= \sum_{\sigma \in S_n} \text{sgn}(\sigma) \prod_{i=1}^n a_{i,\sigma(i)}
\end{aligned}
$$

