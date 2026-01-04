---
aliases: 随机变量可测
info:
date: 2025-09-19-星期五 12:27
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 概率论/随机变量
id: wiki20250919122730
banner: "![[astrowalk.gif]]"
---
---

# Wiki - 随机变量


## Def 1 随机变量

```ad-definition
title: 随机变量
设 $(\Omega, \mathcal{F}, \mathbb{P})$ 为概率空间，$(S, \mathcal{S})$ 为可测空间。函数 $X: \Omega \to S$ 为 $S$-值随机变量，若对任意 $B \in \mathcal{S}$，
$$
X^{-1}(B) = \{\omega \in \Omega : X(\omega) \in B\} \in \mathcal{F}.
$$

注：记 $X \in \mathcal{F}$ 表示 $X$ 是 $\mathcal{F}$-可测的。若 $\mathcal{F} = 2^\Omega$，任意函数均为随机变量。若 $(S, \mathcal{S}) = (\mathbb{R}^d, \mathcal{B}_{\mathbb{R}^d})$，则为实值随机变量。$\sigma(X) = \{X^{-1}(B) : B \in \mathcal{S}\}$ 是使 $X$ 为随机变量的最小 $\sigma$-代数。
```

相关链接：[[Wiki - 概率空间]]、[[Wiki - σ-代数]]、[[Wiki - Borel域]]、[[Wiki - 抽象测度|测度空间]]

也就是说随机变量是概率空间到一个可测空间的映射，使得可测空间中每个 $\sigma$ 代数中的集合的原像都对应一个事件。

一般把 $S=\mathbb{R}$，$\mathcal{S}$ 为实数 Borel 集 [[Wiki - Borel域]]，大部分结论可以推广到任意完备可分度量空间和上面的 Borel 代数 [[Wiki - 度量空间的完备性]]、[[Wiki - 度量空间的稠密性|度量空间的可分性]]



[[Wiki - 抽象测度|测度空间]]

## Ex 1 示性随机变量

```ad-proposition
title: 示性随机变量与简单随机变量
设 $A \in \mathcal{F}$，定义 $X(\omega) = \mathbb{1}_A(\omega) = 1$ (若 $\omega \in A$)，$= 0$ (若 $\omega \in A^c$)，则 $X: \Omega \to \mathbb{R}$ 为实值随机变量。

更一般地，设 $\{A_i\}_{i=1}^n \subset \mathcal{F}$ 为 $\Omega$ 的划分，$a_i \in \mathbb{R}$ 互异，则 $X(\omega) = \sum_{i=1}^n a_i \mathbb{1}_{A_i}(\omega)$ 为简单随机变量。

证明：对于示性函数，$X^{-1}(B) = \{\Omega, \emptyset, A, A^c\} \subset \mathcal{F}$ ($B \in \mathcal{B}_\mathbb{R}$)。

对于简单随机变量，$X^{-1}(B) = \bigcup_{i: a_i \in B} A_i \in \mathcal{F}$，故为随机变量。
```

注：$\sigma(X) = \sigma(\{A_1, \dots, A_n\})$。简单随机变量生成 $\sigma$ -代数为有限并。

相关链接：[[Wiki - 概率测度]]

## Pro 1 简单随机变量逼近

```ad-proposition
title: 实值随机变量的简单逼近
设 $X: \Omega \to \mathbb{R}$ 为实值随机变量，则存在简单随机变量 $\{X_n\}$ 使 $X_n(\omega) \to X(\omega)$ $\forall \omega \in \Omega$ ($n \to \infty$)。
```

### 证明：

对 $n \in \mathbb{N}$，定义 Borel 函数 $f_n(x) = n \mathbb{1}_{(n, \infty)}(x) + \sum_{k=0}^{n 2^n - 1} \frac{k}{2^n} \mathbb{1}_{[k/2^n, (k+1)/2^n)}(x)$ ($x \geqslant 0$)，$f_n(x) \uparrow x$ ($n \to \infty$)。

设 $Y_n = f_n(X^+)$，$Z_n = f_n(X^-)$，$X_n = Y_n - Z_n$。则 $Y_n \uparrow X^+$，$Z_n \uparrow X^-$，故 $X_n \to X$。


同 [[Wiki - 简单函数逼近定理]]

注：此逼近用于定义积分（期望 [[Wiki - 数学期望]]）。Borel 函数包括连续函数和单调函数。

相关链接：[[Wiki - Borel域]]

[[Wiki - 随机变量的判别]]

## Pro 2 随机变量的变换

若 $\{X_{n}\}$ 是 $( \Omega, \mathcal{F}, P)$ 上的随机变量，则 $\sup_{n}X_{n}, \inf_{n}X_{n}, \underline\lim_{ n \to \infty } X_{n}, \overline{\lim}_{ n \to \infty }X_{n}$ 也都是随机变量

