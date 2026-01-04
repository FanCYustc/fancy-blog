---
aliases: 
info: 特征值和特征向量的定义
date: 2023-07-03-星期一 21:23
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703212305
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换  


起因是为相似等价类 [[Wiki - 矩阵的相似]]寻找代表元

[[Wiki - 相似矩阵的性质]]


$$\Lambda  = \left( {\begin{array}{*{20}{c}}{{\lambda _1}}& \ldots &0\\ \vdots & \ddots & \vdots \\0& \ldots &{{\lambda _n}}\end{array}} \right)A = {T^{ - 1}}\Lambda T$$设<br><br>                          $$T = \left( {{T_1},{T_2}, \ldots {T_n}} \right)$$

       $$\left( {A{T_1},A{T_2}, \ldots A{T_n}} \right) = \left( {{\lambda _1}{T_1}, \ldots {\lambda _n}{T_n}} \right)$$

## Def 1

```ad-definition
title: Definition 1

设 A 为数域 $F$ 上的 n 阶方阵，如果存在 $\lambda\in F$ 及非零列向量$x\in F^n,$ 使得

$$

Ax =\lambda x,

$$

则称 $\lambda$ 为方阵 A 的一个**特征值**, 而称 x 为**属于特征值 $\lambda$ 的一个特征向量**。

```


此概念可推广到一般线性空间的线性变换[[Wiki - 线性映射|线性变换]]的特征值

---

## Def 1 Eigenvalues and Eigenvectors

```ad-definition
title: Definition 1

For a square matrix $A \in \mathbb{C}^{n \times n}$, a scalar $\lambda \in \mathbb{C}$ is called an **eigenvalue** of $A$ if there exists a nonzero vector $\mathbf{v} \in \mathbb{C}^n$ such that:

$$A\mathbf{v} = \lambda\mathbf{v}$$

The vector $\mathbf{v}$ is called an **eigenvector** corresponding to $\lambda$. The pair $(\lambda, \mathbf{v})$ is called an **eigenpair**.
```

## The 1 Characteristic Polynomial

```ad-theorem
title: Theorem 1

The eigenvalues of matrix $A$ are exactly the roots of its characteristic polynomial:

$$p_A(\lambda) = \det(\lambda I - A) = 0$$

where $I$ is the identity matrix. The algebraic multiplicity of an eigenvalue is its multiplicity as a root of $p_A(\lambda)$.
```

## Pro 1 Properties

1. For any eigenpair $(\lambda, \mathbf{v})$:
   - $(A^k)\mathbf{v} = \lambda^k\mathbf{v}$ for any integer $k \geq 0$
   - If $A$ is invertible, $A^{-1}\mathbf{v} = \lambda^{-1}\mathbf{v}$
   
2. Eigenvectors corresponding to distinct eigenvalues are linearly independent

3. The set of all eigenvectors corresponding to $\lambda$ (plus the zero vector) forms the **eigenspace** $E_\lambda$

## Cal 1 Diagonalization

```ad-proposition
title: Proposition 1

A matrix $A \in \mathbb{C}^{n \times n}$ is diagonalizable if and only if it has $n$ linearly independent eigenvectors. In this case:

$$A = PDP^{-1}$$

where $D = \text{diag}(\lambda_1,...,\lambda_n)$ and $P$ has the eigenvectors as columns.
```

Related links: [[Wiki - Jordan标准型]], [[Wiki - 有界线性算子的谱]], [[Wiki - 特征值和特征向量的计算#Def1 特征多项式]]

