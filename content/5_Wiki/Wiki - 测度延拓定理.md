---
aliases:
  - Caratheodory条件
info:
date: 2024-05-27-星期一 10:19
update:
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/测度论
  - 概率论/概率空间
id: wiki20240527101919
banner: "![[astrowalk.gif]]"
---
---



## The 1 

```ad-theorem
title: Theorem 1
```
$\mu_{0}$ 是代数 $\mathcal{A}$ [[Wiki - 代数]]上的预测度 [[Wiki - 预测度]]，取
$$
\mu^{*}(E) = \inf\{\mu_{0}(\cup_{j}E_{j}): E \subset \cup_{j}E_{j},\{E_{j}\}\in \mathcal{A}\}
$$

$\forall E\subset \mathcal{X}$，则 $\mu^{*}$ 为外测度[[Wiki - 集合的外测度]]，且 $\mu^{*}|_{\mathcal{A}}=\mu_{0}$，代数 $\mathcal{A}$ 中的每个集合都是 $\mu^{*}$ 可测的



### Proof

对性质 2，即证 $\mu^{*}(E)\geq \mu_{0}(E), E\in \mathcal{A}$

对性质 3，任取 $E\in \mathcal{A}$，证 $\mu^{*}(A)\geq\mu^{*}(E\cap A)+\mu^{*}(E^{c}\cap A), A\subset \mathcal{X}$ [[Wiki - 集合的外测度#Def 1 caratheodory 条件]]

证明见于树澄实分析讲义 27 讲[[实分析讲义-于树澄.pdf]]


## The 2

```ad-theorem
title: Theorem 2
```
$\mu^{*}$ 是 X 上的一个外测度，令 $\mathcal{M}=\{E\subset X: E满足\mu^{*}-可测\}$，则 $\mathcal{M}$ 是一个 $\sigma-$ 代数 [[Wiki - σ-代数]]，且 $\mu =\mu^{*}|_{\mathcal{M}}$ 是 $\mathcal{M}$ 上的完备测度 [[Wiki - 抽象测度]]

[[Wiki - 测度的完备性]]


[[Wiki - 集合的外测度#Def 1 caratheodory 条件]]

### Proof

先证明 $\mathcal{M}$ 是一个 $\sigma$ -代数：只需证**对可数并封闭**：

1、先证 $E_{1}, E_{2}\in \mathcal{M}, E_{1}\cup E_{2}\in \mathcal{M}$，就证明了**对有限并封闭**：

$$
\begin{align}
\mu^{*}(A)& =\mu^*(E_{2} \cap A)+\mu^{*}(E_{2}^{c}\cap A) \\
& = \mu^{*}(E_{1} \cap E_{2}\cap A)+\mu^{*}(E_{1}^{c} \cap E_{2}\cap A)+\mu^{*}(E_{1}\cap E_{2}^{c}\cap A)+\mu^{*}(E_{1}^{c}\cap E_{2}^{c}\cap A) \\
&\geq \mu^{*}(E \cap A)+\mu^{*}(E_{1}^{c}\cap E_{2}^{c}\cap A) \\
& \geq \mu^{*}(E\cap A) + \mu^{*}(E^{c}\cap A) 
\end{align}
$$

其中设 $E_{1}\cup E_{2}=E$，再由次可数可加性得另一边

2、再证明对 $E_{1} ,E_{2}$ 不交，有 $\mu^{*}(E_{1}\cup E_{2})=\mu^{*}(E_{1})+\mu^{*}(E_{2})$，满**足测度性质**

取 $A=E_{1}\cup E_{2}$ 即证

3、最后证对可数并封闭：

$G=\cup_{j=1}^{\infty}E_{j}$，令 $F_{k} = E_{k} / \cup_{j=1}^{k-1}E_{j}$，则 $F_{k}$ 两两不交，且 $G=\cup_{j=1}^{\infty}F_{j}$

$$
\begin{align}
\mu^{*}(A)& \geq \mu^{*}(\cup_{j=1}^{k}F_{j}\cap A)+\mu^{*}(G^{c}\cap A) \\
& =\mu^{*}(F_{k}\cap \cup_{j=1}^{k}F_{j}\cap A)+\mu^{*}(F_{k}^{c}\cap \cup_{j=1}^{k}F_{j}\cap A)+\mu^{*}(G^{c}\cap A) \\
&=\mu^{*}(F_{k}\cap A)+\mu^{*}(\cup_{j=1}^{k-1}F_{j}\cap A)+\mu^{*}(G^{c}\cap A) \\
\dots& =\sum_{j=1}^{k}\mu^{*}(F_{j}\cap A)+\mu^{*}(G^{c}\cap A) \\
&=\mu^{*}(\cup_{j=1}^{k}F_{j}\cap A)+\mu^{*}(G^{c}\cap A)
\end{align}
$$

$k\to \infty$ 即有 $G\in \mathcal{M}$

4、之后证明**测度是完备的**：

对 $F\subset E\in \mathcal{M},\mu(E)=0$

$$
\mu_{*}(A)\geq\mu^{*}(F^{c}\cap A)=\mu_{*}(F^{c}\cap A)+\mu_{*}(F\cap A)
$$

所以 $F\in \mathcal{M}$

参考于树澄实分析讲义 26 节[[实分析讲义-于树澄.pdf]]


## The 3 延拓定理

综合前两个定理

```ad-theorem
title: Theorem 3

对代数 $\mathcal{A}$ 和其上面的预测度 $\mu_{0}$，$(X,\mathcal{A},\mu_{0},\mu^{*})$ 为 the 1 和 the 2 中定义的空间、代数、预测度和外测度，$\mathcal{M}$ 为由 $\mathcal{A}$ 生成的 $\sigma-$ 代数 $\epsilon(\mathcal{A})$，则 $\mu = \mu^{*}|_\mathcal{M}$ 为 $\mathcal{M}$ 上的测度，且 $\mu|_{\mathcal{A}}=\mu_{0}$。特别的，若 $\mathcal{M}$ 是 **$\sigma-$ 有限**的，则 $\mu$ 是 $\mu_{0}$ 在 $\epsilon(\mathcal{A})$ 上**唯一的**测度延拓。 

```

其中 $\sigma-$ 有限指 $X=\cup_{i=1}^{\infty}E_{i}$，且 $m(E_{i})<+\infty$

### Proof

在 $\sigma-$ 有限时证唯一性：假设还有另一个测度 $v$, 先证明在测度有限的情况下有 $\mu(E)=v(E)<+\infty$，且有 $v (E)\leq \mu(E)=\mu^{*}(E)$

证明见于树澄实分析讲义 27 讲证明 [[实分析讲义-于树澄.pdf]]

对于无穷情况，取有限测度列 $\{E_{n}\}$ 趋向 E 即可

## Pro 4

最后还有完备延拓 ![[Wiki - 测度的完备性#The 1 测度完备延拓]]

