---
aliases: 
info: 
date: 2024-05-27-星期一 10:03
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/测度论
id: wiki20240527100333
banner: "![[astrowalk.gif]]"
---
---

## Def 1  完备测度

对测度空间 $(X,\mathcal{M},\mu)$ [[Wiki - 抽象测度|测度空间]]

```ad-definition
title: Definition 1

如果 $E\in \mathcal{M},\mu(E)=0$，对 $\forall F\subset E, F\in \mathcal{M}$，则称 $\mu$ 是**完备的** 

```

例如 lebesgue 测度在可测集上完备 [[Wiki - lebesgue可测]]，但在 borel 集上就不完备 [[Wiki - Borel域]]

## The 1 测度完备延拓

```ad-theorem
title: Theorem 1


$(X,\mathcal{M},\mu)$ 是一个测度空间. 令 $\mathcal{N}=\{N\in\mathcal{M}:\mu (N)=0\}$ 

$$
\overline{\mathcal{M}}:=\{E\cup F:E\in\mathcal{M},F\subset N\text{ 对某个 }N\in\mathcal{N}\}.$$

则 $\overline{\mathcal{M}}$ 是 X 上的一个 $\sigma-$ 代数, 并且存在唯一的测度 $\overline{\mu}:\overline{\mathcal{M}}\to[0,\infty]$ 使得 $\overline{\mu}|_{\mathcal{M}}=\mu$ 

```
[[Wiki - σ-代数]]

### Proof

见于树澄实分析讲义[[实分析讲义-于树澄.pdf]]

