---
aliases: 
info: MCT
date: 2024-04-01-星期一 10:05
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/lebesgue积分
  - 收敛
id: wiki20240401100536
banner: "![[astrowalk.gif]]"
---
---

## The 2 单调收敛定理

```ad-theorem
title: Theorem 1

E 可测，$\{f_{k}\},f$ is measurable in E 且非负, if $f_{n}$ 单调递增收敛到 f，则
$$
\int _{E}f \, dx= \lim_{ n \to \infty }\int _{E}f_{n} \, dx   
$$

即**积分的极限等于极限的积分**

```

[[Wiki - 函数项级数一致收敛的性质]]

[[Wiki - lebesgue积分]]

### Proof

可以由 [[Wiki - fatou引理]]证明

---

## The 2 随机变量形式

```ad-theorem
title: Theorem 1

设 $X_n\geqslant0$ 且 $X_n$ 单调递增几乎处处收敛于 X, 则必 $\mathbb{E}X_n\to\mathbb{E}X$, 故
(1) 若 $\lim_{n\to\infty}\mathbb{E}X_n<\infty$, 则 $X\in L_1;$ $n\to\infty$
(2) 反之，若 $X\in L_1,$ 则对一切 $n\geqslant 1,$ 都有 $E X_n< \infty.$


```

[[Wiki - 几乎处处收敛]]

[[Wiki - 数学期望]]

[[Wiki - 平均收敛]]


感觉有点像 [[Wiki - 迪尼定理]]？