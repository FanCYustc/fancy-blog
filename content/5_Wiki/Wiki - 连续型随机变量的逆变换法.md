---
aliases: 
info: 
date: 2025-01-03-星期五 17:24
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 统计算法
  - 概率论/随机变量
id: wiki20250103172409
banner: "![[astrowalk.gif]]"
---
---

## The 1 

X 是连续型随机变量，分布函数为 $F_{X}(x)$ [[Wiki - 分布函数]]，则有
$$
U=F_{X}(X)\sim U(0,1)
$$
[[Wiki - 均匀分布]]

### Proof

$$
P(F(X)\leq x)= P(X\leq F^{-1}(x))= F(F^{-1}(x))=x
$$

[[Wiki - 分布函数的逆]]

## The 1 逆变换法

1. 求出 X 分布函数的逆 $F_{X}^{-1}$
2. 生成 $U(0,1)$ 分布的随机变量 U
3. 做逆变换 $F_{X}^{-1}(U)$ 满足 $F_{X}^{-1}(U)\sim X$

对于离散型随机变量，也可以求出分布的逆，近似认为是服从标准均匀分布的

