---
aliases: 
info: 24春实分析第1章
date: 2024-02-26-星期一 10:58
update: 
tags:
  - scientech/year2024
  - scientech/month02
  - 实分析/测度论
id: scientech20240226105813
banner: "![[astrofishing.gif]]"
---
---

# 第 1 章-测度论

[[Book - Real Analysis#^7972c7]]

## 1.1 准备知识

对于一般 $\mathbb{R}^{d}$ 上定义欧式度量，由开集、闭集、紧集等拓扑结构，参见 [[Scientech - 数学分析-实数理论]]和 [[Scientech - 数学分析-度量空间的连续函数]]

[[Wiki - 开集的结构定理]]对于 $\mathbb{R}^{d}$ 也有开集的结构定理

[[Wiki - σ-代数]]

## 1.2 外测度

我们的期望：

```ad-summary

若 M 是 $\mathbb{R}$ 上的测度，应满足

1. $M([a,b])=b-a$
2. If $E_{1}\subset E_{2}$, $M(E_{1})\leq M(E_{2})$
3. If $E_{i}$ 两两不交，则测度可数可加（可数可加性）
4. $\forall E\subset \mathbb{R}$，则 $M(E+x)=M(E)$ (平移不变性)


```


[[Wiki - lebesgue外测度]]

[[Wiki - 康托集|Cantor集]]

## 1.3 可测集与 lebegue 测度

但 in fact，cannot satisfy at the same time

Solution：考虑了任意集合，那就排除掉一些不好的集合

Def L 为**可测集**，即所有可以定义测度的集合，是一个 $\sigma-$ 代数[[Wiki - σ-代数]]

[[Wiki - lebesgue可测]]

```ad-theorem
title: Theorem 1

Littlewood 三原则：
1. 可测集约等于区间的有限并
2. 可测函数约等于连续函数
3. 函数列收敛约等于一致收敛

这里“约等于”需要更严格地好好理解

```

^4648f4

[[Wiki - lebesgue可测集的性质]]

```ad-note
```
在 lebesgue 理论中，经常会忽略一些零测集

在Jordan测度中[[Wiki - 平面区域的面积]]


可测集都可以表示成borel集和零测集的并或差

```ad-caution

**零测集可能不是Borel集**


```

推论：[[Wiki - Borel-Cantelli引理]]

### lebesgue不可测集

[[Wiki - lebesgue不可测集的构造]]

## 1.4 可测函数

### 可测函数

 首先先说明无穷的处理:
 
F 是可测集 E 上的实值函数。称 f 是广义实值函数若 $-\infty\leq f\leq +\infty$

称为有限值函数若 $-\infty<f<+\infty$ ^c91b2d

[[Wiki - 可测函数]]

[[Wiki - 连续可测函数]]

[[Wiki - 可测函数的运算性质]]

### 逼近定理

下面想用简单函数和阶梯函数，基于可测性在函数级数收敛下比较稳定，用简单的函数逼近**所有可测函数**。

[[Wiki - 简单函数逼近定理]]

[[Wiki - 阶梯函数逼近定理]]

### Littlewood 三原则

[[Wiki - Littlewood三原则]]

