---
aliases: 
info: 
date: 2024-06-13-星期四 21:20
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613212055
banner: "![[astrowalk.gif]]"
---
---

## Def 1 正常返 

在 markov 链[[Wiki - markov链]]中，且在 j 是常返态 [[Wiki - markov链的常返与滑过]]的基础上

定义 $T_{jj}$ 为从 j 出发首次返回 j 需要的步数，$\mu_{jj}=ET_{jj} =\sum_{n=1}^{\infty}nf_{jj}^{n}$

```ad-definition
title: Definition 1

若 $\mu_{jj}<\infty$ 称 j 是**正常返的**，$\mu_{jj}=\infty$，则称 j 为**零常返的**。
```

特别的 j 是正常返且非周期 [[Wiki - markov链的周期]]，称 j 是**遍历的**



![[Wiki - markov链的常返与滑过#Pro 1]]

## Pro 1 正常返是类性

正常返和零常返都是类性 [[Wiki - markov链的类]]

## Pro 2 极限性质

$$\begin{aligned}
&(\mathrm{i})\mathrm{P}\left(\lim_{n\to\infty}\frac{N_{j}(n)}{n}=\frac{1}{\mu_{jj}}\Big|X_{0}=i\right)=1; \\
&(\mathrm{ii})\lim_{n\to\infty}\frac{1}{n}\sum_{k=1}^{n}P_{ij}^{k}=\frac{1}{\mu_{jj}}; \\
& (\mathrm{iii})\text{若 }j\text{为非周期的,则}\lim_{n\to\infty}P_{ij}^{n}=\frac{1}{\mu_{jj}};  \\
&(\mathrm{iv})\text{ 若 }j\text{ 的周期为 }d\text{,则 }\lim_{n\to\infty}P_{jj}^{nd}=\frac d{\mu_{jj}}
\end{aligned}$$

[[Wiki - markov链的周期]]

### Proof

基本就是

![[Wiki - 基本更新定理#The 3 基本更新定理]]