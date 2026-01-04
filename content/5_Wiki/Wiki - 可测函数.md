---
aliases: 
info: 可测函数的等价定义
date: 2024-03-18-星期一 09:56
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
  - 数学分析/函数
id: wiki20240318095631
banner: "![[astrowalk.gif]]"
---
---

## Def 1 函数可测

```ad-definition
title: Definition 1

定义在可测集 $E\in \mathbb{R}^{d}$ 上的函数 f，称 f 可测若 $\forall a\in \mathbb{R}$，$f^{-1}([-\infty, a))=\{x\in E: f (x)<a\}=\{f<a\}$ 可测

可以推出的等价定义：对任意 a，
-  $\{f>a\}$ 可测
- $\{f\leq a\}$ 可测
- $\{f\geq a\}$ 可测

```

[[Wiki - lebesgue可测]]

### Proof

证明等价性：

$\{f\leq a\}=\cap_{k=1}^{\infty}\left\{ f<a+\frac{1}{k} \right\}$

$\{f>a\}=E-\{f\leq a\}$

$\{f\geq a\}=\cap_{k=1}^{\infty}\left\{ f>a-\frac{1}{k} \right\}$

## Pro 1 等价定义

```ad-definition
title: Definition 2

E 上函数 f 可测等价于 $f(+\infty),f(-\infty)$ 可测，且对于任意 $a<b$，$\{a<f<b\}$ 可测

```

其中 $f (+\infty)= \cap_{k=1}^{\infty}\{f>k\}$, $f(-\infty)$ 定义同理


## Def 2 有限值函数可测

若 f 是有限值函数 [[Scientech - 实分析-lebesgue测度#^c91b2d]]，下列命题等价：
```ad-definition
title: Definition 2



1. 函数 f 可测
2. For every open set $O\subset \mathbb{R}$, $f^{-1}(O)$ is measurable
3. For every closed set $F\subset \mathbb{R}$, $f^{-1}(F)$ is measurable
4. For all Borel set $G \subset \mathbb{R}$, $f^{-1}(G)$ is measurable


```

[[Wiki - 实数域的开集闭集]]

