---
aliases:
  - de la Vallée-Poussin Theorem
info: 随机变量一致可积的充分必要判别条件
date: 2025-12-15-星期一 14:55
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
  - 数学分析/积分
id: wiki20231130144953
banner: "![[astrowalk.gif]]"
---
---

# 随机变量一致可积的判别

虽然定义本身可以作为判别依据，但在实际应用中，我们常用 **de la Vallée-Poussin 定理** 来判定一致可积性。

## 核心判别法

### 定义 5.6 (一致可积测试函数)
称 Borel 函数 $\phi: \mathbb{R}_+ \to \mathbb{R}_+$ 为 **一致可积测试函数 (U.I.T.F.)**，如果它满足超线性增长条件：
$$ \lim_{x \to \infty} \frac{\phi(x)}{x} = +\infty $$
典型例子：$\phi(x) = x^p$ ($p > 1$), $\phi(x) = x \ln x$。

### 定理 5.7 (de la Vallée-Poussin 判别法)
设 $\{X_\alpha\}_{\alpha \in I}$ 为一族随机变量。
**该族变量一致可积 (U.I.) 当且仅当** 存在一个 **U.I.T.F.** $\phi$ 使得：
$$ \sup_{\alpha \in I} \mathbb{E}[\phi(|X_\alpha|)] < \infty $$

*   **推论**: 如果 $\{X_\alpha\}$ 是一致可积的，我们总可以找到一个 **单增、凸** 的 U.I.T.F. 使得上述条件成立。
* 
[[Wiki - 随机变量一致可积]]
## 常用充分条件

基于定理 5.7，我们可以得到以下常用的判别准则：

1.  **$L^p$ 有界 ($p>1$)**:
    若存在 $p > 1$ 使得 $\sup_n \mathbb{E}[|X_n|^p] < \infty$，则 $\{X_n\}$ 是一致可积的。
    *(取 $\phi(x) = x^p$)*

2.  **$L \log L$ 有界**:
    若 $\sup_n \mathbb{E}[|X_n| \ln^+ |X_n|] < \infty$，则 $\{X_n\}$ 是一致可积的。
    *(取 $\phi(x) = x \ln x$)*

3.  **控制收敛**:
    若存在 $Y \in L^1$ 使得 $|X_n| \le Y$ (a.e.)，则 $\{X_n\}$ 是一致可积的。
    *(取 $\phi(x) = x$，注意这里 $\phi$ 不是 U.I.T.F，但这是直接定义的推论)*


[[Wiki - Vitali收敛定理]]
