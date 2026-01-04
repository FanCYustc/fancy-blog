---
aliases:
  - 实分析-stein
year: 
category: 数学
rate: "1"
info: 24春实分析课本
date: 2024-02-26-星期一 09:54:15
update: 
tags:
  - book/year2024
  - book/month02
  - 实分析
id: book20240226095415
banner: "![[astrogate.gif]]"
---
---
![[Real Analysis Stein.pdf]]
# Real analysis

![[实分析讲义-于树澄.pdf]]

基于勒贝格测度，用来解决数学分析中 Riemann 积分解决不了的问题

回顾黎曼可积 [[Scientech - 数学分析-Riemann积分]]

**Riemann 积分的不足：**

```ad-example

1. 一些函数不是 Riemann 可积

Dirichlet 函数 -> 我们期望它几乎处处为0，“积分”应为0


```

```ad-example

2. 一列 Riemann 可积的函数列极限不可积

例如列出 $[0,1]$ 上有理数 $r_{1},r_{2,}\dots$
记
$$
f_{n}(x)=\begin{cases}
1\quad x=r_{1},\dots,r_{n} \\
0 \quad else
\end{cases}
$$
每个 $f_{n}(x)$ Riemann 可积，但 $\lim_{ n \to \infty }f_{n}(x)=dirichlet\space function$


```

解决：引入 lebesgue 积分

```ad-example

3. 微积分基本定理有局限

存在Volterra 函数有导数，但导数不可积，不满足微积分基本定理->希望拓展微积分基本定理的范围

```

改进：对绝对连续函数微积分基本定理在 lebesgue 积分意义下成立

```ad-example

4. 取空间为全体 Riemann 可积函数，定义度量为 $d(f,g)=\int |f-g| \, dx$，可以验证度量不完备 [[Wiki - 度量空间的完备性]]

--Riemann 可积函数空间还需要扩充

```

扩充为 $L^{1}$ 空间

```ad-example

5. Fourier 级数

存在一列数列 $\{a_{n}\}$ s.t. $\sum a_{n}^{2}<\infty$，[[Wiki - Parseval等式]]但不存在 Riemann 可积函数 f 使 $f\sim \sum a_{n}e^{inx}$

```

解决：$L^{2}$空间

## 第 1 章-测度论

Lebesgue 的想法：与 Riemann 积分反过来，**对值域进行划分** ^7972c7

$$
\int _{a}^{b}f \, dx = \lim_{ \Delta \to 0 }\sum_{i=1}^{n}y_{i-1} \mid E_{i}\mid  
$$

其中 $E_{i}=\{x: y_{i-1}<f(x)<y_{i}\}$ --需要定义集合的长度，即 **lebesgue 测度**

[[Scientech - 实分析-lebesgue测度]]

## 第 2 章-lebesgue 积分

[[Scientech - 实分析-lebesgue积分]]

## 第 3 章-积分与微分

[[Scientech - 实分析-积分与微分]]

## 第 4 章-希尔伯特空间

## 第 5 章-希尔伯特空间：一些例子

## 第 6 章-抽象测度

[[Scientech - 实分析-抽象测度]]

## 第 7 章-豪斯多夫测度


