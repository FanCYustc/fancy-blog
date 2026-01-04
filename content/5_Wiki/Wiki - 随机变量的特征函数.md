---
aliases: 
info: 特征函数的定义
date: 2025-12-17-星期三 10:00
update: 
tags: [wiki/year2025,wiki/month12,概率论/特征,fourier分析]
id: wiki20251217100003
banner: "![[astrowalk.gif]]"
---

## Def 1 概率测度的特征函数

```ad-definition
title: Definition 6.3

设 $\mu \in \mathcal{P}(\mathbb{R}^n)$ 为 $\mathbb{R}^n$ 上的概率测度。对任意 $\theta \in \mathbb{R}^n$，定义 $\mu$ 的特征函数为：

$$
\Phi_{\mu} (\theta) := \int_{\mathbb{R}^{n}} e^{\mathrm{i} \langle \theta , x \rangle} \mu (\mathrm{d} x) = \int_{\mathbb{R}^{n}} \cos (\langle \theta , x \rangle) \mu (\mathrm{d} x) + \mathrm{i} \int_{\mathbb{R}^{n}} \sin (\langle \theta , x \rangle) \mu (\mathrm{d} x)
$$ 
```

[[Wiki - 概率测度]]
## Def 2 随机变量的特征函数


设 $X$ 为概率空间 $(\Omega, \mathcal{F}, \mathbb{P})$ 上的实值随机变量（或向量），其分布为 $\mathcal{P}_X$。则 $X$ 的特征函数定义为：

$$ 
\Phi_{X} (\theta) = \mathbb{E} 
[ e^{\mathrm{i} \langle \theta, X \rangle} ] = \int_{\mathbb{R}^n} e^{\mathrm{i} \langle \theta, x \rangle} \mathcal{P}_{X} (\mathrm{d} x) 
$$ 
[[Wiki - 概率空间]]、[[Wiki - 随机变量]]

## Pro 1 空间映射视角

```ad-proposition
title: Mapping View

我们可以将特征函数视为定义在 $\mathcal{P}(\mathbb{R}^n)$ 上取值于有界连续函数空间 $C_b(\mathbb{R}^n)$ 的一个映射：
$$ 
\Phi_{\cdot} : \mathcal{P}(\mathbb{R}^n) \to C_b(\mathbb{R}^n) 
$$ 
且满足 $|\Phi_\mu(\theta)| \le 1$。
```


