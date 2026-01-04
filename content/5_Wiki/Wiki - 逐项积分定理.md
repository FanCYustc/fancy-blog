---
aliases: 
info: 
date: 2024-04-15-星期一 16:02
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/lebesgue积分
id: wiki20240415160208
banner: "![[astrowalk.gif]]"
---
---

## The 1 逐项积分定理

```ad-theorem
title: Theorem 1

设 $\{a_k\}_{k=1}^{\infty}$ 在可测集 $E$ 上**非负可测**. 则

$$
\int_E\sum_{k=1}^\infty a_k(x)\:dx=\sum_{k=1}^\infty\int_Ea_k(x)\:dx.
$$

若
$$
\sum_{k=1}^{\infty}\int_{E}a_{k}(x)\:dx<\infty,\:\text{则}\sum_{k=1}^{\infty}a_{k}(x)<\infty,\:a.e.\:x\in\mathbb{R}^{d}.
$$


```

### Proof

用 [[Wiki - 单调收敛定理]]证明

