---
aliases:
  - 事件sigma域
info: 
date: 2023-10-08-星期日 20:22
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机事件
  - 实分析/测度论
id: wiki20231008202249
banner: "![[astrowalk.gif]]"
---
---

## Def 1 事件 $\sigma$ 域

```ad-definition
title: Definition 1

将样本空间 Ω 的一些子集所构成的类 $\mathscr{F}$ 叫做事件 $\sigma$ 域, 如果它满足如下三条规定:

$(1)\:\Omega\in\mathscr{F};$ 

(2) 只要 $E\in\mathscr{F}$, 就有 $E^{\mathrm{c}}\in\mathscr{F};$

(3) 只要 $\{E_n,\:n\in\mathbb{N}\}\subset\mathscr{F}$, 就有 $\cup_{n=1}^{\infty} E_n\in\mathscr{F}.$



```

## Pro 1

```ad-proposition
title: Propositon 1

设 Ω 为样本空间, 如果 $\mathscr{F}$ 是其中的事件 $\sigma$ 域, 则一定有

$1^{\circ} 空集\in\mathscr{F};$ 

$2^{\circ}$ 如果 $\{E_n,\:n\in\mathbb{N}\}\subset\mathscr{F}$, 那么 $\bigcap_{n=1}^{\infty}E_{n}\in\mathscr{F};$

$3^{\circ}$ 如果 $\{E_n,~n=1,\cdots,m\}\subset\mathscr{F},$ 那么 $\bigcap_{n=1}^mE_n\in\mathscr{F}$ 且 $\bigcup_{n=1}^{m}E_n\in\mathscr{F};$ 

4°如果 $E_1,E_2\in\mathscr{F},$ 那么 $E_1-E_2\in\mathscr{F}.$


```

事件域是一个 $\sigma$ -代数[[Wiki - σ-代数]]