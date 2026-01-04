---
aliases: 
info: 
date: 2024-05-14-星期二 14:51
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240514145124
banner: "![[astrowalk.gif]]"
---
---

## The 1 wilks 定理

 ```ad-theorem
title: Theorem 1

```

Let $X_1,\ldots,X_n$ be a simple random sample from $f(x,\theta)$, $\theta \in \Theta$ , where $\Theta$ is **an open set**[[Wiki - 度量空间的开集闭集#Definition 2 开集]] of $\mathbb{R} ^k.$ Consider $H_0: \theta \in \Theta _0\leftrightarrow H_1: \theta \in \Theta - \Theta _{0}$, where $\Theta _{0}$  is an open set of $\mathbb{R} ^{d}$ with $d= k- s\geq 1$. Under regularity conditions (Conditions for MLE to be consistent and asymptotic normal) and assuming $H_0$ is true, then
$$2log\lambda_n(\mathbf{X})\overset{\mathcal{L}}{\operatorname*{\to}}\chi_{k\boldsymbol{-}d}^2=\chi_s^2,\quad as\:n\to\infty $$

其中$\lambda(x)$为假设检验的似然比函数[[Wiki - 似然比检验]]

[[Wiki - 依分布收敛]]

要求零空间和全空间都是开集；要求似然函数满足正则条件

### Proof
