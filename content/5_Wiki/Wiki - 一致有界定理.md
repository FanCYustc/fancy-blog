---
aliases: 
info: 
date: 2024-10-23-星期三 10:24
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析/线性算子
id: wiki20241023102412
banner: "![[astrowalk.gif]]"
---
---

## The 1 一致有界定理 UBP

$X$ 是 Banach 空间 [[Wiki - banach空间]]， $Y$ 是赋范空间 [[Wiki - 赋范空间]]， $\mathcal{F} \subset \mathcal{L}(X, Y)$ ，[[Wiki - 线性映射]]
$$
\forall x \in X, \sup _{T \in \mathcal{F}}\|T x\|<\infty \Rightarrow \sup _{T \in \mathcal{F}}\|T\|<\infty
$$

等价地，
$$
\sup _{T \in \mathcal{F}}\|T\|=+\infty \Rightarrow \exists x_0 \in X \text { s.t. } \sup _{T \in \mathcal{F}}\left\|T x_0\right\|=+\infty
$$
### Proof

$\sup_{T\in \mathcal{F}} \|Tx\|<\infty \leftrightarrow X= \bigcup_{n=1}^{\infty}F_{n}$，其中 $F_{n}= \{x\in X | \sup_{T\in \mathcal{F}}\|Tx\|\leq n\} = \bigcap_{T\in \mathcal{F}} \{x\in X| \|Tx\|\leq n\}$

Because $F_{n}$ is a cap of closed set [[Wiki - 实数域的开集闭集]]（由 T 连续），所以 $F_{n}$ 是闭集

由 [[Wiki - Baire纲定理#The 1 baire 纲第一定理]]，可知存在 $F_{n_{0}}$ 有内点，即 $\exists B (x_{0}, r)\subset F_{n_{0}}$

所以
$$
\begin{align}
&\|T(x_{0}+rx)\|\leq n_{0}, \forall x\in (0,1) ,T\in\mathcal{F}\\
& r\|Tx\|\leq n_{0}+\|Tx_{0}\|\leq 2n_{0} \\
\rightarrow & \sup_{T\in \mathcal{F}}\sup_{x\in X,\|x\|\leq 1}\| Tx\|\leq \frac{2n_{0}}{r} \\
\to & \sup_{T\in \mathcal{F}} \|T\| < \infty
\end{align}
$$


## Cal 1 

X 是 Banach 空间，Y 是赋范空间，$\overline{M}=X$，$T, T_n\in\mathcal{L}(X, Y), n=1, 2,\cdots$ 
$$
T_nx\to Tx,\forall x\in X\Leftrightarrow\sup||T_n||<\infty\mathrm{~and~}T_nx\to Tx,\forall x\in M $$

### Proof 

$\rightarrow:$ 逐点收敛[[Wiki - 函数项级数|函数项级数逐点收敛]]可以推出逐点有界，利用一致有界定理证明一致有界

$\leftarrow:$ 记 $C=\sup_{n}||T_{n}||$，

$$\begin{aligned}&\overline{M}=X\Rightarrow\forall x\in X,\forall\varepsilon>0,\exists y\in M\mathrm{~s.t.~}||x-y||<\frac{\varepsilon}{4(||T||+C)}\\&\Rightarrow||T_{n}x-Tx||\leqslant||T_{n}x-T_{n}y||+||T_{n}y-Ty||+||T_{y}-Tx||\\
&\leqslant C||x-y||+\frac{\varepsilon}{2}+\|T\|\cdot\|x-y\| \\
& <\epsilon
\end{aligned}$$

## The 2

X 是 banach 空间，Y 是赋范空间，$A_{n}\in \mathcal{L}(X,Y),n=1,\dots$，且 $\forall x\in X,\lim_{ n \to \infty } A_{n}x$ 存在，则定义 $A: x\to \lim_{ n \to \infty }A_{n}x$，则 $A\in \mathcal{L}(X,Y)$，且 $\|A\|\leq \lim\inf_{ n \to \infty } \|A_{n}\|$

### Proof

对于 $\forall x \in X$，因为 $\{A_n x\}$ 收敛，可定义 $A: x \mapsto \lim_{n \to \infty} A_n x$，不难验证 A 是线性算子。

收敛列必有界，所以 $\forall x \in X$，$\sup_{n \geq 1} \|A_n x\| < \infty$。由 UBP， $\exists M > 0$ s.t. $\sup_{n \geq 1} \|A_n\| \leq M$。于是 $\|Ax\| = \lim_{n \to \infty} \|A_n x\| \leq \liminf_{n \to \infty} \|A_n\| \cdot \|x\| \leq M \|x\|, \forall x \in X$

