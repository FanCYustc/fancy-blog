---
aliases: 
info: 线性空间的同构
date: 2023-05-19-星期五 23:00
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230519230038
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 #代数 

## Def1 同构映射

```ad-definition
title: Definition 1

```

[[Wiki - 线性映射]]

V (F） 与 V' （F） 称为同构的，如果存在 V 到 V'的**一一线性映射**[[Wiki - 可逆线性映射]]，满足

$$
\begin{array}{l}
\phi ( \alpha + \beta  ) = \phi( \alpha ) + \phi( \beta)\\
\phi( \lambda \alpha ) = \lambda \phi( \alpha)\\
\end{array}
$$

称φ为**同构映射**


## Def 2 同构

```ad-definition
title: Definition 2

如果 V 和 V'之间存在同构映射，则称 V 与 V'同构，记为 $V\simeq V'$

```

## The 1 同构是等价关系
```ad-theorem
title: Theorem 1


1. V 与 V 同构
2. 若 $\sigma$ 是 $V_{1}\to V_{2}$ 的同构映射，则 $\sigma^{-1}$ 是 $V_{2}\to V_{1}$ 的同构映射
3. $V_{1}\simeq V_{2}, V_{2}\simeq V_{3}\to V_{1}\simeq V_{3}$

```


所以同构是一种等价关系 [[Wiki - 等价关系]]

### Proof


## Pro1 线性空间与数组空间同构

寻找同构等价类中的代表元

```ad-proposition
title: Propositon 1

```

F 上任意 n 维线性空间[[Wiki - 一般线性空间]]都与数组空间 [[Wiki - n维数组空间]] $F^n$ 同构



证明：取一组基向量 [[Wiki - 一般线性空间理论#基和维数]]，对应的坐标就是在数组空间中的像  

**（同构映射不唯一）**