---
aliases: 
info: 复线性空间上内积的定义
date: 2023-12-25-星期一 08:44
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/酉空间
  - 几何学/内积空间
id: wiki20231225084445
banner: "![[astrowalk.gif]]"
---
---

## Def 1 复空间的内积

```ad-definition
title: Definition 1

V 是 $\mathbb{C}^{n}$ 上的线性空间，定义内积 $(\cdot,\cdot):V\times V\to \mathbb{C}$，满足

1. 共轭对称：$\overline{(\alpha,\beta)}=(\beta,\alpha)$
2. 共轭线性性：$$(\lambda\alpha+\mu\beta,\gamma)=\lambda(\alpha,\gamma)+\mu(\beta,\gamma),(\alpha,\lambda\beta+\mu\gamma)=\overline{\lambda}(\alpha,\beta)+\overline{\mu}(\alpha,\gamma)$$
3. 正定性：$(\alpha,\alpha)\geq 0$，当且仅当 $\alpha=0$ 时取 0

```

对比 [[Wiki - 内积]]

只有这样定义才能自洽，且有线性的性质。

## Def 2 酉空间

```ad-definition
title: Definition 1

定义了上述内积的复线性空间为酉空间

```

对比 [[Wiki - 欧几里得空间]]

## Pro 1 cauchy 不等式

```ad-proposition
title: Propositon 1

在酉空间中，有
$$
|(\alpha,\beta)|^{2}\leq(\alpha,\alpha)(\beta,\beta)
$$


```

这里与 [[Wiki - Cauchy-Schwarz不等式]]不同的是要取模

