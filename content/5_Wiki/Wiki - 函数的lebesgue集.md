---
aliases: 
info: 
date: 2024-05-06-星期一 11:21
update: 
tags:
  - wiki/year2024
  - wiki/month05
id: wiki20240506112131
banner: "![[astrowalk.gif]]"
---
---


## Def 2 lebesgue 点

$f\in L_{loc}^{1}(\mathbb{R}^{d})$ [[Wiki - 局部可积函数]]

```ad-definition
title: Definition 2

，若 $|f(\overline{x})|<+\infty$ 且

$$\lim\limits_{\substack{m(B)\to0},x\in B}\frac{1}{m(B)}\int\limits_{B}|f(y)-f(\overline{x})|dy=0.$$
则称 $\overline{x}$ 为 f 的 **lebesgue 点**，所有 lebesgue 点构成 **lebesgue 集**$L_{f}$

```

## Pro 2 

```ad-proposition
title: Propositon 2

若 $f\in L_{loc}^{1}(\mathbb{R}^{d})$，则 $L_{f}$ 是满测集，即补集零测

```

### Proof

利用 [[Wiki - lebesgue微分定理]]

