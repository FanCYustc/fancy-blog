---
aliases: 
info: 
date: 2024-10-09-星期三 10:40
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析
  - 几何学/内积空间
  - 正交
id: wiki20241009104042
banner: "![[astrowalk.gif]]"
---
---

## The 1 正交分解

欧式空间的情况： ![[Wiki - 欧式空间的子空间#Def 2 正交分解]]
对于一般的 hilbert 空间 [[Wiki - Hilbert空间]]，同样有

H 是 Hilbert 空间，M 是闭子空间, 则 $H=M\oplus M^\perp$ , 即 $\forall x\in H,$ 存在唯一的 $y\in M$  和 $\zeta\in M^\perp$ 使得 $x=y+\zeta.$ 

[[Wiki - 正交补空间]]


### Proof

$\forall x\in H$，由 [[Wiki - 最佳逼近元定理#The 3]]，存在唯一 $y\in M$，使得 $\|x-y\| = dist(x,M)$

试说明 $x-y\in M^\perp$ ： 对任意非零 $w\in M, y+\lambda w\in M$，取 $\lambda = \frac{{\langle x-y, w\rangle}}{\|w\|^{2}}$，则

$$
d^{2}\leq \|x-(y+\lambda w)\|^{2}= d^{2}- \frac{{|\langle x-y, w\rangle|^{2}}}{\|w\|^{2}}
$$

所以 $\langle x-y, w\rangle=0,\forall w\in M$

所以 $z=x-y\in M^\perp$，即存在唯一正交分解。
