---
aliases: 
info: 
date: 2024-03-14-星期四 16:34
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
id: wiki20240314163438
banner: "![[astrowalk.gif]]"
---
---

## Pro 1

由 [[Wiki - lebesgue可测#Pro 1 可测集的性质]]，

```ad-proposition
title: Propositon 1

$\mathscr{L}=\{全体可测集\}$ 是一个 $\sigma-$ 代数

且 borel 集 B **真包含**于 $\mathscr{L}$，（零测集很复杂，不是borel集）。事实上 $\mathscr{L}=B+ \{零测集\}$所生成的$\sigma-$代数

```

## Cal 1 

E 可测当且仅当$\exists E\subset G_{\sigma}$，$G_{\sigma}$ 是 borel 集[[Wiki - σ-代数]]， s.t. $m_{*}(G_{\sigma} / E)=0$
$\exists F_{\sigma}\subset E$，$F_{\sigma}$ 是 borel 集，$m_{*}(E / F_{\sigma})=0$

## Pro 2 可数可加性

```ad-proposition
title: Propositon 2

若 $\{E_{j}\}$ 可测且互不相交，$E=\cup E_{j}$，则
$$
m(E)=\sum m(E_{j})
$$


```

### Proof

参考之前 [[Wiki - lebesgue外测度#Pro 1]] 的可数可加性

对可测集 $E_{j},\exists F_{j}\subset E_{j}$，$F_{j}$ 为闭集，$m_{*}\left ( E_{j} / F_{j} \right)\leq \frac{\epsilon}{2^{j}}$ 与 [[Wiki - lebesgue可测]]定义等价

先证有界可测集

## Cal 1 单调集列的测度连续性

设 $\{E_{j}\}$ 为一列可测集

1、若 $E_{j}$ 单调增，$E= \cup_{j=1}^{\infty} E_{j}$，则 $m(E)=\lim_{ n \to \infty }m(E_{n})$

2、若 $E_{j}$ 单调减，$E= \cap_{j=1}^{\infty}E_{j},\exists k,m_{*}(E_{k})<\infty$，则 $m(E)=\lim_{ n \to \infty }m(E_{n})$

```ad-note

**2 中 $m_{*}(E_{k})<+\infty$ 是必须的**

```


## Pro 3

```ad-proposition
title: Propositon 3

假定 $E$ 是 R $^{d}$ 的可测子集，则对每个 $\varepsilon>0:$

(i) 存在一个开集 O 满足 $E\subset O$ 且 $m(O-E)<\varepsilon$;

(ii) 存在一个闭集 $F$ 满足 $F\subset E$ 且 $m(E-F)\leq\varepsilon$ ; 

(iii) 若 $m(E)$ 有限，存在一个紧集 $K$ 满足 $K\subset E$ 且 $m(E-K)<\varepsilon;$

 (iv) 若 $m(E)$ 有限、存在一个**有限闭方体的并集** $F=\bigcup_{i=1}^NQ_j$ 满足 $m (E\Delta F)\leq \epsilon$

```

可以作为可数可加性的推论

### Proof

由无限到有限，利用收敛性取 N，分两部分处理

**(iv) 可以印证 [[Scientech - 实分析-lebesgue测度#^4648f4]] 三原则中的第一个**

