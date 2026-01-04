---
aliases: 
info: 
date: 2024-12-28-星期六 21:46
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 概率论/特征
  - 时间序列分析
id: wiki20241228214656
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 平稳序列|自协方差函数矩阵]]
## Pro1 

![[Wiki - 平稳序列的谱#Def 1 平稳序列的谱]]


## Pro 2 正定性

设 $\Gamma_{n}$ 是实平稳序列 [[Wiki - 平稳序列]] $\{X_{t}\}$ 的自协方差矩阵，

1. 若 $\{X_{t}\}$ 的谱密度 $f(\lambda)$ 存在，则 $\forall n\geq 1$，$\Gamma_{n}$ 正定 [[Wiki - 平稳序列的谱]]
2. 若有 $\lim_{ t \to \infty }\gamma_{t}=0$，则有 $\forall n\geq 1, \Gamma_{n}$ 正定
3. 如果谱函数 $F( \lambda)$ 有无穷多个跳跃点，则 $\Gamma_{n},\forall n\geq 1$ 正定；如果 $F(\lambda)$ 恰有 n 个跳跃点，则 $\Gamma_{n}$ 正定而 $\Gamma_{n+1}$ 退化。

[[Wiki - 正定矩阵]]
### Proof

需要引理：

```ad-lemma

若 $\{X_t\}$ 有谱密度 $f(\lambda)$ 则 
$$ b^{\ast} \Gamma_n b = \int_{-\pi}^{\pi} \left| \sum_{j = 1}^{n} b_j e^{ij\lambda} \right|^2 dF(\lambda) $$

$$ b^{\ast} \Gamma_n b = \int_{-\pi}^{\pi} \left| \sum_{j = 1}^{n} b_j e^{ij\lambda} \right|^2 f(\lambda) d\lambda $$

```


引理证明： 

$$ \begin{align*} b^{\ast} \Gamma_n b &= \sum_{j = 1}^{n} \sum_{k = 1}^{n} \overline{b_j} b_k \gamma_{k - j} \\ &= \sum_{j = 1}^{n} \sum_{k = 1}^{n} \overline{b_j} b_k \int_{-\pi}^{\pi} e^{i(k - j)\lambda} dF(\lambda) \\ &= \int_{-\pi}^{\pi} \sum_{j = 1}^{n} \sum_{k = 1}^{n} \overline{b_j} b_k e^{-ij\lambda} e^{ik\lambda} dF(\lambda) \\ &= \int_{-\pi}^{\pi} \left( \sum_{j = 1}^{n} \overline{b_j} e^{-ij\lambda} \right) \left( \sum_{k = 1}^{n} b_k e^{ik\lambda} \right) dF(\lambda) \\ &= \int_{-\pi}^{\pi} \left| \sum_{j = 1}^{n} b_j e^{ij\lambda} \right|^2 dF(\lambda) \end{align*} $$

## Cal 1

系数平方可和的线性平稳序列自协方差矩阵总是正定的

[[Wiki - 线性过程#Pro 2 自协方差收敛]]


## Pro 3

如果自协方差函数实数列 $\{\gamma_{k}\},k=0,\dots,n$ 满足 $\Gamma_{n+1}$ 正定 [[Wiki - 正定矩阵]]，

则由 Yule-Walker 方程 [[Wiki - Yule-Walker方程]] $\Gamma_{n+1}\boldsymbol{a}_{n}=\boldsymbol{\gamma}_{n}$ 解出的 $\boldsymbol{a}_{n}$ 满足最小相位条件，即 $1-\sum_{j=1}^{n}a_{nj}z^{j}\neq 0, |z|\leq 1$

这说明不止 [[Wiki - AR模型]]，对于任意平稳列 [[Wiki - 平稳序列]]自协方差矩阵正定，都能解出 n 阶 yule-walker 系数满足最小相位条件




