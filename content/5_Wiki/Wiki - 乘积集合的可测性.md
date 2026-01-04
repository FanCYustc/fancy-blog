---
aliases: 
info: 
date: 2024-06-10-星期一 20:57
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/测度论
id: wiki20240610205736
banner: "![[astrowalk.gif]]"
---
---

## Def  1 乘积集合

```ad-definition
title: Definition 1

设 $E_1\subset\mathbb{R}^{d_1},E_2\subset\mathbb{R}^{d_2}$. 集合 $E=E_1\times E_2\subset\mathbb{R}^d$ 称为 $E_1$ 与 $E_2$的乘积集合.

```

## Pro 1 可测性

```ad-proposition
title: Propositon 1

设 $E = E_{1}\times E_{2}$ 可测，且 $m_{*}^{d_{2}}(E_{2})>0$，则 $E_{1}$ 可测 

```

[[Wiki - lebesgue可测]]
### Proof

Fubini 定理 [[Wiki - Fubini定理]]的推论

除零测集 $F$ 外，$E^{y}$ 可测，又因为当 $y\in E_{2}$ 时，$E^{y}=E_{1}$，则只需证 $F^{c}\cap E_{2}\neq \emptyset$

利用 $m_{*}^{d_{2}}(E_{2}) = m_{*}^{d_{2}}(E_{2}\cap F)+m_{*}^{d_{2}}(E_{2}\cap F^{c})>0$ [[Wiki - 集合的外测度|caratheodory条件]]即证

## Pro 2

```ad-proposition
title: Propositon 2

$E=E_{1}\times E_{2}$，则 $m_{*}(E)\leq m_{*}^{d_{1}}(E_{1})\times m_{*}^{d_{2}}(E_{2})$，当右边有一个为 0 则为 0.

```
[[Wiki - lebesgue外测度]]

### Proof

见[[实分析讲义-于树澄.pdf]] 讲义 17 讲引理 17.5 证明，直接由外测度定义利用方体覆盖证明

## Pro 3

```ad-proposition
title: Propositon 3

当 $E_{1},E_{2}$ 均可测时，$E =E_{1}\times E_{2}$ 也可测，且 $m (E)=m^{d_{1}}(E_{1})\times m^{d_{2}}(E_{2})$


```

[[Wiki - lebesgue可测]]

### Proof

拆分 $E_{1}=G_{1} / Z_{1}$，$E_{2} = G_{2} / Z_{2}$，其中 G 为 $G_{\delta}$ 集 [[Wiki - lebesgue可测集的性质#Cal 1]]，Z 零测

证明 $G_{1}\times G_{2}$ 为 $G_{\delta}$ 集，$Z=E_{1}\times E_{2} / G$ 零测

