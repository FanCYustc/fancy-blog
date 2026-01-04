---
aliases:
  - Weak Convergence
  - mazur定理
info: 泛函分析与概率论中的弱收敛概念
date: 2025-12-15-星期一 15:10
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 泛函分析/线性算子
  - 概率论/极限理论
  - 收敛
id: wiki20241125144208
banner: "![[astrowalk.gif]]"
---
---

# 弱收敛 (Weak Convergence)

“弱收敛”一词在泛函分析和概率论中有不同的具体定义，但核心思想都是通过**测试函数**（或对偶元素）的收敛来定义的。

## 1. 概率论中的弱收敛 (依分布收敛)

在概率论中，弱收敛通常指**概率测度的弱收敛**，对于随机变量而言，这等价于**[[Wiki - 依分布收敛]]**。

### 定义 5.7
设 $S$ 为度量空间（或拓扑空间）[[Wiki - 度量空间]]，$C_b(S)$ 为 $S$ 上所有**有界连续函数**的集合。
若概率测度序列 $\{\mu_n\}_{n \ge 1}$ 和 $\mu$ 满足：
$$
\lim_{n \to \infty} \int_S f(x) \mu_n(\mathrm{d}x) = \int_S f(x) \mu(\mathrm{d}x), \quad \forall f \in C_b(S)
$$
则称 $\mu_n$ **弱收敛**于 $\mu$，记为 $\mu_n \Longrightarrow \mu$。

### 定理 5.12 (与依分布收敛的关系)
设 $X_n \sim \mu_n, X \sim \mu$。
$$ X_n \xrightarrow{d} X \iff \mu_n \Longrightarrow \mu $$
即随机变量的依分布收敛本质上就是其分布测度的弱收敛。

### 相关定理
*   **[[Wiki - Portmanteau定理]]**: 弱收敛的多个等价刻画（开集、闭集、Lipschitz函数等）。
*   **[[Wiki - Prokhorov定理]]**: 弱收敛的相对紧性与胎紧性的关系。

---

## 2. 泛函分析中的弱收敛

### Def 1 定义
 $X$ 是赋范空间 [[Wiki - 赋范空间]]，称 $\{x_n\}_{n = 1}^{\infty} \subset X$ 弱收敛于 $x_0 \in X$ 是指：
 
  $f(x_n) \to f(x_0), \forall f \in X^*$  [[Wiki - 对偶空间]]
  
  记为 $x_n \xrightarrow{w} x_0$ 或者 $x_n \rightharpoonup x_0$，称 $x_0$ 为 $\{x_n\}_{n = 1}^{\infty}$ 的弱极限。

### Pro 1 与强收敛

依范数拓扑收敛即为强收敛。[[Wiki - 度量空间的有界和收敛]]

1、强收敛一定弱收敛

2、在**有限维**赋范空间中，弱收敛与强收敛等价
#### Proof

$\|x_{n}-x_{0}\|\to 0$，于是 $|f (x_{n})-f (x_{0})|\leq \|f\| \cdot \|x_{n}-x_{0}\|\to 0$

对 $dim X =n$，取一组基 $e_{1},\dots,e_{n}$，由 [[Wiki - hahn-banach定理的推论]]得知，存在一组对偶基 $f_{j}$ 满足 $f_{j}(e_{i})= \delta_{ij}, i, j =1,\dots,n$

[[Wiki - 对偶空间|对偶基]]

于是由弱收敛有 $f_{j}(x_{n})\to f_{j}(x_{0})$，设 $x_{n}= \sum a_{j}^{(n)}e_{j}$，则 $\|x_{n}\|_{\infty }\to 0$，由有限维赋范空间范数等价，有 $\|x_{n}-x_{0}\|\to 0$ [[Wiki - 范数的等价]]

### Pro 2 mazur 定理

若 $x_{n}\xrightarrow{w} x_{0}$，则 $x_{0}\in \overline{conv\{x_{n}\}}$

#### Proof

假设 $x_{0}\notin \overline{conv\{x_{n}\}}$，则由闭凸集，可用凸集定理的推论 Ascoli 定理，存在 $f\in X^{*},\alpha\in \mathbb{R}, \sup_{x\in \overline{conv\{x_{n}\}}} f (x)<\alpha< f (x_{0})$，与 $f (x_{n})\to f(x_{0})$ 矛盾

### Pro 3

$x_{n}\xrightarrow{w}x_{0}\leftrightarrow \sup_{n}\|x_{n}\|<\infty$，且存在 $X^{*}$ 的稠密子集 $\mathcal{F}$，使得 $f (x_{n})\to f (x_{0}),\forall f\in \mathcal{F}$


#### Proof

对 $\{x_{n}\}\xrightarrow{w}x_{0}$, 取 $x_{n}^{* *}\in X^{* *}$，则 $f (x_{n})\to f (x_{0}),\forall f\in X^{*}\leftrightarrow x_{n}^{* *}(f)\to x_{0}^{* *}(f), \forall f\in X^{*}$，则由 UBP [[Wiki - 一致有界定理#Cal 1]]，有 $\|x_{n}^{* *}\|=\|x_{n}\|$ 一致有界（$X^{*}$ 是 banach 空间 [[Wiki - banach空间]]）

