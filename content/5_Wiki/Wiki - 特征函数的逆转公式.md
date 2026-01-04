---
aliases:
info: Levy逆转公式
date: 2025-12-17-星期三
update: 2025-12-17-星期三
tags:
  - 概率论/特征
  - fourier分析
  - wiki/month11
  - wiki/year2023
id: wiki20231116142322
banner: "![[astrowalk.gif]]"
---

# Lévy 逆转公式 (Lévy Inversion Formula)

特征函数唯一地决定了概率分布。Lévy 逆转公式给出了如何从特征函数 $\Phi_\mu$ 显式地恢复出概率测度 $\mu$（或其分布函数）。

## 一般公式

**定理 6.2**
设 $\mu \in \mathcal{P}(\mathbb{R})$ 为概率测度 [[Wiki - 概率测度]]，$\Phi_\mu$ 为其特征函数 [[Wiki - 随机变量的特征函数]]。则对任意连续点 $a < b$（即 $\mu(\{a\}) = \mu(\{b\}) = 0$）：

$$ 
\mu((a, b)) = \lim_{T \to \infty} \frac{1}{2\pi} \int_{-T}^{T} \frac{e^{-\mathrm{i}\theta a} - e^{-\mathrm{i}\theta b}}{\mathrm{i}\theta} \Phi_\mu(\theta) \mathrm{d}\theta 
$$ 

更一般地，如果不要求 $a, b$ 为连续点，公式给出的是区间端点的加权概率：
$$ 
\frac{\mu([a, b)) + \mu((a, b])}{2} = \lim_{T \to \infty} \frac{1}{2\pi} \int_{-T}^{T} \frac{e^{-\mathrm{i}\theta a} - e^{-\mathrm{i}\theta b}}{\mathrm{i}\theta} \Phi_\mu(\theta) \mathrm{d}\theta 
$$ 
证明用到[[Wiki - Parseval等式#Lem 1 概率论中的 Parseval 等式]]
## 绝对连续情形 (密度函数存在)

如果特征函数 $\Phi_\mu \in L^1(\mathbb{R})$（即绝对可积），则 $\mu$ 绝对连续[[Wiki - R-N导数|测度的绝对连续性]]，且其概率密度函数 $f(x)$ [[Wiki - 概率密度函数]]连续且有界，由下式给出：

$$ 
f(x) = \frac{1}{2\pi} \int_{-\infty}^{\infty} e^{-\mathrm{i}\theta x} \Phi_\mu(\theta) \mathrm{d}\theta 
$$ 

这正是 Fourier 逆变换的形式[[Wiki - fourier变换]]。

### 例子
- **Cauchy 分布**: $p(x) = \frac{1}{\pi(1+x^2)}$，其特征函数 $\Phi(\theta) = e^{-|\theta|}$。由于 $e^{-|\theta|} \in L^1$，可直接用逆转公式验证。[[Wiki - 柯西分布]]

