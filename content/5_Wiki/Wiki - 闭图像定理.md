---
aliases: 
info: 
date: 2024-10-30-星期三 10:19
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析/线性算子
id: wiki20241030101913
banner: "![[astrowalk.gif]]"
---
---
在证明闭图像定理前需要一个简单的引理

## Lemma 1 BIT

$X$ 是赋范空间 [[Wiki - 赋范空间]]，$Y$ 是 Banach 空间 [[Wiki - banach空间]]，任一 $T\in \mathcal{L} ( Dom ( T) , Y)$ [[Wiki - 有界线性算子]]可**唯一地**、**保范数**地延拓为 $\tilde{T}\in \mathcal{L}(\overline{\operatorname{Dom}(T)},Y).$ 即

$$\tilde{T}|_{\mathrm{Dom}(T)}=T\text{and}||\tilde{T}||=||T||.$$
[[Wiki - 线性算子的范数]]
### Proof

$\forall x\in\overline{\mathrm{Dom}(T)},\exists x_n\in\mathrm{Dom}(T)\mathrm{~s.t.~}x_n\to x$，由于 T 有界，
$$||Tx_n-Tx_m||\leqslant||T||||x_n-x_m||\to0\text{ as }n,m\to\infty
$$

所以 $\{Tx_n\}_{n=1}^\infty$ 是 $Y$ 中的基本列，由于 Y 是 banach 空间，所以 $\exists y\in Y$ s.t. $Tx_n\to y$。定义映射

$$\tilde{T}:\overline{\mathrm{Dom}(T)}\to Y,x\mapsto y$$

容易验证良定，且 $\tilde{T}$ 是线性映射。下面证明 $\tilde{T}$ 有界：

$$\begin{aligned}&\forall x\in\overline{\mathrm{Dom}(T)},||\tilde{T}x||=||y||=\operatorname*{lim}_{n\to\infty}||Tx_{n}||\leqslant\operatorname*{lim}_{n\to\infty}||T||||x_{n}||=||T||||x||\\&\Rightarrow\tilde{T}\in\mathcal{L}(\mathrm{Dom}(T),Y)\mathrm{~and~}||\tilde{T}||\leqslant||T||\end{aligned}$$
[[Wiki - 一致有界定理]]

另一方面有 $\|\tilde{T}\|\geq \|T\|$ 由于定义域扩大。

## The 1 闭图像定理 CGT

BIT 说明有界线性算子可以通过保范延拓成闭算子，CGT 说明在一些条件下闭算子可以推到有界线性算子。

X，Y 是 banach 空间 [[Wiki - banach空间]]，$T: X\to Y$ 是闭线性算子 [[Wiki - 闭算子]] ，定义域 $Dom(T)$ 是闭集 [[Wiki - 度量空间的开集闭集]]，则 $T\in \mathcal{L}(X,Y)$ [[Wiki - 有界线性算子]]

### Proof

由闭算子，$Gr (T)= \{(x,Tx): x\in Dom(T)\}$ 是 $X\times Y$ 的闭子空间，所以是 banach 空间。

定义 $\pi_{1}: Gr (T)\to Dom(T), (x, Tx)\to x$；$\pi_{2}: Gr (T)\to Y, (x, Tx)\to Tx$，则 $T= \pi_{2} \circ \pi_{1}^{-1}$

由 $Dom(T)$ 是闭集且 $\pi_{1}$ 是双射，有 $\pi_{1}^{-1}$ 有界由 [[Wiki - 逆算子定理]]，所以 T 有界


## Cal 1 Hellinger-Toeplitz 定理

H 为 hilbert 空间 [[Wiki - Hilbert空间]]，若算子 $T: H\to H$ 满足 $\langle x, Ty\rangle= \langle Tx, y\rangle$，则 T 为有界算子 [[Wiki - 有界线性算子]]

### Proof

只需要证明 T 为闭算子，再用闭图像定理。

设 $x_{n}\to x, Tx_{n}\to y$，则 $\forall \delta\in H,$
$$
\langle \delta, Tx\rangle = \langle T\delta, x\rangle = \lim_{ n \to \infty } \langle T\delta, x_{n}\rangle = \lim_{ n \to \infty } \langle \delta, Tx_{n}\rangle = \langle \delta,y\rangle
$$
所以 $Tx = y$。
