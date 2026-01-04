---
aliases: 
info: 24春实分析第4章
date: 2024-05-27-星期一 09:46
update: 
tags:
  - scientech/year2024
  - scientech/month05
  - 实分析/测度论
id: scientech20240527094612
banner: "![[astrofishing.gif]]"
---
---

# CH6-抽象测度与积分理论

## 6.1 抽象测度

### 测度空间

[[Wiki - σ-代数]]

Sigma 代数举例： [[Wiki - Borel域]]

[[Wiki - 抽象测度]]

从零测集的角度定义 [[Wiki - 测度的完备性]]以及测度的完备延拓


回忆 lebesgue 测度的定义过程 [[Scientech - 实分析-lebesgue测度#1.3 可测集与 lebegue 测度]]

### 测度的构造

是先定义外测度[[Wiki - lebesgue外测度]]，再取合适的 $\sigma-$ 代数 lebesgue 可测集，使得 $m^{*}|_{L_{\mathbb{R}^{d}}}=m$ 为 lebesgue 测度

[[Wiki - 集合的外测度]]

[[Wiki - 测度延拓定理]]

### 预测度

测度是可以从外测度确定 $\sigma-$ 代数来确定，而外测度可以来源于更朴素的思想，即为**预测度**

[[Wiki - 代数]]将 $\sigma-$ 代数 的可数并封闭改为有限并封闭

[[Wiki - 预测度]]（对比 Riemann 测度和 lebesgue 测度）

[[Wiki - 测度延拓定理]]就实现了从预测度到外测度到测度的构造，可以对比 lebesgue 测度推导来理解

## 6.2 测度的积分

首先先有函数可测的概念，同 ![[Scientech - 实分析-lebesgue测度#可测函数]]

对函数 $f:X\to[-\infty,+\infty]$，如果 $\{f<a\}\in \mathcal{M},\forall a\in \mathbb{R}$，则称 f 可测。[[Wiki - 可测函数]]


积分的定义过程基本同 ![[Scientech - 实分析-lebesgue积分#2.1 lebesgue 积分]]

对简单函数定义为 $f= \sum_{i=1}^{+\infty} a_{i} \mathcal{X}_{E_{i}}, E_{i}\in \mathcal{M},a_{i}\geq 0$

对非负可测函数，利用简单函数逼近定理[[Wiki - 简单函数逼近定理]]

### Fubini 定理

类似 [[Scientech - 实分析-lebesgue积分#2.3 fubini 定理]]

要先研究乘积测度空间 [[Wiki - 乘积测度空间]]

Fubini 定理证明有一些区别，因为在一般测度空间上不能使用开集这种几何概念。

证明还是先从示性函数再到非负简单函数再到非负可测函数再到一般可测函数

