---
aliases: 
info: 矩阵的各种范数定义
date: 2023-11-16-星期四 11:12
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/矩阵
  - 几何学/赋范空间
id: wiki20231116111239
banner: "![[astrowalk.gif]]"
---
---

[矩阵基础 | 向量范数与矩阵范数 - 知乎](https://zhuanlan.zhihu.com/p/265713608)

## Def 1 2-范数

```ad-definition
title: Definition 1

定义矩阵范数为
$$
\mid\mid A\mid\mid = \sup_{x\neq 0} \frac{\mid Ax\mid}{\mid x\mid}
$$

$|\cdot|$ 为传统的 euclid 范数 
```

[[Wiki - 欧式空间向量的模]]

### Pro 

$\mid \mid A\mid\mid^{2}$ 为 $A A^{T}$ 特征值的最大值

其他的同 [[Wiki - 线性映射的范数#Pro 1 映射范数性质]]


## Def 2 和范数

对 $A$ 中的任何元素

$A=\begin{pmatrix}a_{ij}\end{pmatrix}_{n\times n}$, 

定义它的模为

$$
\|A\|=\sum_{i,j=1}^{n}|a_{ij}|.$$
可以验证它是一个范数，且是完备的度量 [[Wiki - 度量空间的完备性]]

### pro


另外，在 $\mathscr{M}$ 中还特别有乘法运算，即对于任意 $A,B\in\mathscr{M}$, 有 $A\dot{B}\in\mathcal{M}$. 而且
 $\|AB\|\leqslant\|A\|\cdot\|B\|.$ 利用上述性质，我们有
 
$\|A^k\|\leqslant\|A\|^k,\quad(k\geqslant1).$

通常令 $A^0$ 为 n 阶单位矩阵 E. 注意，上述不等式对 $k=0$ 不成立.








