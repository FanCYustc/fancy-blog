---
aliases:
  - fourier系数
  - 规范正交基
  - 规范正交集
info:
date: 2024-09-30-星期一 14:52
update:
tags:
  - wiki/year2024
  - wiki/month09
  - 几何学/内积空间
  - fourier分析
id: wiki20240930145252
banner: "![[astrowalk.gif]]"
---
---

## Def 1 正交集

对于内积空间 $(X,\langle\cdot, \cdot\rangle)$，如果 $S=\{e_\alpha\}_{\alpha\in\Lambda}\subset X$ 满足

$$e_\alpha\perp e_\beta,\forall\alpha,\beta\in\Lambda,\alpha\neq\beta $$

则称 $S$ 是 $X$ 中的一个**正交集**，如果 $S$ 还满足 $\|e_\alpha\|=1,\forall\alpha\in\Lambda$, 则称之为**规范正交集**简记为 O.N.S。（与[[Wiki - Schmidt 正交化|标准正交基]]对应）

若一个正交集 $S$ 满足 $S^\perp=\{0\}$, 则称 $S$ **完备**。

[[Wiki - 正交补空间]]

## The 1 

任何非平凡的内积空间都一定**有完备的正交集**

### Proof

需要用到 [[Wiki - Zorn引理]] ：$\mathcal{F}=\{X中所有正交集\}$, 则 $(\mathcal{F}, \subset)$ 是偏序集，对 $\mathcal{F}$ 上任一全序子集 $\mathcal{J}$，令 $P= \bigcup_{A\in \mathcal{J}}A$，则 P 为 $\mathcal{J}$ 的上界，所以 $\mathcal{F}$ 有极大元 S，S 就是完备正交集

## Def 2 正交基

$(X,\langle\cdot,\cdot\rangle)$  是内积空间 [[Wiki - 内积空间]]，$S=\{e_\alpha\}_{\alpha\in\Lambda}$ 是规范正交集 O.N.S. 如果 $\forall x\in X$  均可表示为 $x=\sum_{\alpha\in\Lambda}\langle x, e_{\alpha}\rangle \cdot e_{\alpha}$, 则称 S 是 X 的一个**规范正交基**, 简称 O.N.B. 其中的 $\{\langle x, e_\alpha\rangle\}$  称为 x 的 **Fourier 系数。**

```ad-caution

这里必须$\{\langle x, e_{\alpha}\rangle \}$至多有可数个非零
```

令 $I_{n}= \left\{ \alpha\in \Lambda: \langle x, e_{\alpha} \rangle> \frac{1}{n} \right\}$，则可以证明 $\#I_{n}<\infty$。否则 $\exists n_{0}, \#I_{n}=\infty$，

取 N 充分大使得 $\frac{N}{n_{0}^{2}}> \|x\|^{2}$，任取 $\alpha_{1},\dots,\alpha_{N}\in I_{n_{0}}$，有 $\sum_{k=1}^{N} |\langle x, e_{\alpha_{k}}\rangle|^{2}> \|x\|^{2}$，与 [[Wiki - Bessel不等式]]有限个基的情况矛盾。
## The 2 

任何非平凡的 hilbert 空间 [[Wiki - Hilbert空间]] 一定有 ONB

### Proof

利用 [[Wiki - Parseval等式]] 的推论
