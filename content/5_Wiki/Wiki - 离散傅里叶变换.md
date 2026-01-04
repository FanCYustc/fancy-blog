---
aliases:
  - DFT
  - Discrete Fourier Transform
info: Stein Fourier Analysis Chapter 7.1
date: 2025-12-23-星期二 16:14:00
update: 2025-12-23
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析/fourier变换
id: wiki20251223161400
banner: "![[astrowalk.gif]]"
---

# 离散傅里叶变换 (DFT)

离散傅里叶变换（Discrete Fourier Transform, DFT）是傅里叶分析在有限群上的版本，特别是定义在 $\mathbb{Z}(N)$ 上的函数。

## 1. 数学定义

设 $N$ 是一个正整数。群 $\mathbb{Z}(N)$ 可以看作是单位圆上的 $N$ 次单位根构成的乘法群：
$$ \mathbb{Z}(N) = \{ e^{2\pi i k / N} : k = 0, 1, \dots, N-1 \} $$
或者等价地看作整数模 $N$ 的加法群 $\mathbb{Z}/N\mathbb{Z}$。

对于定义在 $\mathbb{Z}(N)$ 上的复值函数 $F$，其**离散傅里叶变换**定义为序列 $\{a_n\}_{n=0}^{N-1}$ ：
$$ \hat{F}(n) = a_n = \frac{1}{N} \sum_{k=0}^{N-1} F(k) e^{-2\pi i k n / N} $$
其中 $n \in \mathbb{Z}(N)$。

## 2. 傅里叶反演公式 (Inversion Formula)

**定理**：若 $F$ 是 $\mathbb{Z}(N)$ [[Wiki - Z(N)群]] 上的函数，则对于任意 $k \in \mathbb{Z}(N)$，有：
$$ F(k) = \sum_{n=0}^{N-1} a_n e^{2\pi i n k / N} $$

由于 $\mathbb{Z}(N)$ 是 N 个点构成的空间，则其上的函数空间时是 N 维的，N 个 fourier 变换的值就可以反演出每个函数，且 $\hat{F}(n), n\in \mathbb{Z}(N)$ 是一组正交基 [[Wiki - 内积空间的正交基]]

### 证明概要（特征的正交性）

定义特征函数 $e_n(k) = e^{2\pi i n k / N}$。在函数空间 $V = \mathbb{C}^{\mathbb{Z}(N)}$ 上定义 Hermitian 内积 [[Wiki - 酉空间]] ：
$$ (F, G) = \sum_{k=0}^{N-1} F(k) \overline{G(k)} $$
可以证明特征族 $\{e_n\}_{n=0}^{N-1}$ 是正交的：
$$ (e_n, e_m) = \sum_{k=0}^{N-1} e^{2\pi i (n-m) k / N} = \begin{cases} N & \text{if } n \equiv m \pmod N \\ 0 & \text{if } n \not\equiv m \pmod N \end{cases} $$
因此，$\{e_n / \sqrt{N}\}$ 构成 $V$ 的一组标准正交基[[Wiki - Schmidt 正交化|标准正交基]]。将 $F$ 在该基下展开即可得到反演公式。

矩阵视角：离散傅里叶变换可以写成矩阵向量乘法的形式。定义 $N$ 维向量 $\mathbf{f} = (f[0], f[1], \dots, f[N-1])^T$ 和 $\mathbf{F} = (F[0], F[1], \dots, F[N-1])^T$。

引入复数 $\omega = e^{2\pi i / N}$。DFT 矩阵 $\mathcal{F}$ 是一个 $N \times N$ 矩阵，其 $(m, n)$ 元素为 $\omega^{-mn}$（索引从 $0$ 开始）：
$$ \mathcal{F} = \begin{pmatrix} 1 & 1 & 1 & \cdots & 1 \\ 1 & \omega^{-1} & \omega^{-2} & \cdots & \omega^{-(N-1)} \\ 1 & \omega^{-2} & \omega^{-4} & \cdots & \omega^{-(N-1)^2} \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ 1 & \omega^{-(N-1)} & \omega^{-2(N-1)} & \cdots & \omega^{-(N-1)^2} \end{pmatrix} $$
则 DFT 可以简洁地表示为线性变换 [[Wiki - 线性映射|线性变换]] ：
$$ \mathbf{F} = \mathcal{F} \mathbf{f} $$
由于特征向量的正交性，逆变换矩阵 $\mathcal{F}^{-1}$ 满足 $\mathcal{F}^{-1} = \frac{1}{N} \bar{\mathcal{F}}$（共轭转置除以 $N$）。[[Wiki - 正交变换]]

## 3. Plancherel 等距恒等式

离散傅里叶变换保持了向量的范数（等距性）：
$$ \sum_{n=0}^{N-1} |a_n|^2 = \frac{1}{N} \sum_{k=0}^{N-1} |F(k)|^2 $$
这表明 DFT 是一个缩放后的酉变换 [[Wiki - 酉变换]]。

[[Wiki - Plancherel定理]]
## 4. 主要性质

设 $F, G$ 是 $\mathbb{Z}(N)$ 上的函数：

*   **平移 (Translation)**：若 $G(k) = F(k-h)$，则 $\hat{G}(n) = \hat{F}(n) e^{-2\pi i n h / N}$。[[Wiki - fourier变换]]
*   **卷积 (Convolution)**：定义卷积 [[Wiki - 卷积]]为 $(F * G)(k) = \frac{1}{N} \sum_{j=0}^{N-1} F (j) G (k-j)$，则有：
    $$ \widehat{F * G}(n) = \hat{F}(n) \hat{G}(n) $$
*   **对偶性**：DFT 与其逆变换在形式上高度对称。

## 5. 与圆周傅里叶级数的联系

DFT 可以看作是圆周 $S^1$ 上连续傅里叶分析 [[Wiki - Fourier级数]]的离散逼近。

考虑圆周上的连续函数 $f$。若我们在 $N$ 个等距点 $k/N$ 上对 $f$ 进行采样，定义 $F(k) = f(e^{2\pi i k / N})$，则其离散傅里叶系数 $a_n$ 为：
$$ a_n = \frac{1}{N} \sum_{k=0}^{N-1} f(e^{2\pi i k / N}) e^{-2\pi i k n / N} $$
当 $N \to \infty$ 时，上述和式收敛于 Riemann 积分：
$$ a_n \to \int_0^1 f(e^{2\pi i x}) e^{-2\pi i n x} dx = \hat{f}(n) $$
其中 $\hat{f}(n)$ 是 $f$ 的第 $n$ 个连续傅里叶系数 [[Wiki - Fourier级数的复数形式]]。这说明当采样点足够密时，DFT 的系数趋近于连续傅里叶级数的系数。

## 6. 补零

**补零**是指在原信号 $\mathbf{f}$ (长度 $N$) 的末尾填充 $M-N$ 个零，使其长度增加到 $M$。
*   **频域影响**：补零后的 DFT 结果 $\mathbf{G}$ 是原信号频谱的**插值** (Interpolation)。它并没有增加新的物理信息。
*   **栅格细化**：时域补零等价于频域栅格的细化。若原频率间隔为 $\Delta \nu = 1/N$，补零后频率间隔变为 $\Delta \nu_{\text{padded}} = 1/M$。
