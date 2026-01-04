---
aliases: 
info: 矩的定义
date: 2023-11-02-星期四 14:39
update: 2023-11-02-Thursday 14:45:52
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/期望方差
  - 概率论/特征
id: wiki20231102143901
banner: "![[astrowalk.gif]]"
---
---

## Def 1 随机变量的绝对矩

```ad-definition
title: Definition 1

如随机变量 X 的分布为 F，则
$$\mathbf{E}|X|^{r}=\int_{-\infty}^{\infty}|x|^{r}\mathrm{d}F(x).$$
称为 X 的 **r 阶绝对矩**

```
[[Wiki - 数学期望]]

## Def 2 

$L_r$ 空间定义为；

$$
\mathcal{L}_{r}=\{X:\:\operatorname{E}|X|^{r}<\infty\},\quad r>0.
$$

若 $X\in \mathcal{L}_{r}$，称 X 是 **r 次可积的**


## Def 3 原点矩

```ad-definition
title: Definition 3

若 **r 为正整数**，则对 $X\in \mathcal{L}_{r}$，一定有 $EX^{r}$ 存在有限，记

$$
EX^{r}=\int _{-\infty}^{+\infty} X^r \, dF(X) 
$$

为 X 的 **r 阶原点矩**

```

## 其他形式的矩

关于点 c 的 r 阶矩： E $(X-c)^r$ 

关于点 c 的 r 阶绝对矩： E $|X-c|^r$

r 阶中心矩： E $(X-EX)^r$
 
r 阶中心绝对矩： $E|X-EX|^r$


