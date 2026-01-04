---
aliases: [Convergence in Distribution, 弱收敛]
info: 依分布收敛的定义与性质
date: 2025-12-15-星期一 14:45
update: 2025-12-15-星期一 14:55
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
  - 收敛
id: wiki20231130210317
banner: "![[astrowalk.gif]]"
---
---

# 依分布收敛 (Convergence in Distribution)

**依分布收敛** (Convergence in Distribution) 是最弱的一种收敛模式。它仅要求随机变量的“分布规律”趋于一致，而不要求随机变量本身的值在概率空间中相互接近。在一般的度量空间中，它等价于概率测度的**弱收敛**。

## 定义

设 $\{X_{n}\}_{(n\geq1)}$ 和 X 为实值随机变量，其分布函数分别为 F_n 和 F。如果：

$$ 
\lim_{n \to \infty} F_n(x) = F(x), \quad \forall x \in C_F, 
$$

其中 $C_F = \{x \in \mathbb{R} : F 在 x 处连续\}$，则称 $X_n$ **依分布收敛** (converges in distribution) 到 X。
记为：
$$ 
 X_n \xrightarrow{d} X \quad (或 F_n \Longrightarrow F). 
$$ 
[[Wiki - 分布函数]]

### 注意
1.  **逐点收敛的例外**：定义仅要求在 F 的连续点处收敛，不要求处处收敛。
2.  **弱收敛**：对于一般度量空间 [[Wiki - 度量空间]]，依分布收敛等价于概率测度的 [[Wiki - 弱收敛|弱收敛]] (Weak Convergence)。即对任意有界连续函数 f，有 $E[f(X_n)] \to E[f(X)]$。

## 重要定理

### 定理 5.6 (与依概率收敛的关系)

> **定理 5.6**：
> 1.  若 $X_n \xrightarrow{P} X$，则 $X_n \xrightarrow{d} X$。[[Wiki - 依概率收敛]]
> 2.  若 $X \equiv c$ (常数)，则 $X_n \xrightarrow{P} c$ **当且仅当** $X_n \xrightarrow{d} c$。

### 定理 5.12 (等价性)

> **定理 5.12**：
> $X_n \xrightarrow{d} X$ 当且仅当 $P_{X_n} \Longrightarrow P_X$ (分布测度弱收敛)。

## 重要性质

### 1. 空间无关性
依分布收敛只涉及随机变量的分布，不要求它们定义在同一个概率空间上。

### 2. 连续映射定理 (Continuous Mapping Theorem)
若 $X_n \xrightarrow{d} X$ 且映射 g 在 X 的支集上几乎处处连续（即 $P(X \in D_g) = 0$，其中 $D_g$ 为 g 的不连续点集），则：
$$ 
 g(X_n) \xrightarrow{d} g(X). 
$$ 
[[Wiki - 连续映射定理]]

### 3. Slutsky 引理
若 $X_n \xrightarrow{d} X$ 且 $Y_n \xrightarrow{d} c$ (常数)，则：
*   $X_n + Y_n \xrightarrow{d} X + c$
*   $X_n Y_n \xrightarrow{d} cX$
*  $X_n / Y_n \xrightarrow{d} X/c$ (若 $c \neq 0$)

这表明 $(X_n, Y_n) \xrightarrow{d} (X, c)$。[[Wiki - Slutsky引理]]
