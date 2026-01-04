---
aliases: 
info: 
date: 2024-05-13-星期一 21:14
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/微分
id: wiki20240513211433
banner: "![[astrowalk.gif]]"
---
---

## Def 1 正则收缩

```ad-definition
title: Definition 1

设 $x\in\mathbb{R}^d$. 我们称一族可测集 $\mathcal{F}_x$ **正则收缩**于 $x$ 若
$(i)$ 对任意 $\epsilon>0$, 存在 $U\in\mathcal{F}_x$ 使得 $diam(U)<\epsilon.$
$(ii)$ 存在 $c>0$ 使得对任意 $U\in\mathcal{F}_x$ 存在开球 $B$ 满足 $x\in B,U\subset B$ 且
$$m(U)\geq cm(B).$$


```

用标准的开球来衡量收缩族是不是正则的

```ad-example

e.g. $\{开球B： x\in B\}$，$\{B_{r}(x): r>0\}$ 都是正则收缩于 x 的

但是 $\{开矩体R： x\in R\}$ 不正则收缩

```

## Pro 1 

设 $f\in L_{loc}^{1}(\mathbb{R}^{d})$, [[Wiki - 局部可积函数]] $x\in L_{f}$ [[Wiki - 函数的lebesgue集]]，且可测集合族 $\mathcal{F}_{x}$ 正则收缩到 x

```ad-proposition
title: Propositon 1

则

$$\lim\limits_{\substack{diam(U)\to0\\U\in\mathcal{F}_x}}\frac{1}{m(U)}\int_U|f(y)-f(x)|dy=0.$$



```
