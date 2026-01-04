---
aliases: 
info: 线性映射的秩
date: 2023-11-13-星期一 09:25
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/线性映射
id: wiki20231113092521
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 线性映射的矩阵表示相抵

```ad-proposition
title: Propositon 1

设 $\mathscr{A}U\to V$ 是线性映射. 则 $\mathscr{A}$ 在 $U$ 的不同基和 $V$ 的不同基的矩阵全体构成 $F^{m\times n}$ 的相抵等价类.

```

[[Wiki - 线性映射与矩阵]]

[[Wiki - 矩阵相抵]]

### proof

设 $(\alpha_1,\cdots,\alpha_n)$ 和 $(\alpha_1^{\prime},\cdots,\alpha_n^{\prime})$ 是 $U$ 的两组基，设 ($\beta_1,\cdots,\beta_m)$ 和 ($\beta_1^{\prime},\cdots,\beta_m^{\prime})$ 是 $U$ 的两组基. 则存在 $n$ 阶可逆阵 $P$ 与 $m$ 阶可逆阵 $Q$, 使得

$$
\begin{aligned}(\alpha_{1}^{\prime},\cdots,\alpha_{n}^{\prime})=(\alpha_{1},\cdots,\alpha_{n})P,\quad(\beta_{1}^{\prime},\cdots,\beta_{m}^{\prime})=(\beta_{1},\cdots,\beta_{m})Q.\end{aligned}
$$

设 $\mathscr{A}U\to V$ 是线性映射，在基 $(\alpha_1,\cdots,\alpha_n)$ 和 $(\beta_1,\cdots,\beta_m)$ 下的矩阵是 $A$, 在基 $(\alpha_1^{\prime},\cdots,\alpha_n^{\prime})$ 和 $(\beta_1^\prime,\cdots,\beta_m^\prime)$ 下的矩阵是 $A^{\prime}$, 即

$$
\mathscr{A}(\alpha_{1},\cdots,\alpha_{n})=(\beta_{1},\cdots,\beta_{m})A,\quad\mathscr{A}(\alpha_{1}^{\prime},\cdots,\alpha_{n}^{\prime})=(\beta_{1}^{\prime},\cdots,\beta_{m}^{\prime})A^{\prime}.
$$

故得

$$
\mathscr{A}(\alpha_{1}^{\prime},\cdots,\alpha_{n}^{\prime})=\mathscr{A}(\alpha_{1},\cdots,\alpha_{n})P=(\beta_{1},\cdots,\beta_{m})AP=(\beta_{1}^{\prime},\cdots,\beta_{m}^{\prime})Q^{-1}AP.
$$

这就说明 $A^{\prime}=Q^{-1}AP$, 即两者相抵. 

## def 1 线性映射的秩
```ad-definition
title: Definition 1


$$
ramk(\mathcal{A})=rankA
$$

称为线性映射的秩

```

[[Wiki - 矩阵的秩]]

等于 $\dim range \mathcal{A}$ [[Wiki - 线性映射基本定理#Def 2 range]]

