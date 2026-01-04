---
aliases: 
info: 向量组的秩，相关定理
date: 2023-05-19-星期五 20:40
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230519204024
banner: "![[astrowalk.gif]]"
---
---

#线性代数/线性空间 

## Pro 1 极大无关组个数相等

若两个分别线性无关的向量组 $\left\{a_{1}, \cdots, a_{r}\right\}$ 和 $\left\{b_{1}, \cdots, b_{s}\right\}$ 等价，则 $r=s$ ．

### Proof

由于 $\left\{a_{1}, \cdots, a_{r}\right\}$ 可以用 $\left\{b_{1}, \cdots, b_{s}\right\}$ 线性表示，则存在常数 $\mu_{i j}, i=$ $1, \cdots, r, j=1, \cdots, s$ ，使得 $\boldsymbol{a}_{i}=\sum_{j=1}^{s} \mu_{i j} \boldsymbol{b}_{j}$ ．考察线性方程组
$$  \sum_{i=1}^{r} \lambda_{i} a_{i}=0 $$

由于 $\left\{a_{1}, \cdots, a_{r}\right\}$ 线性无关，该方程组只有零解．将它重新改写成
$$  \begin{array}{l} \sum_{j=1}^{s}\left(\sum_{i=1}^{r} \lambda_{i} \mu_{i j}\right) b_{j}=0 . \\
\left(b_{1}, b_{2}, \cdots b_{n}\right) U_{s r}\left(\begin{array}{c} \lambda_{1} \\ \lambda_{2} \\ \vdots \\ \lambda_{r}  \end{array}\right) =0 
 \end{array}  $$

由于 $\left\{b_{1}, \cdots, b_{s}\right\}$ 线性无关，上式等价于
$$  \sum_{i=1}^{r} \lambda_{i} \mu_{i j}=0, \quad j=1,2, \cdots, s . 
$$

这是关于 $\lambda_{1}, \cdots, \lambda_{r}$ 的齐次线性方程组，且知道它只有零解．由推论 [[Wiki - 线性方程组解的结构]] $r \leqslant s$ ．同理，由于 $\left\{\boldsymbol{b}_{1}, \cdots, \boldsymbol{b}_{s}\right\}$ 可以由 $\left\{\boldsymbol{a}_{1}, \cdots, \boldsymbol{a}_{r}\right\}$ 线性表示，故 $s \leqslant r$ ．因此 $r=s$ ．

## Def1 向量组的秩 

由 [[Wiki - 极大线性无关组与秩#Pro 1 极大无关组个数相等]] 向量组任意极大无关组向量个数相等，称为**向量组的秩**

在证明中可以得出矩阵 $U_{s r}$ 是方阵，且是可逆 [[Wiki - 逆矩阵#Pro2 可逆的判断]] 矩阵

## Pro 2 初等变换不变秩

```ad-proposition
title: Propositon 2

初等变换不改变矩阵的秩，则秩=行秩=列秩

```


## Cal 1 可逆的等价命题
n 阶方阵 A 可逆 $\Leftrightarrow\operatorname{rank}(A)=n\Leftrightarrow\boldsymbol{A}$ [[Wiki - 矩阵的秩#Cal2]] 的行向量线性无关 $\leftrightarrow$ A 的列向量线性无关
[[Wiki - 行列式与可逆]] 

## Cal2
若 $\operatorname{rank}(A)=r,$ 则 A 的不等于零的 r 阶子式 [[Wiki - 矩阵的秩#Def2 秩与行列式]] 所在行 (列) 构成 A 的行（列）向量的极大无关组[[Wiki - 极大线性无关组]]


## Pro 3
若

$$
\begin{array}{*{20}{c}}{\left( {\begin{array}{*{20}{c}} \rightharpoonup & \rightharpoonup & \rightharpoonup \\{{\alpha _1},}&{{a_2},}&{ \ldots {\alpha _r}}\end{array}} \right) = \left( {\begin{array}{*{20}{c}} \rightharpoonup && \rightharpoonup && \rightharpoonup \\{{\beta _1}}&,&{{\beta _2},}& \ldots &{{\beta _s}}\end{array}} \right){U_{s\times r}}}\\{ \Rightarrow rank\left( {{a_1},{a_2}, \ldots {a_r}} \right) = rank\left( U \right)}\end{array}
$$
其中 $(\vec{\beta_{1}},\dots,\vec{\beta_{s}})$ 线性无关 [[Wiki - 线性相关和线性无关]]。

--线性变换后空间降维[[Wiki - 基和维数]]