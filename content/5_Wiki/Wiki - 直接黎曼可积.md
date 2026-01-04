---
aliases: 
info: 直接黎曼可积的定义
date: 2024-04-16-星期二 16:47
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数学分析/积分
id: wiki20240416164703
banner: "![[astrowalk.gif]]"
---
---

## Def 1 直接黎曼可积


```ad-definition
title: Definition 1

Function $h:\mathbb{R}^{+}\to \mathbb{R}$ $\sum_{n=1}^\infty\underline{m}_n (a)$ 存在有限, 且
$$
\lim_{a\to0}a\sum_{n=1}^\infty\overline{m}_n(a)=\lim_{a\to0}a\sum_{n=1}^\infty\underline{m}_n(a)
$$

其中 
$\overline{m}_n (a) =\sup\{h (t),~(n-1) a\leq t\leq na\}$，$\underline{m}_n (a)=\inf\{h (t),\mathrm{~}(n-1) a\leq t\leq na\}$

则称为直接 Riemann 可积函数


```

对比： [[Wiki - Riemann积分的可积性判断]]

## Pro 1 

```ad-proposition
title: Propositon 1

一个直接 Riemann 可积的充分条件：$h(t)\geq 0$，h 单调递减，且 $\int _{0}^{+\infty} h (x)\, dx<\infty$



```
