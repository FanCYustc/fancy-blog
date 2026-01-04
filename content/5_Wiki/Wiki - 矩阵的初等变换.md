---
aliases: 线性方程组的初等变换
info: 矩阵的三种初等变换
date: 2023-03-13-星期一 21:14
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230313211408
banner: "![[astrowalk.gif]]"
---
---
#线性代数/矩阵

## Def1 线性方程组的初等变换
（1）交换两个方程
（2）某个方程乘一个非零常数
（3）某一个方程乘一个非零常数加到另一个方程上
称为方程的**初等变换**，分别对应矩阵的三种初等变换。

**解线性方程组时，行列变换不能混用**

## Pro1 初等变换解不变
经过初等变换，解还是原方程组的解

## Def2-初等方阵

对单位方阵进行三种初等行/列变换得到的矩阵为**初等方阵**

对矩阵进行初等变换，相当于乘上一个初等矩阵（**左行右列**）

## Cal1 左行右列
左乘对角矩阵相当于每行乘上了一个数；右乘对角矩阵相当于每列乘上了一个数 

## Pro2 

定理 4.4.3 对任意矩阵 $A=(a_{ij})_{m\times n},$ 存在一系列 m 阶初等方阵 $P_1,\cdots ,P_s$ 和 n 阶初等方阵 $Q_1,\cdots,Q_t,$ 使得

$$
P_s\cdots P_1AQ_1\cdots Q_t=\begin{pmatrix}I_r&O\\ O&O\end{pmatrix},
$$

其中 r 为非负整数。


## Pro3

每个初等矩阵都有对应的逆矩阵，且也为初等矩阵：即每个初等变换都有对应逆变换[[Wiki - 逆矩阵]]

## Cal2 可逆的充要条件

对方阵如果 A 为 n 阶可逆方阵, 则由于 $P_s\cdots P_1$ A $Q_1\cdots Q_t$ 也可逆, 因此 $r=n.$ 从而

$$
P_s\cdots P_1AQ_1\cdots Q_t=I,
$$

由此得

$$
\dot{A}=\bar{P}_1^{-1}\cdots P_s^{-1}Q_t^{-1}\cdots\bar{Q}_1^{-1}.
$$


由于初等矩阵的逆矩阵仍为初等矩阵, 因此有

**定理**： 方阵 A 可逆的**充要条件**是 A 可以分解为一系列初等方阵的乘积.

---
## 1. Core Concepts

### Def1 Elementary Equation Operations
Three fundamental operations on linear equations:
1. Swapping two equations
2. Multiplying an equation by a non-zero scalar
3. Adding a scaled equation to another equation

**Important**: When solving systems, never mix row and column operations.

### Pro1 Solution Preservation
Elementary transformations preserve the solution set of the system.

## 2. Elementary Matrices

### Def2 Elementary Matrices Definition
Matrices obtained by performing elementary operations on identity matrices.

**Key Property**:  
Matrix transformations ≡ Multiplication by elementary matrices  
(Left multiplication for rows, right for columns)

### Cal1 Diagonal Matrix Multiplication
- Left multiplication: Scales rows  
- Right multiplication: Scales columns

## 3. Fundamental Theorems

### Pro2 Canonical Form Theorem (4.4.3)
For any $m×n$ matrix A, $\exists$ elementary matrices $\{P_{i}\}, \{Q_{j}\}$ such that:  
$$P_s...P_1AQ_1...Q_t = \begin{pmatrix}I_r&0\\0&0\end{pmatrix}$$  
where $r = rank (A)$

### Pro3 Invertibility of Elementary Matrices
Every elementary matrix is invertible, and its inverse is also elementary.  

## 4. Invertibility Conditions

### Cal2 Invertibility Criterion
For n×n matrix A:  
A is invertible ⇔ r = n in above decomposition  
⇔ A = Product of elementary matrices

**Explicit Form**:  
$$A = P_1^{-1}...P_s^{-1}Q_t^{-1}...Q_1^{-1}$$
