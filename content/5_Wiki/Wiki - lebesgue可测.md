---
aliases: []
info: lebesgue可测的定义和性质
date: 2024-03-05-星期二 19:32
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
id: wiki20240305193244
banner: "![[astrowalk.gif]]"
---
---

## Def 1 lebesgue 可测

与 [[Wiki - 平面区域的面积#Def3 Jordan 可测]]对比

```ad-definition
title: Definition 1

对 $E\in \mathbb{R}^{d}$, $\forall \epsilon>0$, 存在开集 O 满足 $E\subset O, m_{*}(O-E)\leq \epsilon$，就称 E 是 lebesgue 可测的

```

记 $m(E)=m_{*}(E)$ 为 E 的 **lebesgue 测度**


```ad-note
```
**与外测度的外正则性不一样**[[Wiki - lebesgue外测度]]，更加严苛


## Def 2 等价定义

E 可测等价于 $\forall A \in \mathbb{R}^{d}$，$m_{*}(E\cap A)+m_{*}(E^{c}\cap A)=m_{*}(A)$ [[Wiki - 集合的外测度|caratheodory条件]]

## Pro 1 可测集的性质

```ad-proposition
title: Propositon 1

1、开集可测

2、闭集可测

3、外测度为 0 的集可测

4、可数个可测集的并可测

5、可数个可测集的交可测

6、可测集的补集是可测集

7、可测集的差集可测

```
