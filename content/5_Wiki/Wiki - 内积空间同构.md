---
aliases: 
info: 
date: 2024-10-14-星期一 14:22
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析
  - 几何学/内积空间
id: wiki20241014142205
banner: "![[astrowalk.gif]]"
---
---

## Def 1 内积空间同构

$(X_1,\langle\cdot,\cdot\rangle_1)$ 和 $(X_2,\langle\cdot,\cdot\rangle_2)$ 是内积空间[[Wiki - 内积空间]]，如果存在线性同构 $T: X_1\to X_2$ 使得
$$\left\langle T(x),T(y)\right\rangle_2=\left\langle x,y\right\rangle_1,\forall x,y\in X_1$$
则称 $X_1$ 和 $X_2$ 作为内积空间同构，记为 $X_1\cong X_2.$

与 [[Wiki - 等距映射与等距同构]]一致，要求保持某种结构不变

[[Wiki - 欧式空间同构]]是一种特殊情况。

## The 1 hilbert 空间同构

$$\begin{aligned}&1. n\text{ 维 Hilbert 空间}\cong\mathbb{K}^n.\\&2.\text{ 无穷维可分 Hilbert 空间}\cong\ell^2.\end{aligned}$$

[[Wiki - Hilbert空间]]，其中 $\mathbb{K} =\mathbb{R}或\mathbb{C}$。

$l^{2}$ 见 [[Wiki - 平方可积#离散形式]]

只讨论无穷维可分，基于 ![[Wiki - Hilbert空间#The 1 可分性]]
### Proof

仅证 2：对无穷维可分 hilbert 空间，定义 $T: H\to l^{2}, x\to \{\langle x,e_{n}\rangle\}_{n=1}^{\infty}$，其中、$e_{n}$ 是 H 的 ONB [[Wiki - 内积空间的正交基]]

逐一验证线性性、等距性、单射、满射、保内积

