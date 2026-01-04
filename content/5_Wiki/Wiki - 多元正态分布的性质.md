---
aliases: 
info: n维正态分布的性质
date: 2023-11-27-星期一 09:25
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/概率分布
  - 多元统计分析
id: wiki20231127092511
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 独立性

```ad-proposition
title: Propositon 1
```
N 维正态分布[[Wiki - 多元正态分布]]各个分量相互独立[[Wiki - 随机变量的独立性]]，当且仅当它们两两不相关 [[Wiki - 变量的不相关]]



## Pro 2 边际分布

```ad-proposition
title: Propositon 2

对 n 维正态分布 $\mathbf{Y}\sim N_{n}\left( \mu,\sum \right)$，且

$$\mathbf{Y}=\left[{\begin{array}{c}\mathbf{Y}_1\\\mathbf{Y}_2\end{array}}\right],\quad\mathbf{\mu}=\left[{\begin{array}{c}\mu_1\\\mu_2\end{array}}\right],\quad\mathbf{\Sigma}=\left({\begin{array}{cc}\Sigma_{11}&\Sigma_{12}\\\Sigma_{21}&\Sigma_{22}\end{array}}\right)$$

则 $\mathbf{Y}_{1}\sim N_{m}\left( \mu_{1},\sum_{11} \right)$，其中 $\mathbf{Y}_{1}$ 为 m 维子向量 
```

[[Wiki - 随机向量的边际分布]]

## Cal 1 

$\mathbf{Y}_{1}与\mathbf{Y}_{2}$ 相互独立的充要条件是 $\sum_{12}=O,\sum_{21}=O$
(这两个会同时成立的)

## Pro 3 特征函数

```ad-proposition
title: Propositon 3


$$\begin{gathered}\text{设 }\mathbf{Y}\sim\mathcal{N}_n(\mu,\Sigma)\text{,则 }\mathbf{Y}\text{ 的 c.f. 为}\\f(\mathbf{t})=\exp\left\{\mathrm{i}\boldsymbol{\mu}^\top\mathbf{t}-\frac12\mathbf{t}^\top\Sigma\mathbf{t}\right\},\quad\mathbf{t}\in\Re^n.\end{gathered}$$


```

[[Wiki - 多元特征函数]]

### Proof

首先对 $\mathbf{X}\sim N_{n}(0,I)$，验证 $f (\mathbf{t})=\exp\left\{ -\frac{1}{2} \mathbf{t}^TI\mathbf{t} \right\}$

下面对 $\mathbf{Y}=A\mathbf{X}+\mu$，有

$$\begin{array}{rcl}f(\mathbf{t})&=&\operatorname{E}\exp\left\{\mathrm{i}\mathbf{t}^\top\mathbf{V}\right\}=\operatorname{E}\exp\left\{\mathrm{i}\mathbf{t}^\top(A\mathbf{X}+\boldsymbol{\mu})\right\}\\&=&\exp\left\{\mathrm{i}\mathbf{\mu}^\top\mathbf{t}\right\}\cdot\operatorname{E}\exp\left\{\mathrm{i}(\mathrm{A}^\top\mathbf{t})^\top\mathbf{X}\right\}\\&=&\exp\left\{\mathrm{i}\mathbf{\mu}^\top\mathbf{t}\right\}\cdot f_{\mathbf{x}}\left(A^\top\mathbf{t}\right),\\\mathrm{f}_{\mathbf{x}}\left(A^\top\mathbf{t}\right)&=&\exp\left\{-\frac12(A^\top\mathbf{t})^\top A^\top\mathbf{t}\right\}=\exp\left\{-\frac12\mathbf{t}^\top\Sigma\mathbf{t}\right\}.\end{array}$$


### Pro 4 线性变换

```ad-proposition
title: Propositon 4

设随机向量 $X\sim N_n(\mu,\Sigma),C=(c_{ij})_{m\times n}$, 则

$$
\mathbf{y}=C\mathbf{x}\sim N_m(\mathbf{C}\mathbf{\mu},C\Sigma C^\top).
$$


```

[[Wiki - 线性映射]]说明正态分布在线性映射下保持不变

```ad-proposition
title: Propositon 5

$$\begin{aligned}&\mathbf{X}=(X_1,\ldots,X_n)^\top\text{,则}\\&\mathbf{X}\sim N_n(\mathbf{\mu},\Sigma)\iff\mathbf{s}^\top\mathbf{X}\sim N(\mathbf{s}^\top\mathbf{\mu},\mathbf{s}^\top\Sigma\mathbf{s}),\mathrm{~}\forall\mathbf{s}\in\Re^n.\end{aligned}$$

```

### Proof

由前面的特征函数证明

$$\begin{aligned}
f_{\mathbf{Y}}(\mathbf{t})& = \mathbb{E}\exp\{\mathrm{i}\mathbf{t}^{\top}\mathbf{C}\mathbf{X}\}=\mathbb{E}\exp\{\mathrm{i}(\mathbf{C}^{\top}\mathbf{t})^{\top}\mathbf{X}\}  \\
&=f_{\mathbf{X}}(C^\top\mathbf{t}) \\
&=-\exp\left\{\mathrm{i}\left(C^\top\mathbf{t}\right)^\top\boldsymbol{\mu}-\frac12(C^\top\mathbf{t})^\top\Sigma C^\top\mathbf{t}\right\} \\
&=-\exp\left\{\operatorname{i}\mathbf{t}^\top(C\boldsymbol{\mu})-\frac12\mathbf{t}^\top(C\Sigma\boldsymbol{C}^\top)\mathbf{t}\right\},\quad\mathbf{t}\in\Re^m.
\end{aligned}$$

定理 5 取 $C=s^{T}$ 即可

## Cal 2 

对 n 维正态分布 $\mathbf{X}\sim N_{n}\left( \mu,\sum \right)$，存在正交矩阵 [[Wiki - 正交矩阵]] C，使得 $\mathbf{Y}=C\mathbf{X}$ 各个分量相互独立 [[Wiki - 随机变量的独立性]]

