---
aliases: 
info: 阶梯型矩阵，方程组解的判定
date: 2023-03-13-星期一 21:22
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230313212212
banner: "![[astrowalk.gif]]"
---
---
#线性代数/矩阵 

## Def1 最简形势

对一个矩阵进行初等变换 [[Wiki - 矩阵的初等变换]]的消元操作上述过程可以一直进行下去，最后矩阵变为如下阶梯形矩阵：

$$  \left(\begin{array}{cccccccccr} c_{11} & \cdots & c_{1, j_{2}-1} & \cdots & \cdots & \cdots & \cdots & \cdots & c_{1 n} & d_{1} \\ 0 & \cdots & 0 & c_{2 j_{2}} & \cdots & \cdots & \cdots & \cdots & c_{2 n} & d_{2} \\ \vdots & & \vdots & \vdots & & & & & \vdots & \vdots \\ 0 & \cdots & \cdots & \cdots & \cdots & 0 & c_{r j_{r}} & \cdots & c_{r n} & d_{r} \\ 0 & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & 0 & d_{r+1} \\ 0 & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & 0 & 0 \\ \vdots & & & & & & & & \vdots & \vdots \\ 0 & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & 0 & 0 \end{array}\right)  $$

其中 $c_{11}, c_{2 i_{2}}, \cdots, c_{r i_{n}}$ 均非零．我们称上述形式为矩阵的最简形式或标准形式．

## Def2
每行第一个非零项称为 leading term.
性质：**每列至多有一个 leading term.**

## Pro1

Def 1 中的线性方程组的解的属性如下:
(1）当 $d_{r+1} \neq 0$ 时, 线性方程组（3.1) 无解;
(2) 当 $d_{r+1}=0$ 且 $r=n$ 时, 线性方程组（3.1) 有唯一解
(3) 当 $d_{r+1}=0$ 且 $r<n$ 时, 线性方程组（3.1) 有多解.

[[Wiki - 矩阵的秩]]

注意：由 [[Wiki - 方程组解的属性#Def2]]**r<=n**.

## Col1

齐次线性方程组有非零解的充要条件为 $r<n$ [[Wiki - 线性相关与无关的性质#Cal2 线性无关，解，与秩]]
证明：当 $r=n$ 时, 原齐次线性方程组有唯一解——零解. 当 $r<n$ 时, 原齐次线性方程组有多解，因而有非零解。

## Col2

若 $m<n,$ 则齐次线性方程组一定有非零解

证明：

由于 $r\leq m<n$ 由 [[Wiki - 方程组解的属性#Col1]], 结论成立。

```ad-note

R 其实就是矩阵的秩
```
 
[[Wiki - 矩阵的秩]]

---

## Def1 Reduced Echelon Form

Through elementary row operations [[Wiki - 矩阵的初等变换]], any matrix can be transformed into the following reduced echelon form:

$$  \left(\begin{array}{cccccccccr} 
c_{11} & \cdots & c_{1, j_{2}-1} & \cdots & \cdots & \cdots & \cdots & \cdots & c_{1 n} & d_{1} \\ 
0 & \cdots & 0 & c_{2 j_{2}} & \cdots & \cdots & \cdots & \cdots & c_{2 n} & d_{2} \\ 
\vdots & & \vdots & \vdots & & & & & \vdots & \vdots \\ 
0 & \cdots & \cdots & \cdots & \cdots & 0 & c_{r j_{r}} & \cdots & c_{r n} & d_{r} \\ 
0 & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & 0 & d_{r+1} \\ 
0 & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & 0 & 0 \\ 
\vdots & & & & & & & & \vdots & \vdots \\ 
0 & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & \cdots & 0 & 0 
\end{array}\right)  $$

Where $c_{11}, c_{2 i_{2}}, \cdots, c_{r i_{n}}$ are all non-zero. This is called the reduced row echelon form or standard form.

## Def2 Leading Terms
The first non-zero element in each row is called a leading term.
Property: Each column contains at most one leading term.

## Pro1 Solution Properties

For the linear system in Def1:
1) When $d_{r+1} \neq 0$: The system has no solution
2) When $d_{r+1}=0$ and $r=n$: The system has a unique solution
3) When $d_{r+1}=0$ and $r<n$: The system has infinitely many solutions


Note: From [[Wiki - 方程组解的属性#Def2]], we have **r≤n**.

## Col1 Homogeneous Systems

A homogeneous system has non-trivial solutions iff $r<n$ [[Wiki - 线性相关与无关的性质#Cal2 线性无关，解，与秩]]
### Proof:

- When $r=n$: Only the trivial solution exists
- When $r<n$: Infinitely many solutions exist, including non-trivial ones

## Col2 Underdetermined Systems

If $m<n$, a homogeneous system always has non-trivial solutions.

### Proof:
Since $r\leq m<n$, the conclusion follows from [[Wiki - 方程组解的属性#Col1]].

```ad-note
R represents the matrix rank
```
