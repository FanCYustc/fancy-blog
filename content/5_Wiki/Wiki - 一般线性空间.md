---
aliases:
  - 向量空间
info: 一般线性空间的定义和性质
date: 2023-05-19-星期五 22:54
update: 
tags:
  - wiki/year2023
  - wiki/month05
id: wiki20230519225428
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 #代数 

## Def1 一般线性空间

对一个**非空集合**中定义**加法和数乘两种运算**，还有**一个数域 F** [[Wiki - 数域]]就构成了一般线性空间

设 V 是一个非空集合, $F$ 是一个数域. 对 V 中的元素定义两种运算:

$\left(1\right)$ 加法：对 $V$ 中的任意两个元素 $\alpha,\beta$ 组成的有序对 $(\alpha,\beta)$ , V 中存在唯一的一个元素 $\gamma$ 与之对应, 简记为 $\alpha+\beta=\gamma$.

$\left(2\right)$ 数乘: 对任意常数 $\lambda\in F$ 及向量 $\alpha\in V,V$ 中存在唯一的一个元素，与之对应, 简记为 $\lambda\alpha=\gamma.$


这样就构成了一个一般线性空间，V 中的元素称为向量。

## Pro1 加法和数乘的性质

加法和数乘满足 8 条性质：

![[Wiki - n维数组空间#Def1 数组空间]]



## Example

```ad-example

e.g n 次多项式线性空间 $F_n[x]$  

所有 $m\times n$ 矩阵构成的空间 $F^{m×n}$  

复数域加法，实数域或复数域数乘 （$C (\mathbb{R})$ 和 $C (\mathbb{C})$）
```

[[Wiki - 多项式环]]

其实都可以由同构映射与数组空间对应[[Wiki - 线性空间同构]]
