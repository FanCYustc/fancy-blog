---
aliases: 
info: 
date: 2024-10-16-星期三 10:37
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析/线性算子
id: wiki20241016103758
banner: "![[astrowalk.gif]]"
---
---

## Def 1 

赋范空间[[Wiki - 赋范空间]] X 到 Y 的有界线性算子[[Wiki - 有界线性算子]]全体记作 $\mathcal{L}(X,Y)$，称 $T\in \mathcal{L}(X,Y)$ 的范数为

$$
\|T\| = \sup_{x\in X,x\neq 0} \frac{{\|Tx\|_{Y}}}{\|x\|_{X}} = \sup_{x\in X,\|x\|_{X}=1} \|Tx\|_{Y}
$$
[[Wiki - 范数]]

有限维的情况就是 [[Wiki - 线性映射的范数]]

## The 1 

赋范空间 X, Y，$(\mathcal{L}(X,Y),\|\cdot\|_{X\to Y})$ 是赋范空间 [[Wiki - 赋范空间]]，且若 Y 是 banach 空间 [[Wiki - banach空间]]，则 $\mathcal{L}(X,Y)$ 也是 banach 空间。

特别的，X 的所有有界线性泛函构成的空间 $X^{*}$ [[Wiki - 对偶空间]] 一定是 banach 空间。

### Proof

取 $\{T_{n}\}\subset \mathcal{L}(X,Y)$ 的 cauchy 列，则 $\epsilon>0, m,n$ 充分大时 $\|T_{m}-T_{n}\|<\epsilon$

所以 $|T_{m}(x)-T_{n}(x)|<\epsilon$ ，所以由 Y 的完备性， $T_{n}(x)$ 逐点收敛到 $y_{x}$，证明 $T: x\to \lim_{ n \to \infty }T_{n}(x)$ 是有界线性算子。



