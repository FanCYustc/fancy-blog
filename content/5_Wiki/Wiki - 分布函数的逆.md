---
aliases: 
info: 已知分布函数构造随机变量
date: 2023-09-21-星期四 15:25
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 概率论/随机变量
id: wiki20230921152541
banner: "![[astrowalk.gif]]"
---
---

## The 1 分布函数的逆

$F:\mathbb{R}\to[0,1]$，满足分布函数的性质 [[Wiki - 分布函数]]，则可以构造一个随机变量 [[Scientech - 概率论-随机变量]]，使其具有分布函数 $F (X)$

### Proof

利用右连续性

$$
F^{-1}(u)=\inf\{x:F(X)\geq u\},\forall u\in[0,1]
$$

而对任何 $x\in\mathbb{R},$ 都有 $F(x)\in\mathbb{R},$ 故由 $\text{Y}$ 为随机变量 [[Wiki - 随机变量]]知

$$
(X\leqslant x)=(F^{-1}(Y)\leqslant x)=(Y\leqslant F(x))\in\mathscr{F},
$$

所以 $X=F^{-1}(Y)$ 是一个随机变量. 再注意到 $\text{Y}$ 为 $U(0,1)$ 随机变量 [[Wiki - 均匀分布]], 便可由上式得

$$
\mathbf{P}(X\leqslant x)=\mathbf{P}(F^{-1}(Y)\leqslant x)=\mathbf{P}(Y\leqslant F(x))=F(x),\quad x\in\mathbb{R}.
$$

所以 $F(x)$ 就是随机变量 $\text{X}$ 的分布函数



