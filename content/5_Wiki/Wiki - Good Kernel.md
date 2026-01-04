---
aliases:
  - 优核
info: Fourier分析中Good Kernel的定义与性质
date: 2025-12-22-星期一 15:08:19
update: 2025-12-22-星期一 15:11:06
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 数学分析/级数
  - 数学分析/积分
id: wiki20251222154000
banner: "![[astrowalk.gif]]"
---

## Def 1 Good Kernel

```ad-definition
title: Definition 1

圆周上的一族可积函数 $\{K_n (x)\}_{n=1}^\infty$ 称为 **Good Kernels (优核)**，如果满足以下三条性质：

1. **归一化 (Normalization):** 对所有 $n \geq 1$, 
   $$\frac{1}{2\pi} \int_{-\pi}^{\pi} K_{n}(x) dx = 1$$ 
2. **$L^1$ 有界性 (Boundedness):** 存在 $M > 0$ 使得对所有 $n \geq 1$, 
   $$\int_{-\pi}^{\pi} |K_n(x)| dx \leq M$$ 
3. **集中性 (Concentration):** 对任意 $\delta > 0$, 
   $$\int_{\delta \leq |x| \leq \pi} |K_{n}(x)| dx \to 0, \quad n \to \infty$$ 
```

[[Wiki - 卷积]]

## Thm 1 逼近恒等式

```ad-theorem
title: Theorem 4.1 (Approximation to the Identity)

设 $\{K_n\}_{n=1}^\infty$ 是一族 Good Kernels，且 $f$ 是圆周上的可积函数。

1. 若 $f$ 在 $x$ 处连续，则卷积收敛于 $f(x)$：
   $$\lim_{n \to \infty} (f * K_n)(x) = f(x)$$ 
2. 若 $f$ 在圆周上处处连续，则上述收敛是一致的。

```

[[Wiki - Fourier级数的复数形式]]
### Proof

由性质 1，$\frac{1}{2\pi} \int_{-\pi}^{\pi} K_n(y) dy = 1$，因此

$$ 
(f * K_n)(x) - f(x) = \frac{1}{2\pi} \int_{-\pi}^{\pi} K_n(y) [f(x-y) - f(x)] dy 
$$ 

对任意 $\epsilon > 0$，若 $f$ 在 $x$处连续，存在 $\delta > 0$ 使得 $|y| < \delta$ 时 $|f(x-y) - f(x)| < \epsilon$。将积分分为 $|y| < \delta$ 和 $\delta \leq |y| \leq \pi$ 两部分：

$$ 
| (f * K_n)(x) - f(x) | \leq \frac{1}{2\pi} \int_{|y|<\delta} |K_n(y)| \epsilon dy + \frac{1}{2\pi} \int_{\delta \leq |y| \leq \pi} |K_n(y)| \cdot 2B dy 
$$ 

其中 $B$ 是 $f$ 的界。
第一项由性质 2 控制：$\leq \frac{\epsilon}{2\pi} M$。
第二项由性质 3 控制：当 $n \to \infty$ 时趋于 0。
因此极限成立。

### Examples

**圆周上 ($\mathbb{T}$):**
*   **Fejer核**: 是 Good Kernel。[[Wiki - cesaro和|fejer核]]
*   **Poisson Kernel**: 是 Good Kernel。
*   **[[Wiki - dirichlet积分|Dirichlet Kernel]]**: **不是** Good Kernel（$L^1$ 无界）。

**实直线上 ($\mathbb{R}$):**
*   **高斯核 (Heat Kernel)**: $\mathcal{H}_t(x) = \frac{1}{\sqrt{4\pi t}} e^{-x^2/4t}$。参见 [[Wiki - 实直线上的热传导方程]]。
*   **Poisson 核**: $\mathcal{P}_y(x) = \frac{1}{\pi} \frac{y}{x^2+y^2}$。参见 [[Wiki - 上半平面Poisson核]]。
*   **[[Wiki - 单位近似]]**: 是一类特殊的 Good Kernel（通常指 $\mathbb{R}^n$ 上紧支集光滑的 Good Kernel）。
