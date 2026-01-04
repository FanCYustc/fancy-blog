---
aliases:
  - Riesz定理
info: 
date: 2024-04-22-星期一 20:10
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/lebesgue积分
  - 收敛
id: wiki20240422201007
banner: "![[astrowalk.gif]]"
---
---

## Def 1 依测度收敛

```ad-definition
title: Definition 1

设 $f,f_{n}$ 为 E 上的可测函数 ，$\forall \epsilon$，有 $\lim_{ n \to \infty }m (\{|f_{n}-f|\geq \epsilon\}) =0$，称为 $f_{n}$ 依测度收敛到 f，记为 $f_{n}\xrightarrow{m}f$

```
[[Wiki - 可测函数]]

[[Wiki - 依概率收敛]]为特殊情况

## Pro 1 

```ad-proposition
title: Propositon 1

$1\leq p<\infty, f, f_{n}\in L^{p}(E)$，若 $f_{n}\xrightarrow{L^{p}}f$，则 $f_{n}\xrightarrow{m}f$
```

[[Wiki - Lp收敛]]



特殊情况为 [[Wiki - 平均收敛#Pro1 一定有依概率收敛]]

### Proof

$$\begin{gathered}
\|f_n-f\|_p^p =\int_{E}|f_{n}-f|^{p}\mathrm{d}x\geq\int_{E_{n}(\epsilon)}|f_{n}-f|^{p}\mathrm{d}x \\
\geq\int_{E_n(\epsilon)}\epsilon^p\mathrm{d}x=\epsilon^pm(E_n(\epsilon)). 
\end{gathered}$$

其中 $E_{n}(\epsilon)=\{|f_{n}-f|\geq \epsilon\}$

## Pro 2 

```ad-proposition
title: Propositon 2

设$m(E)<\infty$，$f,f_n$在E上可测且几乎处处有限，则几乎处处收敛 $f_{n}\to \forall a.e.x\in E$ 一定推出 $f_{n}\xrightarrow{m}f$


```

[[Wiki - 可测函数]]

在概率论中也是 [[Wiki - 几乎处处收敛#Pro 1 蕴含依概率收敛]]

### Proof

$\{f_{n} \not\to f\}=\cup_{\epsilon}\lim_{ n \to \infty }\sup E_{n}(\epsilon)$，[[Wiki - 上下极限事件]]其中 $E_{n}(\epsilon)$ 定义同上

所以有 $\lim_{ k \to \infty }m (\cup_{n\geq k}E_{n}(\epsilon)) = m (\lim_{ n \to \infty }\sup E_{n}(\epsilon))=0$

从而 $\lim_{ k \to \infty }m(E_{k}(\epsilon))=0$

## Pro 3 Riesz 定理

```ad-proposition
title: Propositon 3

设 $f,f_n(n=1,2,\cdots)$ 在 $E$ 上可测且几乎处处有限. 若
$f_{n}\xrightarrow{m}f$, 则存在子列 $\{n_k\}$ 使得 $f_{n_k}\to f,a.e.\:x\in E$

```

特殊情况为 ![[Wiki - 依概率收敛#Pro 1 Riesz 定理]]

### Proof

证明见于树澄讲义[[实分析讲义-于树澄.pdf]] 第 14 节定理 14.6 证明

取实数列 $\{b_{k}\}\to 0$，所以对每个 $b_{k},\exists n_{k}, m (E_{n_{k}}(b_{k}))< \frac{1}{2^{k}}$

所以 $\sum_{k=1}^{\infty}m(E_{n_{k}}(b_{k}))<\infty$，由 [[Wiki - Borel-Cantelli引理]]，有 $m(\lim\sup_{ k \to \infty }E_{n_{k}}(b_{k}))=0$

因为 $\forall \epsilon>0$ k 充分大时有 $\epsilon>b_{k}$，所以 $\lim \sup_{ k \to \infty }E_{n_{k}}(\epsilon)\subset \lim \sup_{ k \to \infty }E_{n_{k}}(b_{k})$

