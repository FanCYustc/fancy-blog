---
aliases: 
info: 复合映射的微分
date: 2023-11-28-星期二 11:15
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 数学分析/微分
id: wiki20231128111547
banner: "![[astrowalk.gif]]"
---
---

## The 1 复合映射微分

```ad-theorem
title: Theorem 1
```
如果 $f$ 在一点 $x\in M$ 可微，$g$ 在点 $f(x)\in N$ 可微，则复合映射 $g\circ f$ 在点 $x$ 可微，且它们的微分映射[[Wiki - 映射的微分]]满足

$$
\mathrm{d}(g\circ f)_x=\mathrm{d}g_{f(x)}\circ\mathrm{d}f_x,
$$

上式称为复合映射微分的链式法则[[Wiki - 一阶微分不变性]]. 复合映射 $g\circ f$ 的 $Jacobi$ 矩阵与 $g$ 和 $f$ 的 $Jacobi$ 矩阵 [[Wiki - 雅各比矩阵]]满足：

$$
J(g\circ f)(x)=Jg(f(x))Jf(x)
$$



[[Wiki - 复合函数的微分]]

### Proof

见数学分析 B3 教材[[Book - 数学分析B3|数学分析B3中科大教材]]

