---
aliases: 
info: 连续可测函数的性质
date: 2024-03-18-星期一 10:24
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
  - 连续
id: wiki20240318102438
banner: "![[astrowalk.gif]]"
---
---

## Pro 1

```ad-proposition
title: Propositon 1
```

若 f 在 $\mathbb{R}^{d}$ is continous [[Wiki - 函数的连续性]], then f is measurable [[Wiki - 可测函数]]

## Pro 2

[[Scientech - 实分析-lebesgue测度#^c91b2d]]

```ad-proposition
title: Propositon 2

若 f 可测且**有限值**，$\Phi$ 连续，则 $\Phi \circ f$ 是可测的

```

### Proof

$\{\Phi \circ f<a\}= (\Phi\circ f)^{-1}((-\infty, a]) = f^{-1}(\Phi^{-1}((-\infty,a]))$

由连续性，$\Phi^{-1}((-\infty,a])$ 是开集，所以 $\{\Phi \circ f<a\}$ 也是开集，可测

```ad-caution

先连续后可测 $f \circ \Phi$ 就不一定是可测的了

```

