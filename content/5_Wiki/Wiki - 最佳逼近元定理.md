---
aliases: 
info: 
date: 2024-10-30-星期三 21:38
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析
  - 几何学/赋范空间
id: wiki20241030213802
banner: "![[astrowalk.gif]]"
---
---

## The 1 最佳逼近元定理

赋范空间 $(X,\|\cdot \|)$ [[Wiki - 赋范空间]]，有 $e_{1},\dots, e_{n}\in X$ 线性无关 [[Wiki - 线性相关和线性无关]]，$\forall x\in X,\exists \lambda_{1},\dots,\lambda_{n}\in \mathbb{K}$ 使得
$$
\|x-\sum_{k=1}^{n}\lambda_{k}e_{k}\|= \min_{\xi\in \mathbb{K}^{n}}\|x- \sum_{k=1}^{n}\xi_{k}e_{k}\|
$$

**注意要是有限维子空间的逼近元**[[Wiki - Hamel基]]
### Proof

定义 $f:\mathbb{K}^{n}\to \mathbb{R},\xi\to \|x- \sum_{k=1}^{n}\xi_{k}e_{k}\|$，证明 f 连续。

且有 $f (\xi)\geq \|\sum_{k=1}^{n}\xi_{k}e_{k}\|-\|x\|$，而 $p (\xi)=\\sum_{k=1}^{n}\xi_{k}e_{k}\|$ 是一个范数，由 [[Wiki - 范数的等价]]知，存在 C 使得

$$
f(\xi)\geq C\|\xi\|-\|x\|\to +\infty\quad  (|\xi|\to \infty)
$$

所以 f 在 $\mathbb{K}^n$ 上可取到最小值[[Wiki - 连续函数的性质|连续函数的最值定理]]。

## The 2 

对于严格凸 [[Wiki - 严格凸性]]赋范空间中的给定向量，其有限维子空间的最佳逼近元唯一。

### Proof

反证：假设 $\|x-y\|=\|x-z\|= dist(x,M)$，其中 $y\neq z, y, z\in M$

若 $d=dist(x,M)=0$，则显然

若 $d>0$，则由严格凸性
$$
\frac{1}{d} \|x- (ty+(1-tz))\|= \|t \frac{x-y}{d}+ (1-t) \frac{x-z}{d}\|<1
$$

而 $ty+(1-t) z\in M$，矛盾。
## The 3 

对于 H 是 hilbert 空间 [[Wiki - Hilbert空间]]，$M$ 是闭 [[Wiki - 度量空间的闭子集]]凸集，对 $\forall x\in H$，**存在唯一**的 $y\in M,s.t.$ $\|x-y\|= dist (x, M) = \inf_{z\in M}\|x-z\|$

### Proof 

由 dist 定义，存在 $\{y_{n}\}\subset Ms. t.\|y_{n}-x\|\to d=dist(x,M)$。所以
$$
\begin{align}
\|y_{m}-y_{n}\|^{2} &= 2(\|y_{n}-x\|^{2}+ \|y_{m}-x\|^{2})-\|y_{m}+y_{n}-2x\|^{2}\\ \\
&\leq 2(\|y_{m}-x\|^{2}+\|y_{n}-x\|^{2})-4d^{2}\\ \\
&\to 0
\end{align}
$$

由完备性，存在 $y,\|y_{n}-y\|\to 0$，由闭性 $y\in M$，验证 $\|x-y\|=d$

唯一性反证


