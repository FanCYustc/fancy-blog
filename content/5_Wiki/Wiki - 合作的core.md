---
aliases: 
info: 
date: 2024-05-31-星期五 08:44
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 博弈论/合作博弈
  - 运筹学/决策论
id: wiki20240531084423
banner: "![[astrowalk.gif]]"
---
---

## Def 1 特征值

在子联盟 S 中最大化的利润称为子联盟的特征值，记为 $V(S)$, 同理最小化成本记为 $c(S)$

## Def 2 core


```ad-definition
title: Definition 1

Let $(\mathcal{A}, c )$ be a TU cost-sharing game. A vector $\boldsymbol{\alpha}\in\mathbb{R}^{\mathcal{A}}$ sometimes called a cost allocation is **in the core of** this game if it satisfies the following two conditions


$$\begin{aligned}
&\bullet\textbf{ Budget balance: }\sum_{j\in\mathcal{A}}\alpha_j=c(\mathcal{A}).\\&\bullet\textbf{ Core property: for every }S\subseteq\mathcal{A},\sum_{j\in\mathcal{S}}\alpha_j\leq c(S).\end{aligned}$$

```


对成本 C 的角度，既要把合作的成本分完，又要让每个人愿意参与合作


## The 1 非空性检验

