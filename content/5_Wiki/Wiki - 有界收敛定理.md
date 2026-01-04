---
aliases: 
info: 
date: 2024-04-08-星期一 17:01
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 收敛
  - 实分析/lebesgue积分
id: wiki20240408170130
banner: "![[astrowalk.gif]]"
---
---

## The 1 有界收敛定理

```ad-theorem
title: Theorem 1

BCT:设 $E\subset\mathbb{R}^d$ 可测，$\{f_k\}_{k=1}^{\infty}$ 是 $E$ 上的一列可测函数且 $f_k$ 几乎逐点收敛到某个 $E$ 上函数 $f$. 若 $m(E)<\infty$ 且 $\{f_k\}_{k=1}^{\infty}$ 在 $E$ 上一致有界，即存在 $M>0$ 使得对任意 $k\geq1$ 有 $|f_k|\leq M$, 则
$$\lim\limits_{k\to\infty}\int_E|f_k-f|\:dx=0.$$
特别的，
$$\lim_{k\to\infty}\int_Ef_k\:dx=\int_Ef\:dx.$$


```

[[Wiki - lebesgue积分]]

### Proof

为 [[Wiki - Lebesgue控制收敛定理]] DCT的推论

