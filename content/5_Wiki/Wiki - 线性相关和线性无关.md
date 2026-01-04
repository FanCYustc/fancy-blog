---
aliases: 
info: 线性组合，线性相关，线性无关
date: 2023-05-18-星期四 23:07
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230518230754
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 

## Def1 线性组合


线性组合

$$\sum {\lambda _i}{\vec a_i} = \left( {\begin{array}{*{20}{c}}{{{\vec a}_1}}&{{{\vec a}_2}}&{ \ldots {{\vec a}_n}}\end{array}} \right)  \left( {\begin{array}{*{20}{c}}{{\lambda _1}}\\{{\lambda _2}}\\ \vdots \\{{\lambda _n}}\end{array}} \right) = A\left( {\begin{array}{*{20}{c}}{{\lambda _1}}\\{{\lambda _2}}\\ \vdots \\{{\lambda _n}}\end{array}} \right)$$
## Def2 线性相关

```ad-definition
title: Definition 1

设 $a_1,\cdots,a_m\in F^n,$ 则 $\bar{a}_1,\cdots,\bar{a}_m$ **线性相关**的充要条件是**存在不全为零**的常数 $\lambda_1,\ldots,\lambda_m,$ 使得

$\sum_{i=1}^{n} \lambda_i \mathbf{a}_i=0$

```


等价于：一个向量可以用其他向量线性表示 [[Wiki - 线性相关和线性无关#Def1 线性组合]]

## Def3 线性无关

否则称为**线性无关**
等价表述：若

                    $$0 = \lambda ,{\vec a_1} +  \ldots  + {\lambda _n}{\vec a_n} \to {\lambda _i} = 0$$

（线性方程组只有零解）则称这组向量线性无关


---

## Def 1 Linear Dependence and Independence

```ad-definition
title: Linear Dependence

A set of vectors $\{\mathbf{v}_1, \mathbf{v}_2, ..., \mathbf{v}_n\}$ in a vector space $V$ is called **linearly dependent** if there exist scalars $c_1, c_2, ..., c_n$, not all zero, such that:

$$c_1\mathbf{v}_1 + c_2\mathbf{v}_2 + \cdots + c_n\mathbf{v}_n = \mathbf{0}$$
```

```ad-definition
title: Linear Independence

A set of vectors is **linearly independent** if the only solution to:
$$c_1\mathbf{v}_1 + c_2\mathbf{v}_2 + \cdots + c_n\mathbf{v}_n = \mathbf{0}$$
is the trivial solution $c_1 = c_2 = \cdots = c_n = 0$.
```

```ad-proposition
title: Test for Linear Independence

For $n$ vectors in $\mathbb{R}^n$:
1. Form matrix $A$ with vectors as columns
2. Compute $\det(A)$:
   - If $\det(A) \neq 0$: linearly independent
   - If $\det(A) = 0$: linearly dependent
```

**Properties:**
1. Any set containing the zero vector is linearly dependent
2. A single vector $\mathbf{v} \neq \mathbf{0}$ is linearly independent
3. Any subset of a linearly independent set is linearly independent
