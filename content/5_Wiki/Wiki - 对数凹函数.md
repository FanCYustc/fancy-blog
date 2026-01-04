---
aliases: 
info: 
date: 2025-04-03-星期四 20:42
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
  - 数学分析/函数
id: wiki20250403204242
banner: "![[astrowalk.gif]]"
---
---

## Def 1 对数凹函数

函数 $f: \mathbb{R}^n \to \mathbb{R}$ 称为**对数凹函数**，若满足：

1. **定义域**：$\text{dom}\,f$ 是凸集 [[Wiki - 凸集]]。
2. **对数凹性**：对任意 $x, y \in \text{dom}\,f$ 和 $\theta \in [0,1]$，  
   $$f(\theta x + (1-\theta)y) \geq f(x)^\theta f(y)^{1-\theta}.$$  

等价地，$\log f$ 是凹函数。若 $\log f$ 是凸函数 [[Wiki - 凸函数]]，则称 $f$ 为**对数凸函数**。

### Example
1. **高斯密度函数**：  
   $$\phi(x) = \frac{1}{\sqrt{2\pi}} e^{-x^2/2}$$  
   其对数形式为凹函数：  
   $$\log \phi(x) = -\frac{1}{2}x^2 - \log\sqrt{2\pi}.$$
[[Wiki - 正态分布]]

2. **多元正态分布**：  
   $$f(x) = \frac{1}{\sqrt{(2\pi)^n \det\Sigma}} e^{-\frac{1}{2}(x-\mu)^T\Sigma^{-1}(x-\mu)}$$  
   通过对数变换得二次型，显见其对数凹性。
[[Wiki - 多元正态分布]]

4. **均匀分布**：  
   若 $C \subseteq \mathbb{R}^n$ 是凸集，则均匀分布密度函数 $f(x) = \frac{1}{\text{vol}(C)} \cdot I_C(x)$ 是对数凹的。

[[Wiki - 均匀分布]]
## Pro 1 运算封闭性

1. **乘积**：若 $f, g$ 对数凹，则 $fg$ 对数凹（因 $\log(fg) = \log f + \log g$ 是凹函数之和）。但对于加法来说，对数凸函数是保持的，但对数凹函数一般是不保持的。
2. **积分**（Preston 定理）：  
   若 $f(x, y)$ 对 $x$ 对数凹，则积分  
   $$g(x) = \int f(x, y) dy$$  
   保持对数凹性（见 Karlin & Rinott, 1980）。
3. **卷积**：对数凹密度函数的卷积 [[Wiki - 卷积]]仍是对数凹的。

## Pro 2 重要定理与应用

**边际分布保持性**：  

若随机向量 $w$ 服从对数凹分布，则其边际分布 [[Wiki - 随机向量的边际分布]]  
   $$F(x) = \text{prob}(w \leq x)$$  
保持对数凹性。例如，高斯累积分布函数 $\Phi(x)$ 是对数凹的。

## Pro 3

- **凸函数**：对数凸函数 $f$ 的倒数 $1/f$ 是对数凹函数。
- **拟凸函数**：对数凹函数的下水平集 $\{x \mid f(x) \geq \alpha\}$ 是凸集。

[[Wiki - 拟凸函数]]


