---
aliases:
  - Radon-Nikodym定理
  - 测度的绝对连续性
info:
date: 2024-10-21-星期一 14:40
update: 2025-12-11-星期四 11:00:00
tags:
  - wiki/year2024
  - wiki/month10
  - wiki/year2025
  - wiki/month12
  - 泛函分析/线性算子
  - 实分析/测度论
id: wiki20241021144022
banner: "![[astrowalk.gif]]"
---
---

## Def 1 绝对连续

设 $(\Omega,\mathcal{M})$ 为可测空间[[Wiki - 抽象测度|测度空间]]，$\mu,\nu$ 为 $(\Omega,\mathcal{M})$ 上的测度，若

$\mu (A)=0 \to \nu(A)=0$，则称 $\nu$ 关于 $\mu$ 绝对连续，记作 $\nu \ll \mu$。

## The 1 Radon-Nikodym 定理

设 $(\Omega, \mathcal{F}, \mu)$ 是一个 $\sigma$-有限测度空间，$\nu$ 是 $(\Omega, \mathcal{F})$ 上的另一个 $\sigma$-有限测度，且 $\nu$ 关于 $\mu$ 绝对连续 ($\nu \ll \mu$)。

则存在唯一的（在 $\mu$ -几乎处处意义下）非负可测函数 [[Wiki - 可测函数]] $f: \Omega \to [0, \infty)$，使得对于任意 $A \in \mathcal{F}$，有：
$$ \nu(A) = \int_A f \, d\mu $$

### 1.1 R-N 导数

这个函数 $f$ 称为 $\nu$ 关于 $\mu$ 的 **Radon-Nikodym 导数** (R-N 导数)，记作：
$$ f = \frac{d\nu}{d\mu} $$

### 1.2 唯一性
若存在另一个函数 $g$ 也满足上述条件，则 $\mu(\{x : f(x) \neq g(x)\}) = 0$，即 $f = g$ $\mu$-a.e.

### 1.3 性质
1.  **线性性**：若 $\nu = \alpha \nu_1 + \beta \nu_2$，则 $\frac{d\nu}{d\mu} = \alpha \frac{d\nu_1}{d\mu} + \beta \frac{d\nu_2}{d\mu}$。
2.  **链式法则**：若 $\lambda \ll \nu \ll \mu$，则 $\frac{d\lambda}{d\mu} = \frac{d\lambda}{d\nu} \frac{d\nu}{d\mu}$ $\mu$-a.e.
3.  **倒数关系**：若 $\nu \ll \mu$ 且 $\mu \ll \nu$，则 $\frac{d\mu}{d\nu} = (\frac{d\nu}{d\mu})^{-1}$。

### Proof 
证明通常用到 [[Wiki - Riesz代表定理]]。

## Pro 1 与条件期望的关系

Radon-Nikodym 定理是现代概率论中定义 [[Wiki - 条件期望]] 的基石。

在定义条件期望 $\mathbb{E}[X|\mathcal{G}]$ 时，我们实际上是在寻找一个随机变量 $Y$，使得对于所有 $A \in \mathcal{G}$，有 $\int_A Y d\mathbb{P} = \int_A X d\mathbb{P}$。
如果我们定义测度 $\nu(A) = \int_A X d\mathbb{P}$（假设 $X \ge 0$），则 $\nu$ 是 $(\Omega, \mathcal{G})$ 上的测度且 $\nu \ll \mathbb{P}|_\mathcal{G}$。
此时，条件期望 $\mathbb{E}[X|\mathcal{G}]$ 正是 $\nu$ 关于 $\mathbb{P}$ 在子 $\sigma$-代数 $\mathcal{G}$ 上的 Radon-Nikodym 导数：
$$ \mathbb{E}[X|\mathcal{G}] = \frac{d\nu}{d\mathbb{P}|_\mathcal{G}} $$

[[Wiki - Lebesgue分解定理]]、[[Wiki - 符号测度]]