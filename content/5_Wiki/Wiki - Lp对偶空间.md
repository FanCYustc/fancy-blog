---
aliases: 
info: 
date: 2024-11-13-星期三 11:17
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 泛函分析
id: wiki20241113111724
banner: "![[astrowalk.gif]]"
---
---

## The 1 

对 $L^{p}$ 空间（$1\leq p<+\infty$） [[Wiki - Lp线性空间]]，有 $(L^{p})^{*}=L^{q}$，其中 $\frac{1}{p} + \frac{1}{q} =1$

[[Wiki - 对偶空间]]

### Proof

说明对 $\forall \Lambda\in (L^{p})^{*},\exists g\in L^{q}, s.t. \Lambda (f)= \Lambda_{g}(f)= \int fg \, dm$，且任意 $\Lambda_{g}\in (L^{p})^{*}$ 

1、首先说明 $\forall g\in L^{q}, \Lambda_{g}\in (L^{p})^{*}$ ：

 $|\int fg \, dm|\leq \|g\|_{q}\|f\|_{p}$，由 [[Wiki - Holder不等式]]，$\|g\|_{q}<\infty$，所以 $\Lambda_{g}\in \mathcal{L}(L^{p},\mathbb{K})$

2、说明 $\Lambda_{g}$ 与 g 是等距同构的，即映射 $J: g\to \Lambda_{g}$ 是线性的，且 $\|\Lambda_{g}\|=\|g\|_{q}$ ：

线性性好说明。

对等距性，首先由 1 有 $\|\Lambda_{g}\|\leq \|g\|_{q}$。

- 若 $1<p<\infty$，取 $\tilde{f}= |g|^{q-1}sgn(g)$，有 $\tilde{f}\in L^{p}$，且 $\|\Lambda_{g}(\tilde{f})\|=\|g\|_{q}^{q}= \|\tilde{f}\|_{p}^{p}$，则此时 $\frac{\|\Lambda_{g}(\tilde{f})\|}{\|\tilde{f}\|_{p}}= \|g\|_{q}^{q (1- \frac{1}{p})}=\|g\|_{q}$，所以有 $\|\Lambda_{g}\|=\|g\|_{q}$

- 若 p=1，
$$
\begin{aligned}
& \qquad E_k \stackrel{\text { def }}{=}\left\{t \in \Omega:|g(t)|>\left\|\Lambda_g\right\|+\frac{1}{k}\right\}, f_k \stackrel{\text { def }}{=} \chi_{E_k} \cdot \operatorname{sgn}(g) \\
& \Rightarrow\left|\left|f_k \|_1=\int_{E_k}\right| \operatorname{sgn}(g)\right| \mathrm{d} \mu \leqslant \mu\left(E_k\right) \\
& \Rightarrow\left|\left|\Lambda_g\left\|\mu\left(E_k\right) \geqslant\right\| \Lambda g\right| \| \geqslant\left|\Lambda_g\left(f_k\right)\right|=\int \chi_{E_k} \operatorname{sgn}(g) g \mathrm{~d} \mu=\int_{E_k}\right| g \left\lvert\, \mathrm{d} \mu \geqslant\left(\left\|\Lambda_g\right\|+\frac{1}{k}\right) \mu\left(E_k\right.\right. \\
& \Rightarrow \mu\left(E_k\right)=0, \forall k \\
& \Rightarrow\left\{t \in \Omega:|g(t)|>\left\|\Lambda_g\right\|\right\}=\bigcup_{k=1}^{\infty} E_k \text { 零测 }
\end{aligned}
$$

所以 $\|\Lambda_{g}\|=\|g\|_{\infty}$

3、说明 J 是双射，即 $\forall\Lambda\in (L^{p})^{*}$，存在唯一的 $g\in L^{q},s.t.\Lambda_{g}=\Lambda$ ：

前面已经说明存在从 $L^{q}$ 到 $(L^{p})^{*}$ 的等距嵌入 [[Wiki - 等距映射与等距同构]]，现在说明每个 $\Lambda$ 都有 $\Lambda_{g}$ 与之对应。

需要引理：

```ad-lemma

设 $g\in L^{1}$，存在 $C>0s. t.|\int fg \, dm| \leq C\|f\|_{p}, \forall f\in L^{\infty}$，则 $g\in L^{q},\|g\|\leq C$
```

只证明 $m(\Omega)<+\infty$ 的情形 


下面证 3：对 $\forall \Lambda\in (L^{p})^{*}$，
1. 首先对示性函数 $\chi_{E}$，记 $\nu (E)= \Lambda (\chi_{E}), E\in \Omega$，验证可数可加性说明 $\nu$ 是测度 [[Wiki - lebesgue可测]]

有 $m (E)=0\to \Lambda(\chi_{E})=\nu(E)=0$，所以 $\nu$ 关于 m 绝对连续。[[Wiki - R-N导数]]由 R-N 定理，存在唯一的 $g\in L^{1}$，使得 $\nu (E)= \int _{E} g \, dm$。

2. 在 R-N 定理的基础上，可以说明对简单函数成立 $\Lambda (\varphi)= \int \varphi g \, dm$

3. 由 [[Wiki - 简单函数逼近定理]]，说明对任意 $f\in L^{p},\varphi_{n}\to f$，有 $\Lambda (f)= \int fg \, dm$


```ad-attention

对 $p=+\infty$ 只有 $L^{1}$ 到 $(L^{\infty})^{*}$ 的等距嵌入，但不等价
```

证明用到 [[Wiki - hahn-banach定理]]

[[Wiki - 单调收敛定理]]

[[Wiki - 依测度收敛#Pro 3 Riesz 定理]]



