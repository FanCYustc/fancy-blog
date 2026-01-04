---
aliases: 
info: 
date: 2024-06-10-星期一 21:30
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/lebesgue积分
id: wiki20240610213028
banner: "![[astrowalk.gif]]"
---
---

## The 1 


```ad-theorem
title: Theorem 1

```
设 $f$ 为 $\mathbb{R}^d$ 上**非负函数**. 令
$$\mathcal{A}:=\{(x,y)\in\mathbb{R}^d\times\mathbb{R}:0\leq y\leq f(x)\}.$$

则

$( i)$ $f$ 可测当且仅当 $\mathcal{A}\subset\mathbb{R}^{d+1}$ 可测[[Wiki - lebesgue可测]].

$(ii)$ 若 $f$ 可测[[Wiki - 可测函数]]，则
$$m^{d+1}(\mathcal{A})=\int_{\mathbb{R}^d}f(x)\:dx.$$


### Proof

利用 [[Wiki - Fubini定理]]证明。需要简单的一个引理：

```ad-lemma

若 f 在 $\mathbb{R}^{d_{1}}$ 上可测，则 $\hat{f}:\mathbb{R}^{d_{1}}\times \mathbb{R}^{d_{2}}\to \mathbb{R},\hat{f}(x,y)=f(x)$ 在 $\mathbb{R}^{d}$ 上可测

```


## Cal 1

设 f 为 $\mathbb{R}^{d}$ 上可测函数，则 $\hat{f}:\mathbb{R}^{d}\times \mathbb{R}^{d}\to \mathbb{R},\hat{f}(x,y)=f(x-y)$ 可测

在卷积[[Wiki - 卷积]]中常用到