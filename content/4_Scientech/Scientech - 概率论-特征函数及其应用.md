---
aliases:
info: 25秋高等概率论第6章
date: 2025-11-12-星期三 19:50
update: 2025-12-17-星期三
tags:
  - scientech/year2025
  - scientech/month12
  - 概率论/特征
id: scientech20251112195002
banner: "![[astrofishing.gif]]"
---

# 第6章 特征函数及其应用

特征函数 (Characteristic Function, c.f.) 是概率论中处理独立随机变量和的分布问题的最有力工具。它本质上是概率测度的 Fourier 变换。本章通过引入特征函数，利用 Fourier 分析的工具（如逆转公式、连续性定理）来证明概率论中的核心定理——中心极限定理 (CLT)。

## 6.1 数学基础：半正定函数

在讨论特征函数之前，首先需要了解其数学本质。Bochner 定理告诉我们，特征函数的本质特征是**半正定性**。

- **核心概念**: [[Wiki - 半正定函数]]
    - 定义：$\sum \xi_i \bar{\xi}_j \varphi(x_i - x_j) \geqslant 0$
    - 性质：$\varphi(0) \geqslant 0, |\varphi(x)| \leqslant \varphi(0), \varphi(-x) = \overline{\varphi(x)}$
- **判别准则**: [[Wiki - Bochner定理]]
    - 一个连续、归一化 ($\Phi(0)=1$) 的函数是特征函数 $\iff$ 它是半正定的。

## 6.2 特征函数：定义与性质

特征函数完全刻画了随机变量的分布。

- **定义**: [[Wiki - 随机变量的特征函数]]
    - $\Phi_X(\theta) = \mathbb{E}[e^{\mathrm{i}\theta X}]$
- **基本性质**: [[Wiki - 特征函数的性质]]
    - 一致连续性
    - 线性变换性质 $\Phi_{aX+b}(\theta) = e^{\mathrm{i}b\theta}\Phi_X(a\theta)$
    - **独立和的乘积性**: $X \perp Y \implies \Phi_{X+Y} = \Phi_X \cdot \Phi_Y$
- **级数展开**: [[Wiki - 特征函数的展开]]
    - 建立了矩 (Moment) 与特征函数导数的关系：$\Phi^{(k)}(0) = \mathrm{i}^k \mathbb{E}[X^k]$。
    - 带有 Peano 余项或 Lagrange 余项的 Taylor 展开是证明 CLT 的关键。

[[Wiki - 特征函数的变换]]
## 6.3 逆转与唯一性

特征函数与分布函数是一一对应的。

- **逆转公式**: [[Wiki - 特征函数的逆转公式]]
    - 只要知道 $\Phi(\theta)$，就可以通过积分恢复出分布函数 $F(x)$ 或密度函数 $f(x)$。
    - **Parseval 等式**: [[Wiki - Parseval等式]] 建立了特征函数空间与分布空间的积分联系。
- **典型例子**:
    - **Cauchy 分布**: 密度 $p(x) = \frac{1}{\pi(1+x^2)}$ $\iff$ 特征函数 $\Phi(\theta) = e^{-|\theta|}$。由于 $e^{-|\theta|}$ 也是概率密度函数（Laplace 分布）的形式，体现了 Fourier 变换的对称美。[[Wiki - 柯西分布]]


[[Wiki - 特征函数的唯一性定理]]

**常见特征函数**

| 分布     | 符号                 | 特征函数 $\Phi(\theta)$                                                             |
| :----- | :----------------- | :------------------------------------------------------------------------------ |
| 单点分布   | $\delta_a$         | $e^{\mathrm{i}\theta a}$                                                        |
| 二项分布   | $B(n, p)$          | $(pe^{\mathrm{i}\theta} + 1-p)^n$                                               |
| 泊松分布   | $P(\lambda)$       | $\exp(\lambda(e^{\mathrm{i}\theta}-1))$                                         |
| 正态分布   | $N(\mu, \sigma^2)$ | $\exp(\mathrm{i}\mu\theta - \frac{1}{2}\sigma^2\theta^2)$                       |
| 均匀分布   | $U(a, b)$          | $\frac{e^{\mathrm{i}\theta b} - e^{\mathrm{i}\theta a}}{\mathrm{i}\theta(b-a)}$ |
| 指数分布   | $E(\lambda)$       | $\frac{\lambda}{\lambda - \mathrm{i}\theta}$                                    |
| Cauchy | $C(0, 1)$          | $e^{-abs (\theta)}$                                                             |

## 6.4 多元特征函数

[[Wiki - 多元特征函数]]

[[Wiki - 多元特征函数的逆转公式]]

