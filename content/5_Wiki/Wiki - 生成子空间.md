---
aliases: 
info: 生成子空间
date: 2023-05-18-星期四 23:04
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230518230426
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 

## Def1 生成子空间
```ad-definition
title: Definition 1


设 $a_1,a_2,\cdots,a_m\in F^n$ 是一组给定的 n 维数组向量. 则集合

$$

\langle{a}_{1},{a}_{2},\cdots,{a}_{m}\rangle:=\{\lambda_{1}{a}_{1}+\lambda_{2}{a}_{2}+\cdots+\lambda_{m}{a}_{m}|\lambda_{i}\in F,i=1,2,\cdots,m\}

$$

是 $F^n$ 的子空间，称为由向量组 $a_1,a_2,\cdots,a_m$ **生成的子空间**
```

[[Wiki - n维数组空间]]


尽管向量组不同，可能生成同样的空间：对应基的概念

## Example 1

```ad-example
title: Example 1

```
对于齐次方程组 A x=0 [[Scientech - 线性代数-线性方程组]]

解 x 构成的集合称为齐法方程的**解空间**. [[Wiki - 方程组解的属性]]
也称为零空间，记为N(A)


```ad-example
title: Example 2

行空间：A 的行向量生成的子空间，记为 R (A)
列空间：A 的列向量生成的空间，记为 C (A)

```

## Pro 1 

```ad-proposition
title: Propositon 1


生成子空间是包含给定向量的最小子空间


```

**来源：[[Book - 线性代数应该这样学|Linear Algebra Done Right]]**


