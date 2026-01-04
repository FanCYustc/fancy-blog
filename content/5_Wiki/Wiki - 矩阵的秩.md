---
aliases: 
info: 矩阵秩的定义，性质，求矩阵的秩
date: 2023-05-16-星期二 15:36
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230516153644
banner: "![[astrowalk.gif]]"
---
  ---
#线性代数/矩阵 

## Pro1

```ad-proposition
title: Propositon 1

在初等行列变换时得到存在可逆矩阵 P 和 Q 使

$$
PAQ = \left( {\begin{array}{*{20}{c}}{{I_r}}&0\\0&0\end{array}} \right)
$$
定理：上述 r 唯一确定。

```


[[Wiki - 矩阵的初等变换#Pro2]]



### Proof：

只需证 $r$ 的唯一性. 用反证法, 假设存在 $r, s ( r\neq s)$ 不妨设 $r<s$ 及可逆方阵 $P_1,P_2,Q_1,Q_2$, 满足

$$
P_1A\boldsymbol{Q}_1=\begin{pmatrix}I_r&\boldsymbol{O}\\\boldsymbol{O}&\boldsymbol{O}\end{pmatrix},\quad P_2\boldsymbol{AQ}_2=\begin{pmatrix}I_s&\boldsymbol{O}\\\boldsymbol{O}&\boldsymbol{O}\end{pmatrix}.
$$
$$\begin{gathered}\text{令 }P=P_2P_1^{-1},Q=Q_1^{-1}Q_2,\text{则}\\P\begin{pmatrix}I_r&O\\O&O\end{pmatrix}Q=\begin{pmatrix}I_s&O\\O&O\end{pmatrix}.\end{gathered}$$

把 $P$ 和 $Q$ 分块:

$$
P=\begin{pmatrix}P_{11}&P_{12}\\P_{21}&P_{22}\end{pmatrix},\quad Q=\begin{pmatrix}Q_{11}&Q_{12}\\Q_{21}&Q_{22}\end{pmatrix},
$$

其中 $P_{11}$ 是 $s\times r$ 矩阵, $Q_{11}$ 是 $r\times s$ 矩阵。于是 $P_{11}Q_{11}=I_s$. 然面, 由于 $r<s$, $\det(P_{11}Q_{11})=0,$ [[Wiki - 矩阵乘积的行列式|Binet-Cauchy公式]] 导致矛盾.


## Def1 相抵角度的定义

```ad-definition
title: Definition 1

我们将 r 称为矩阵的**秩**

**秩是用来描述向量组之间的关联性的**


```
[[Wiki - 矩阵相抵]]

## Cal1

推论：矩阵和其转置的秩相等

[[Wiki - 矩阵相抵]]

## Def2 行列式角度定义

```ad-definition
title: Definition 2

定理：A 的**非零子式的最大阶数**是 A 的秩

若 A 至少有一个非零 r 阶子式，且所有 r +1 阶子式均为零则 A 的秩为 r

[[Wiki - 行列式展开]]

[[Wiki - 行列式的定义]]

```

## Cal2

推论： 若 **rank (A）=n** 则 A 行列式非零，即 **A 可逆**

[[Wiki - 行列式与可逆]]

[[Wiki - 逆矩阵]]

## Def 3 向量线性无关组角度的定义

```ad-definition
title: Definition 3

A 的秩=A 的行秩=A 的列秩

```
用极大线性无关组定义矩阵的关联程度 [[Wiki - 极大线性无关组]]

[[Wiki - 极大线性无关组与秩#Pro 2 初等变换不变秩]]


## Def 4 线性映射的角度定义
```ad-definition
title: Definition 4


$\mathcal{A}:F^{n}\to F^{m},\vec{x}\to A\vec{x}$，则 rank (A)=dim (range (A))


```

[[Wiki - 线性映射基本定理#Def 2 range]]

---

## Def 1 Matrix Rank

```ad-definition
title: Rank of a Matrix

The **rank** of a matrix $A \in \mathbb{R}^{m \times n}$, denoted $\text{rank}(A)$, is defined as:
1. The maximum number of linearly independent column vectors (column rank)
2. The maximum number of linearly independent row vectors (row rank)
3. The dimension of the vector space spanned by its rows/columns
4. The size of the largest non-zero minor (determinant of a square submatrix) [[Wiki - Determinant]]

These definitions are equivalent for any matrix over a field.
```

## Thm 1 Rank Properties

```ad-theorem
title: Fundamental Rank Properties

For matrices $A,B$ of compatible dimensions and scalar $c \neq 0$:
1. $\text{rank}(A) \leq \min(m,n)$
2. $\text{rank}(A+B) \leq \text{rank}(A) + \text{rank}(B)$
3. $\text{rank}(AB) \leq \min(\text{rank}(A), \text{rank}(B))$
4. $\text{rank}(cA) = \text{rank}(A)$
5. $\text{rank}(A^T) = \text{rank}(A)$ [[Wiki - Matrix Transpose]]
6. For invertible $P,Q$, $\text{rank}(PAQ) = \text{rank}(A)$ [[Wiki - Matrix Inversion]]
```

## Thm 2 Rank-Nullity Theorem

```ad-theorem
title: Rank-Nullity Theorem

For any linear transformation $T: V \to W$ represented by matrix $A$:
$$
\text{rank}(A) + \text{nullity}(A) = n
$$
where $\text{nullity}(A) = \dim(\ker(A))$ is the dimension of the null space [[Wiki - Null Space]].
```

## Pro 1 Rank Calculations

```ad-proposition
title: Practical Rank Determination

1. The rank equals:
   - The number of non-zero rows in row echelon form [[Wiki - Gaussian Elimination]]
   - The number of non-zero singular values [[Wiki - Singular Value Decomposition]]
2. For $A \in \mathbb{R}^{n \times n}$:
   - Full rank ($=n$) $\Leftrightarrow$ invertible $\Leftrightarrow \det(A) \neq 0$
   - Rank deficient if $\text{rank}(A) < n$
```

## Ex 1 Rank Examples

1. $\text{rank}\begin{pmatrix}1 & 2 \\ 3 & 6\end{pmatrix} = 1$ (rows are linearly dependent)
2. $\text{rank}\begin{pmatrix}1 & 0 & 1 \\ 0 & 1 & 2\end{pmatrix} = 2$ (full row rank)
3. Identity matrix $I_n$ has rank $n$

See also Matrix Decompositions for advanced rank computation methods.
