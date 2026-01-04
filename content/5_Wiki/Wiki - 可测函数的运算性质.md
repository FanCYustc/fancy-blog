---
aliases: 
info: 可测函数列，可测函数运算
date: 2024-03-18-星期一 10:41
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
  - 数学分析/级数
  - 数学分析/函数
id: wiki20240318104141
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 可测函数极限

```ad-proposition
title: Propositon 1

```

设 $\{f_{n}(x)\}$ is a series of measurable functions [[Wiki - 可测函数]] on E [[Wiki - 函数项级数]] , 则 $\sup_{n}f_{n}(x),\inf_{n}f_{n}(x),\lim_{ n \to \infty }\sup f_{n}(x),\lim_{ n \to \infty }\inf f_{n}(x)$ 也都可测

特别的若 $\lim_{ n \to \infty }f_{n}(x)=f(x)$ 存在，则 f 可测

### Proof

$\{sup_{n}f_{n}>a\}=\cup_{k=1}^{n}\{f_{k}>a\}$

其他同理

## Pro 2 运算性质

```ad-proposition
title: Propositon 2

$f,g: E\to [-\infty,+\infty]$ 可测, 则 $f^{k},\max (f, g),\min(f,g)$ 均可测,$k>= 1$

若 f, g 是有限值函数，则 $f+g, f\cdot g$ 可测，g 恒不为 0 时 $\frac{f}{g}$ 也可测

```

### Proof

$f+g>a\leftrightarrow g>a-f$，所以 $\exists r\in \mathbb{Q},a-f(x)<r<g(x)$ [[Wiki - 有理数的稠密性]]

证 f+g 可测，因为 $\{f+g>a\}= \cup_{r\in \mathbb{Q}}(\{f>a-r\}\cap \{g>r\})$

有可测集的性质 [[Wiki - lebesgue可测集的性质]]，知 $\{f+g>a\}$ 可测

对 fg, $fg (x)= \frac{1}{4}[(f+g)^{2}-(f-g)^{2}]$

