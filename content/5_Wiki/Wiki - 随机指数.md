---
aliases:
  - Doléans-Dade Exponential
  - Stochastic Exponential
info:
date: 2025-12-26-星期五 16:40
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251226164000
banner: "![[astronight.gif]]"
---
---

**随机指数 (Stochastic Exponential)**，通常记为 $\mathcal{E}(X)$，是随机分析中对应于经典指数函数 $e^x$ 的概念。它是线性随机微分方程 $dZ_t = Z_t dX_t$ 的解，在金融数学（资产价格模型）和测度变换（Girsanov 定理）中扮演着核心角色。

## 1. 定义

设 $X = \{X_t, \mathcal{F}_t; 0 \le t < \infty\}$ 为一个**连续半鞅**[[Wiki - 连续半鞅]]，且 $X_0 = 0$。$X$ 的随机指数 $\mathcal{E}(X)$ 定义为如下过程：

$$ 
\mathcal{E}(X)_t = \exp \left( X_t - \frac{1}{2} \langle X \rangle_t \right), \quad 0 \le t < \infty
$$ 

其中 $\langle X \rangle_t$ 是 $X$ 的二次变差过程[[Wiki - 二次变差]]。

## 2. 动力学方程

随机指数 $\mathcal{E}(X)_t$ 是以下线性随机微分方程 (SDE) 的唯一解（初值 $Z_0 = 1$）：

$$ dZ_t = Z_t \, dX_t
$$ 

或者写成积分形式[[Wiki - 随机积分的定义]]：
$$ Z_t = 1 + \int_0^t Z_s \, dX_s $$

**验证 (Karatzas & Shreve, Example 3.9):**
令 $f(x, y) = e^{x - y/2}$。考虑过程 $Z_t = f(X_t, \langle X \rangle_t)$。
应用 [[Wiki - Ito公式]] ：
$$ 
\begin{aligned}
dZ_t &= \frac{\partial f}{\partial x} dX_t + \frac{\partial f}{\partial y} d\langle X \rangle_t + \frac{1}{2} \frac{\partial^2 f}{\partial x^2} d\langle X \rangle_t \\
&= Z_t dX_t - \frac{1}{2} Z_t d\langle X \rangle_t + \frac{1}{2} Z_t d\langle X \rangle_t \\
&= Z_t dX_t
\end{aligned}
$$ 
注意这里我们用到了 $\langle X \rangle_t$ 是有限变差过程，因此 $d\langle X \rangle_t$ 项直接作为 $dy$ 处理，且没有关于 $y$ 的二阶项。

## 3. 关键性质

### 3.1 局部鞅性
如果 $X$ 是一个**局部鞅**，那么 $\mathcal{E}(X)$ 也是一个**局部鞅**。[[Wiki - 局部鞅]]
*   *直观理解：* $dZ_t = Z_t dX_t$，既然 $dX_t$ 是局部鞅增量，积分 $Z_t$ 自然继承此性质。

### 3.2 鞅性与 Novikov 条件
虽然 $\mathcal{E}(X)$ 总是非负局部鞅（因此是上鞅），但它**不一定**是真鞅。它成为真鞅的条件是 Girsanov 变换成立的关键。
*   **Novikov 条件:** 如果 $E[\exp(\frac{1}{2}\langle X \rangle_T)] < \infty$，则 $\mathcal{E}(X)$ 在 $[0, T]$ 上是鞅[[Wiki - 鞅]]。

### 3.3 乘法法则 (Yor's Formula)
对于两个半鞅 $X, Y$，其随机指数的乘积满足：
$$ \mathcal{E}(X)_t \mathcal{E}(Y)_t = \mathcal{E}(X + Y + \langle X, Y \rangle)_t $$
这表明随机指数将“加法+协方差”转换为“乘法”。

[[Wiki - 随机积分的分部积分|随机积分乘积法则]]
## 4. 应用示例

*   **几何布朗运动 (Geometric Brownian Motion):**
    Black-Scholes 模型中的资产价格 $S_t$ 服从 $dS_t = S_t (\mu dt + \sigma dB_t)$。
    其解可以表示为：
    $$ S_t = S_0 e^{\mu t} \mathcal{E}(\sigma B)_t = S_0 \exp \left( (\mu - \frac{1}{2}\sigma^2)t + \sigma B_t \right) $$
    这里清楚地看到了 $-\frac{1}{2}\sigma^2 t$ 这一伊藤修正项的来源。

[[Wiki - brown运动的变形#Def 1 几何 brown 运动]]

