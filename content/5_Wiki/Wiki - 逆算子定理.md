---
aliases:
  - Lax-Milgram定理
info: 
date: 2024-10-28-星期一 14:23
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析/线性算子
id: wiki20241028142352
banner: "![[astrowalk.gif]]"
---
---

## The 1 逆算子定理（IMT）

X, Y 是 banach 空间 [[Wiki - banach空间]]，$T\in \mathcal{L}(X,Y)$，T 是双射 [[Wiki - 单射和满射]]，则 $T^{-1}\in \mathcal{L}(X,Y)$

### Proof 

[[Wiki - 开映射定理]] 的推论。

![[Wiki - 有界线性算子#The 1 有界与连续]]


且连续等价于开集的原像是开集 [[Wiki - 函数连续的等价条件#Pro 2 连续与拓扑]]

## Cal1 Lax-Milgram 定理

对于 hilbert 空间 H 上的双线性函数 [[Wiki - Hilbert空间]] $a(\cdot, \cdot)$ 满足：

1、连续：$\exists C,s.t. \|a (x, y)\|\leq C\|x\|\cdot \|y\| \forall x, y\in H$

2、强制：$\exists \delta>0 \space s.t. \delta\|x\|^{2}\leq a(x,x)$

则存在唯一的 $A\in \mathcal{L}(H, H)$，满足

1. $a (x, y)= \langle x, Ay\rangle,\forall x, y\in H$
2. $A^{-1}$ 存在有界，且 $\|A^{-1}\|\leq \frac{1}{\delta}$

[[Wiki - 线性算子的范数]]

### Proof

有一部分跟 [[Wiki - Riesz代表定理#The hilbert 空间的 riesz 代表定理]]一致

剩下的使用 IMT，证明 A 是双射 [[Wiki - 单射和满射]]就可以证明 $A^{-1}\in \mathcal{L}(H,H)$

1、A 是单射：等价于 $Ker (A)=\{0\}$，利用 $0=Ay \to a (x, y)= \langle x, Ay\rangle =0$

所以 $0= a (y, y)\geq \delta\|y\|^{2}\to y=0$

2、A 是满射：由  [[Wiki - 正交分解定理]]需要证 $range(A)$ 是闭子空间 [[Wiki - 线性映射的像空间和核]]

对 $\{Ax_{n}\}\in range(A)\to y$，利用条件 2 证明 $\{x_{n}\}$ 是基本列，所以由 hilbert 空间和 A 连续得知 $Ax_{n}\to Ax=y\in range(A)$，所以 $range(A)$ 闭 [[Wiki - 度量空间的闭子集]]

现在等价于证明 $range (A)^{\perp}=\{0\}$，$\langle y, Ax\rangle =0 = a(x,y)\forall x\in H$，后面同单射可知 $y=0$

3、最后说明 $\|A^{-1}\|\leq \frac{1}{\delta}$ ：
$$
\delta\|x\|^{2}\leq a(x,x)\rightarrow  \delta\|x\|\leq \|Ax\|\to \|A^{-1}y\|\leq \frac{1}{\delta} \|y\|
$$

