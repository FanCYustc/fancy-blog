---
aliases: 
info: 
date: 2024-12-11-星期三 10:10
update: 
tags: [wiki/year2024,wiki/month12]
id: wiki20241211101055
banner: "![[astrowalk.gif]]"
---
---
## Def 1 全连续

对于 banach 空间 X, Y，$A\in \mathcal{L}(X,Y)$，如果 A 把 X 的每个弱收敛 [[Wiki - 弱收敛]]列映成 Y 的强收敛，则称 A 全连续

## Pro 1

对于 $A\in \mathcal{L}(X,Y)$，则 A 是紧算子 [[Wiki - 紧算子]]可以推到 A 是全连续的

特别的，当 X 是自反空间时 [[Wiki - 自反空间]]，紧算子 $\leftrightarrow$ 全连续

### proof

对于 1, 假设 $A$ 紧而不全连续，即存在 $x_n\overset{w}{\operatorname*{\to}}x_0$ 但 $||Ax_n-Ax_0||\nrightarrow0$ : 存在 $\varepsilon_0>0$, 存在子列 $\{x_{n_{k}}\}_{k=1}^{\infty}$ 使得 $\|Ax_{n_{k}}-A{x_{0}}\|\geqslant\varepsilon_0$。

那么 $x_{n_{k}}\overset{w}{\operatorname*{\to}}x_{0}$, 由 UBP [[Wiki - 一致有界定理]] 知 $\{x_{n_{k}}\}_{k=1}^{\infty}$ 有界，$A$ 紧所以 $\{Ax_{n_{k}}\}_{k=1}^{\infty}$ 有收敛子列，不妨设 $Ax_{n_{k}}\to y$

另一方面，$\forall f\in Y^*$,
$$f(Ax_{n_k}-Ax_0)=(A^*f)(x_{n_k}-x_0)\to0$$
[[Wiki - 对偶算子]]

则 $Ax_{n_k}\overset{w}{\operatorname*{\to}}Ax_0\Rightarrow Ax_0=y\Rightarrow||Ax_{n_k}-Ax_0||\to0$, 矛盾。

对于 2，设 $\{x_n\}$ 有界，由 [[Wiki - 弱列紧#The 1 eberlein-smulian 定理]], $X$ 自反 $\Rightarrow$ 有子列 $x_{n_{k}}\overset{w}{\operatorname*{\to}}x_{0}, A$ 全连续 $\Rightarrow\|Ax_{n_{k}}-Ax_{0}||\to 0$。

