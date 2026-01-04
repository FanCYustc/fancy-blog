---
aliases: 
info: n维皮亚诺存在定理
date: 2023-11-01-星期三 11:42
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
id: wiki20231101114236
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 佩亚诺存在定理]]

## The 1 n 维佩亚诺存在定理

```ad-theorem
title: Theorem 1


设函数 $f(x,y)$ 在矩形区域 $R$ 内连续, 则初值问题

$$
\left(\mathbf{E}\right): \frac{d\mathbf{y}}{dx}=\mathbf{f}(x,\mathbf{f}),\quad \mathbf{y}(x_{0})=\mathbf{y}_{0},
$$
在 $\mid x-x_{0}\mid\leq h$ 至少有一个解

定义同n维的皮卡定理
```

### Proof (证明概要)

$n$ 维情况下的证明思路与一维情形相似，主要通过构造近似解序列并利用 **Ascoli 引理**（Arzelà-Ascoli 定理）[[Wiki - 一致等度连续|Arzelà-Ascoli 定理]]提取收敛子列。

**1. 引进向量模与区域定义**
在 $n$ 维线性空间 $V^n$ 中引进模（例如极大值模 $|\mathbf{y}| = \max_{1 \le i \le n} |y_i|$）。设 $\mathbf{f}(x, \mathbf{y})$ 在矩形区域 $R: |x-x_0| \le a, |\mathbf{y}-\mathbf{y}_0| \le b$ 上连续，则 $\mathbf{f}$ 在 $R$ 上有界，记 $M = \max_{(x, \mathbf{y}) \in R} |\mathbf{f}(x, \mathbf{y})|$。令 $h = \min(a, b/M)$。

**2. 构造近似解序列（欧拉折线）**
对每个正整数 $k$，在区间 $[x_0, x_0+h]$ 上构造**欧拉折线** (Euler Broken Lines) $\mathbf{y}_k(x)$：
将 $[x_0, x_0+h]$ $k$ 等分，步长 $\delta = h/k$。在每个小区间上按方向 $\mathbf{f}(x_j, \mathbf{y}_k(x_j))$ 延伸。该折线满足：
- $\mathbf{y}_k(x_0) = \mathbf{y}_0$
- $|\mathbf{y}_k(x) - \mathbf{y}_0| \le M|x - x_0| \le b$，保证折线不离开区域 $R$。
- $\mathbf{y}_k(x)$ 在除分点外可导，且其导数 $\mathbf{y}_k'(x)$ 近似等于 $\mathbf{f}(x, \mathbf{y}_k(x))$。

**3. 证明序列的列紧性**
- **一致有界性**：由 $|\mathbf{y}_k(x)| \le |\mathbf{y}_0| + b$ 可知序列在 $[x_0, x_0+h]$ 上一致有界。
- **等度连续性**：对于任意 $x_1, x_2 \in [x_0, x_0+h]$，有 $|\mathbf{y}_k(x_1) - \mathbf{y}_k(x_2)| \le M|x_1 - x_2|$。由于 $M$ 与 $k$ 无关，序列是等度连续的。

**4. 应用 Ascoli 引理提取收敛子列**
根据 Ascoli 引理，存在子序列 $\{\mathbf{y}_{k_j}(x)\}$ 在 $[x_0, x_0+h]$ 上一致收敛于某个连续函数 $\mathbf{\varphi}(x)$。

**5. 验证极限函数是解**
将欧拉折线的构造关系写成积分形式（带误差项）：
$$ \mathbf{y}_{k_j}(x) = \mathbf{y}_0 + \int_{x_0}^x \mathbf{f}(t, \mathbf{y}_{k_j}(t)) dt + \mathbf{\Delta}_{k_j}(x) $$
其中当 $k_j \to \infty$ 时，误差项 $\mathbf{\Delta}_{k_j}(x) \to 0$。由 $\mathbf{f}$ 的连续性及一致收敛性，对上述等式取极限得：
$$ \mathbf{\varphi}(x) = \mathbf{y}_0 + \int_{x_0}^x \mathbf{f}(t, \mathbf{\varphi}(t)) dt $$
这表明 $\mathbf{\varphi}(x)$ 是初值问题 $(\mathbf{E})$ 的解。

[[Wiki - n维的皮卡定理]]


