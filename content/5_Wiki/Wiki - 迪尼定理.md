---
aliases: dini theorem
info: dini定理
date: 2023-08-19-星期六 11:44
update:
tags:
  - wiki/year2023
  - wiki/month08
id: wiki20230819114406
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## The 1 迪尼定理

```ad-theorem
title: Theorem 1

设 ${f_{n}}$ 是紧集 [[Wiki - 紧致集合]] D 上的连续函数列，并且对每一个 $x\in D$, 数 $\text{列}\{f_{n}(x)\}$ 当 $n\to \infty$ 时都**单调递减地收敛于连续函数 f**，那么 $f_{n}$ 在 D 上一致收敛 [[Wiki - 一致收敛]]于 f

```

等价表述：
设级数 $\sum u_{n}(x)$ 的每一项 [[Wiki - 函数项级数]]在紧集 D 上连续[[Wiki - 函数的连续性]]且非负，如果它的和函数 $S (x)$ 亦在 D 上连续，那么该级数在 D 上一致收敛

### Proof

用 $f_{n}-f$ 代替 $f_{n}$，即证 $f_{n}$ 一致收敛到 0

即证 $a_{n}=\sup_{x\in D}\{f_{n}(x)\}\to 0$



