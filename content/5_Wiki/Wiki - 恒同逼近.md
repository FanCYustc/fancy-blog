---
aliases: 
info: 恒同逼近的定义和应用
date: 2024-05-13-星期一 21:49
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/微分
id: wiki20240513214929
banner: "![[astrowalk.gif]]"
---
---

## Def 1 恒同逼近

```ad-definition
title: Definition 1

如果核 $K_{\delta}(x)$ 满足
$$\begin{aligned}
&(i) \int _{\mathbb{R}^{d}}K_{\delta}(x) \, dx=1\\ 
&(\mathrm{ii})|K_{\delta}(x)|\leq A\delta^{-d}\text{ for all }\delta>0.\\&(\mathrm{iii})|K_{\delta}(x)|\leq \frac{A\delta}{|x|^{d+1}}\forall\delta>0\text{ and }x\in\mathbb{R}^{d}\end{aligned}$$

则称 $K_{\delta}(x)$ 为一个**恒同元逼近**

```

[[Wiki - cesaro和|fejer核]]就是一种恒同逼近

## The 1 恒同逼近定理

```ad-theorem
title: Theorem 1

```
If $\left\{K_{\delta}\right\}_{\delta>0}$ is an approximation to the identity and f is
integrable [[Wiki - lebesgue积分]] on $R^d$, then
$$(f*K_\delta)(x)\to f(x)\quad as\:\delta\to0$$
for every $x$ $in$ the Lebesgue set [[Wiki - 函数的lebesgue集]] $of$ $f.$ 

In particular, $f*K_{\delta}\to f$ a.e.x [[Wiki - 卷积]]


### Proof

证明需要引理：

```ad-lemma

$\textit{ Suppose that f is integrable on }\mathbb{R} ^d, and\textit{that x is a point of}$the Lebesgue set of f.  Let
$$\mathcal{A}(r)=\frac{1}{r^d}\int_{|y|\leq r}|f(x-y)-f(x)|\:dy$$
whenever r>0. Then $\mathcal{A} ( r)$ $is$ $a$ continuous function $of$ $r> 0$, and
$$\mathcal{A}(r)\to0\quad as\:r\to0.$$
$Moreover, \mathcal{A} ( r)$ is bounded, that is, $\mathcal{A} ( r) \leq M$ for some $M> 0$ and all $r>0.$

```

还要用到 lebesgue 积分[[Wiki - lebesgue积分]]平移的连续性：

```ad-lemma
title: Lemma 2

$f_{h}(x)=f(x-h)$，则有 $\mid\mid f_{h}-f\mid\mid_{L^{1}}\to 0,h\to 0$

```


具体见 stein 实分析 3.2 节[[Book - Real Analysis|实分析-stein]]

## Pro1 

```ad-proposition
title: Propositon 1

对恒等元逼近 $K_{\delta},\exists M$，使得 $\mid\mid K_{\delta}\mid\mid_{L^{1}(\mathbb{R}^{d})}<M,\forall\delta$ 

```

[[Wiki - Lp线性空间]]

## The 2 依范数收敛

```ad-theorem
title: Theorem 2

恒等元逼近除了几乎处处收敛，还有对 $f\in L^{1}(\mathbb{R}^{d})$，$\{K_{\delta}\}$ 是恒等元逼近，则 $\lim_{ \delta \to 0^{+} }\mid\mid f*K_{\delta}-f\mid\mid_{1}\to 0$


```

[[Wiki - Lp收敛]]
### Proof

见[[实分析讲义-于树澄.pdf]] 21 节定理 21.1 证明

$$\|g_\delta\|_1=\int|g_\delta(x)|\mathrm{d}x\leq\int\left(\int|f(x-y)-f(x)||K_\delta(y)|\mathrm{d}y\right)\mathrm{d}x.$$

利用 [[Wiki - Tonelli定理]]以及平移变换的连续性 [[Wiki - lebesgue积分的性质#Cal 1 平移变换连续性]]

$\forall\epsilon,\exists\eta$，使得 $\forall|y|\leq \eta$，有 $\mid\mid f_{y}-f\mid\mid_{1}<\epsilon$，所以分段放缩

$$\begin{aligned}
\|g_{\delta}\|_{1}& \leq\int_{|y|\leq\eta}\|f_{y}-f\|_{1}|K_{\delta}(y)|\mathrm{d}y+\int_{|y|>\eta}\|f_{y}-f\|_{1}|K_{\delta}(y)|\mathrm{d}y  \\
&\leq\int_{|y|\leq\eta}\epsilon|K_{\delta}(y)|\mathrm{d}y+\int_{|y|>\eta}\|f_{y}-f\|_{1}\frac{C\delta}{|y|^{d+1}}\mathrm{d}y \\
&\leq\epsilon\|K_\delta\|_1+2C\delta\|f\|_1\int_{|y|>\eta}\frac{\mathrm{d}y}{|y|^{d+1}},
\end{aligned}$$

利用 Pro 1 证明右边趋于 0