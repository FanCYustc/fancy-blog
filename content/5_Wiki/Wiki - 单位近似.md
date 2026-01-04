---
aliases:
info: 单位近似的定义和用途
date: 2023-10-24-星期二 10:20
update:
tags:
  - wiki/year2023
  - wiki/month10
  - 数学分析/函数
id: wiki20231024102004
banner: "![[astrowalk.gif]]"
---
---

## Def 1 单位近似

```ad-definition
title: Definition 1


$\mathbb{R}$ 上一列连续函数 $\{g_{n}\}$ 称为一个单位近似如果满足：

1. $g_{n}(x)\geq 0$
2. $\int _{\mathbb{R}} g_{n}(x) \, dx=1$
3. $\forall\delta,\lim_{ n \to \infty }\int _{\mid x\mid>\delta} g_{n}(x)\, dx=0$



```

## lemma1 单位近似引理

```ad-lemma
title: Lemma 1


 $\mathbb{R}$上连续函数f满足，在一有限区间外为0，如果 $\{g_n\}$ 为单位近似，那么 $f*g_n$ 一致收敛于 $f.$ 

```

[[Wiki - 函数的连续性]]

很像 [[Wiki - 多项式的卷积不变性]]

与 [[Wiki - 恒同逼近]]很有关联。

