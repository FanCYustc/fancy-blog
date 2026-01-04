---
aliases: 
info: 极大函数的定义和性质
date: 2024-05-06-星期一 10:53
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/微分
id: wiki20240506105320
banner: "![[astrowalk.gif]]"
---
---


## Def 1 极大函数

```ad-definition
title: Definition 1

If $f$ is integrable on $\mathbb{R}^d$, we define its **maximal function** $f^*$ by
$$f^*(x)=\sup\limits_{x\in B}\:\dfrac{1}{m(B)}\int_B|f(y)|\:dy,\quad x\in\mathbb{R}^d,$$

其中 B 取所有包含 x 的球



```

## Pro 1 极大函数性质

```ad-proposition
title: Propositon 1

$\textit{Suppose f is integrable on }\mathbb{R} ^{d}.\textit{Then:}$

(i) $f^*$ is measurable

(ii) $f^*(x)<\infty$  for $a.e.x.$

(iii) $f^*satisfies$
$$m(\{x\in\mathbb{R}^d:\:f^*(x)>\alpha\})\leq\dfrac{A}{\alpha}\:\|f\|_{L^1(\mathbb{R}^d)}$$

for all $\alpha > 0,$ where $A= 3^d,$ and $\|f\|_L^{1}( \mathbb{R} ^{d}) = \int _{\mathbb{R} ^{d}}|f( x) |$ $dx.$ 


```

[[Wiki - Lp线性空间]]
### Proof

(iii) 可以由契比雪夫不等式得到 [[Wiki - Chebyshev不等式]]，还需要 Vitali 覆盖方法 [[Wiki - vitali覆盖方法]]

证明见[[实分析讲义-于树澄.pdf]] 第 18 讲证明

## Cal 1

1、$f\in L_{loc}^{1}(\mathbb{R}^{d})\to f^{*}(x)\geq |f (x)| a.e.$ [[Wiki - 局部可积函数]]

