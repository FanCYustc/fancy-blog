---
aliases: []
info: 
date: 2024-06-11-星期二 10:58
update: 
tags:
  - wiki/year2024
  - wiki/month06
  - 实分析/测度论
id: wiki20240611105848
banner: "![[astrowalk.gif]]"
---
---

## 1. 乘积 σ-代数 (Product $\sigma$-algebra)

设 $(X, \mathcal{M})$ 和 $(Y, \mathcal{N})$ 为两个[[Wiki - 抽象测度|可测空间]]。

### 1.1 可测矩形 (Measurable Rectangles)
称形如 $A \times B$ 的集合为 $X \times Y$ 上的**可测矩形**，其中 $A \in \mathcal{M}, B \in \mathcal{N}$。
记 $\mathcal{R} = \{ A \times B : A \in \mathcal{M}, B \in \mathcal{N} \}$ 为所有可测矩形的集合。

### 1.2 乘积 $\sigma$-代数定义
**乘积 $\sigma$-代数** $\mathcal{M} \otimes \mathcal{N}$ 定义为由可测矩形族 $\mathcal{R}$ 生成的 $\sigma$-代数，即：
$$ \mathcal{M} \otimes \mathcal{N} := \sigma(\mathcal{R}) $$
称 $(X \times Y, \mathcal{M} \otimes \mathcal{N})$ 为**乘积可测空间**。

**例子：**
*   若 $X=\mathbb{R}^m, \mathcal{M}=\mathcal{B}(\mathbb{R}^m)$，$Y=\mathbb{R}^n, \mathcal{N}=\mathcal{B}(\mathbb{R}^n)$，则 $\mathcal{M} \otimes \mathcal{N} = \mathcal{B}(\mathbb{R}^{m+n})$。

---

## 2. 截面 (Sections)

对 $E \subset X \times Y$ 及 $x \in X, y \in Y$，定义截面：
*   **$x$-截面**：$E_x = \{ y \in Y : (x,y) \in E \}$
*   **$y$-截面**：$E^y = \{ x \in X : (x,y) \in E \}$

**性质**：
若 $E \in \mathcal{M} \otimes \mathcal{N}$，则对任意 $x \in X$，有 $E_x \in \mathcal{N}$；对任意 $y \in Y$，有 $E^y \in \mathcal{M}$。
(参见 [[5_Wiki/Wiki - 乘积集合的可测性]])

---

## 3. 乘积测度 (Product Measure)

设 $(X, \mathcal{M}, \mu)$ 和 $(Y, \mathcal{N}, \nu)$ 为两个$\sigma$-有限测度空间。

### 3.1 构造与存在性
在可测矩形上定义集函数：
$$ \pi(A \times B) = \mu(A)\\nu(B), \quad \forall A \in \mathcal{M}, B \in \mathcal{N} $$
可将其延拓到由可测矩形生成的代数 $\mathcal{A}$ 上。利用[[Wiki - 测度延拓定理|Carathéodory 延拓定理]]，存在唯一的测度 $\mu \times \nu$ 定义在 $\mathcal{M} \otimes \mathcal{N}$ 上，满足：
$$ (\mu \times \nu)(A \times B) = \mu(A)\nu(B) $$
该测度称为 $\mu$ 和 $\\nu$ 的**乘积测度**，通常记为 $\mu \otimes \nu$。

### 3.2 唯一性
由于 $\mu, \nu$ 是 $\sigma$-有限的，乘积测度 $\\mu \otimes \\nu$ 也是 $\\sigma$-有限的，且是唯一的。

### 3.3 边际测度 (Marginals)

*   $(\mu \otimes \nu)(A \times Y) = \mu(A)$
*   $(\mu \otimes \nu)(X \times B) = \nu(B)$

---

## 4. 与概率论的联系

在概率空间 $(\Omega, \mathcal{F}, \mathbb{P})$ 中：
*   若 $X, Y$ 为随机变量，其联合分布 $\mathbb{P}_{(X,Y)}$ 是定义在乘积空间上的概率测度。
*   $X, Y$ **相互独立** $\iff$ 联合分布等于边际分布的乘积测度：
    $$ \mathbb{P}_{(X,Y)} = \mathbb{P}_X \otimes \mathbb{P}_Y $$
    即 $\mathbb{P}(X \in A, Y \in B) = \mathbb{P}(X \in A)\mathbb{P}(Y \in B)$。

相关条目：[[Wiki - 随机变量的独立性]]、[[Wiki - 前推测度]]

---

## 5. 积分定理 (Fubini & Tonelli)

设 $f: X \times Y \to [-\infty, +\infty]$ 为 $\mathcal{M} \otimes \mathcal{N}$-可测函数。

*   **[[Wiki - Tonelli定理|Tonelli 定理]]** (非负情形)：若 $f \ge 0$，则累次积分存在且相等：
    $$ \int_{X \times Y} f \, d(\mu \otimes \nu) = \int_X \left( \int_Y f(x,y) \, d\nu(y) \right) d\mu(x) = \int_Y \left( \int_X f(x,y) \, d\mu(x) \right) d\nu(y) $$
*   **[[Wiki - Fubini定理|Fubini 定理]]** (可积情形)：若 $\int |f| \, d(\\mu \otimes \\nu) < \infty$，则上述结论依然成立，且几乎处处的截面函数可积。