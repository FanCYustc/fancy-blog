---
aliases: 
info: 结式的定义、判别公因式
date: 2023-09-18-星期一 08:35
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/矩阵
  - 线性代数/多项式
id: wiki20230918083554
banner: "![[astrowalk.gif]]"
---
---

## Def 1 结式

```ad-definition
title: Definition 1

设 $f (x), g (x)\in F[x]$，$f (x)=a_{n}x^{n}+\dots+a_{1}x+a_{0}\quad,\quad g(x)=b_{m}x^{m}+\dots+b_{1}x+b_{0}$

$$
\begin{vmatrix} a_0 &  &  &  & b_0 &  &  &\\ a_1 & a_0 &  &  & b_1 & b_0 &  &\\ \vdots  & a_1 & \ddots  &  & \vdots  & b_1 & \ddots  &\\ a_n & \vdots  &  &a_0  & b_m & \vdots  &  &b_0\\  & a_n &  &a_1  &  & b_m & &b_1\\  &  &  & \vdots  &  &  & &\vdots \\  &  &  & a_n &  &  & &b_m\\\end{vmatrix}
$$

称为 **f，g 的结式**，记作 $Res(f,g,x)$

```


## Pro 1 判断公因式

```ad-proposition
title: Propositon 1

F, g 有公因子 $\leftrightarrow Res(f,g,x)=0$

```

[[Wiki - 多项式最大公因式]]

### Proof

#### 引理

有公共因子 $\leftrightarrow \exists A (x), B (x)\neq 0, A (x) f (x)+B (x) g (x)=0 ,且deg(A)<m,deg(B)<n$
设 $f(x)=d(x)f_{1}(x),g(x)=d(x)g_{1}(x)$, 取 $A(x)=g_{1}(x),B(x)=f_{1}(x)$ 即可

设 $A(x)=\sum_{i=0}^{m-1}A_{i}x^{i}$, $B(x)=\sum_{i=0}^{n-1}B_{i}x^{i}$

$$
Af+Bg=\sum_{k=0}^{m+n-1}\left( \sum_{i+j=k}(a_{j}A_{i}+b_{j}B_{i})   \right)x^{k}=0
$$

等价于

$$
\begin{vmatrix} a_0 &  &  &  & b_0 &  &  &\\ a_1 & a_0 &  &  & b_1 & b_0 &  &\\ \vdots  & a_1 & \ddots  &  & \vdots  & b_1 & \ddots  &\\ a_n & \vdots  &  &a_0  & b_m & \vdots  &  &b_0\\  & a_n &  &a_1  &  & b_m & &b_1\\  &  &  & \vdots  &  &  & &\vdots \\  &  &  & a_n &  &  & &b_m\\\end{vmatrix}
\begin{pmatrix}
A_{0} \\
A_{1} \\
\vdots \\
A_{n} \\
B_{1} \\
\vdots \\
B_{m}
\end{pmatrix}=0
$$

**有非零解**

