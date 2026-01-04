---
aliases: 
info: 用简单或阶梯函数逼近可测函数
date: 2024-03-18-星期一 11:16
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
  - 数学分析/函数
  - 收敛
  - 数学分析/级数
id: wiki20240318111601
banner: "![[astrowalk.gif]]"
---
---

## Def 1 简单函数

```ad-definition
title: Definition 1

形如 $\varphi (x)= c_{1} \mathcal{X}_{F_{1}}(x)+\dots+c_{M}\mathcal{X}_{F_{M}}(x)$ 的函数称为**简单函数**，其中 $F_{1},\dots, F_{M}\subset E$ 可测 

特别的，若$F_i$均为矩体，则称$\varphi$为**阶梯函数**、

```

[[Wiki - lebesgue可测]]

## Def 2 简单函数标准形式

$f(x) = \sum_{k=1}^{\infty}a_{k}\chi_{E_{j}}$，其中 $E_{j}$ 为不交，且 $\bigcup_{j=1}^{\infty}E_{j}=E$


## The 1 逼近定理

**针对可测函数的逼近**

```ad-theorem
title: Theorem 1

设 $f$ 是 $\mathbb{R}^d$ 上的**非负可测函数**

1. 则存在一列非负简单函数 $\{\varphi_k\}_{k=1}^\infty$ **单调递增逐点收敛**至 $f\left(\text{记为 }\varphi_k\nearrow f\right)$,
即对任意 $x\in\mathbb{R}^d$, 数列 $\{\varphi_k(x)\}_{k=1}^{\infty}$  单调递增且 $\lim_{k\to\infty} \varphi_k(x)=f(x).$
2. 若 $f$ 有界，则 $\{\varphi_k\}_{k=1}^{\infty}$ 一致收敛到 $f,($ 记为 $\varphi_k\rightrightarrows f).$
```


[[Wiki - 函数项级数|函数项级数逐点收敛]]

### Proof

见[[实分析讲义-于树澄.pdf]] 第 8 节定理 8.6 证明

## The 2 

[[Wiki - 可测函数]]

设 $f$ 是 $\mathbb{R}^d$ 上的可测函数. 则存在一列简单函数 $\{\varphi_k\}_{k=1}^{\infty}$ 逐点收敛
至 $f$ (记为 $\varphi_k\to f$) 且 $|\varphi_k|\nearrow|f|.$

此时只有绝对值有单调性

If we add the condition that f is boundary, then $\{\varphi_{k}\}$ is 一致收敛 [[Wiki - 一致收敛]]


