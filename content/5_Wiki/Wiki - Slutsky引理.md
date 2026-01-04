---
aliases:
  - 斯卢茨基定理
info: 收敛随机变量的代数运算性质
date: 2025-12-15-星期一 15:05
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
  - 数理统计
id: wiki20231211094942
banner: "![[astrowalk.gif]]"
---
---

# Slutsky 引理 (Slutsky's Theorem)

**Slutsky 引理** 是概率论和数理统计中处理随机变量收敛性的重要工具，特别是当涉及随机变量的代数运算时。它允许我们将依分布收敛的变量和收敛到常数的变量结合起来。

## 定理 5.15

设 $\{X_n\}, \{Y_n\}$ 为随机变量序列，且：
$$ X_n \xrightarrow{d} X, \quad Y_n \xrightarrow{d} c \quad (\text{常数}) $$
*(注: $Y_n \xrightarrow{d} c \iff Y_n \xrightarrow{\mathbb{P}} c$)*

则它们的联合分布收敛：
$$ (X_n, Y_n) \xrightarrow{d} (X, c) $$

由此可推导出以下代数运算的收敛性：
1.  **和**: $X_n + Y_n \xrightarrow{d} X + c$
2.  **积**: $X_n Y_n \xrightarrow{d} cX$
3.  **商**: $X_n / Y_n \xrightarrow{d} X / c$ (若 $c \neq 0$)

## 推广

### 多维 Slutsky 定理
如果 $X_n \xrightarrow{d} X$ (在 $\mathbb{R}^d$ 中) 且 $Y_n \xrightarrow{\mathbb{P}} C$ (在 $\mathbb{R}^m$ 中)，则：
$$ (X_n, Y_n) \xrightarrow{d} (X, C) $$

### Delta 方法 (Delta Method)
Slutsky 定理是 **Delta 方法** 的基础。
若 $\sqrt{n}(\hat{\theta}_n - \theta) \xrightarrow{d} N(0, \Sigma)$，且 $g$ 在 $\theta$ 处可微，则：
$$ \sqrt{n}(g(\hat{\theta}_n) - g(\theta)) \xrightarrow{d} N(0, \nabla g(\theta)^T \Sigma \nabla g(\theta)) $$
(证明中利用了 Taylor 展开和 Slutsky 定理处理梯度项)

[[Wiki - 多元正态分布]]

*   [[Wiki - 依分布收敛]]
*   [[Wiki - 依概率收敛]]
*   [[Wiki - 连续映射定理]]
