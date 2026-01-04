---
aliases: []
info: n维数组空间，子空间
date: 2023-05-18-星期四 22:54
update: 
tags:
  - wiki/year2023
  - wiki/month05
id: wiki20230518225438
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 

## Def1 数组空间

```ad-definition
title: Definition 1

每个分量都属于数域 F，有加法，数乘两种运算，满足八条性质的 n 维向量全体称为 n 维数组空间.

- 加法交换律
- 加法结合律
- 对加法存在零矩阵 O
- 每个矩阵存在负矩阵 A+(-A)=O
- 数乘存在单位元 1
- 数乘结合律
- 数乘对数乘的分配律
- 数乘对加法的分配律

```

 [[Wiki - 矩阵的加法和数乘]]

由于数组空间才可以用线性代数的方法处理，所以数组空间称为了研究线性空间的基础。

## Def2 子空间

```ad-definition
title: Definition 2

n 维数组空间的非空子集 V，满足**加法数乘封闭**  
称 V 是 n 维数组空间的**子空间**

```


---
## Def 1 Array Spaces

```ad-definition
title: Array Space (Vector Space of Arrays)

An **array space** is a mathematical structure consisting of all possible $m \times n$ arrays (matrices) with entries from a field $F$ (typically $\mathbb{R}$ or $\mathbb{C}$), equipped with two operations:
1. **Array addition**: For $A, B \in F^{m \times n}$, $(A+B)_{ij} = A_{ij} + B_{ij}$
2. **Scalar multiplication**: For $\alpha \in F$, $(\alpha A)_{ij} = \alpha A_{ij}$

The space $F^{m \times n}$ forms a vector space of dimension $mn$ over $F$.
```

### Key Properties:
1. **Basis**: Standard basis consists of elementary matrices $E_{ij}$ with 1 at $(i,j)$ position and 0 elsewhere
2. **Isomorphism**: $F^{m \times n} \cong F^{mn}$ via vectorization
3. **Subspaces**: Important subspaces include:
   - Symmetric matrices: $S^n = \{A \in F^{n \times n} | A = A^T\}$
   - Skew-symmetric matrices: $K^n = \{A \in F^{n \times n} | A = -A^T\}$



```ad-proposition
title: Dimension of Special Array Spaces

For $n \times n$ matrices over field $F$:
1. $\dim(S^n) = \frac{n(n+1)}{2}$
2. $\dim(K^n) = \frac{n(n-1)}{2}$
3. $F^{n \times n} = S^n \oplus K^n$ (direct sum decomposition)


```

### *Proof*: 

Count the free parameters in each matrix type. For (3), any matrix $A$ can be written as:
$$
A = \underbrace{\frac{A + A^T}{2}}_{\in S^n} + \underbrace{\frac{A - A^T}{2}}_{\in K^n}
$$