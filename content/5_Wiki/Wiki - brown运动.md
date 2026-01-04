---
aliases:
  - Brownian motion
info:
date: 2024-06-13-星期四 20:06
update:
tags:
  - wiki/year2024
  - wiki/month06
  - 随机过程/brown运动
id: wiki20240613200600
banner: "![[astrowalk.gif]]"
banner_y: 0.496
---
---

## Def 1 brown 运动

```ad-definition
title: Definition 1

称 $\left\{X(t),t\geq0\right\}$ 为布朗运动过程 (BMP, Brownian Motion process), 若过程满足以下三条:

(i) $X(0)=0$;

(ii) 具有独立平稳增量性

(iii) 对 $\forall\mathrm{~}t>0,\mathrm{~}X (t)\sim N (0, c^{2}t)$ , 其中 c>0. 

```

[[Wiki - 正态分布]]

当 c=1 时称为标准 brown 运动

等价的定义：

A stochastic process $B = \left\{  {{B}_{t},t \in  {\mathbb{R}}_{ + }}\right\}$ defined on a filtered probability space $\left( {\Omega ,{\mathcal{F}}_{ * },\mathbb{P}}\right)$ is called a Brownian motion with respect to the filtration ${\mathcal{F}}_{ * }$ [[Wiki - sigma代数流]] if it has the following two properties:

(1) $B$ is adapted to ${\mathcal{F}}_{ * }$ and ${B}_{t} - {B}_{s}$ is independent [[Wiki - 随机变量的独立性]] of ${\mathcal{F}}_{s}$ for all $t \geq  s \geq  0$ ;

(2) for any $t > s \geq  0$ , the distribution of the increment ${B}_{t} - {B}_{s}$ is $N\left( {0,t - s}\right)$ , the Gaussian distribution with mean zero and variance $t - s$ .

## 高斯过程定义

Brown 运动也可以定义为满足以下条件的实值随机过程 $X = \{X_t, t \ge 0\}$：
1.  $X$ 是一个 [[Wiki - 高斯过程]]，即其有限维分布均为多元正态分布。
2.  均值函数 $m(t) = E[X_t] = 0$。
3.  协方差函数 $\rho(s, t) = E[X_s X_t] = s \wedge t = \min(s, t)$。
4.  轨道 $t \mapsto X_t$ 几乎处处连续。[[Wiki - 随机过程的连续性]]

这种定义方式与基于增量的定义是等价的。这也定义了布朗运动在路径空间上的 [[Wiki - 随机过程的Law]]。

## $d$-维 Brown 运动

```ad-definition
title: Definition 2 (d-维 Brown 运动)

称 $\mathbb{R}^d$-值随机过程 $B = \{B_t, t \ge 0\}$ 为 **$d$-维 Brown 运动** (d-dimensional Brownian motion)，若其满足以下条件之一：

1.  **分量表示**：$B_t = (B_t^{(1)}, B_t^{(2)}, \dots, B_t^{(d)})^T$，其中 $B^{(1)}, \dots, B^{(d)}$ 是相互独立的 1-维标准 Brown 运动。

2.  **公理化定义**：满足以下性质：
    -   (i) $B_0 = \mathbf{0}$ (a.s.)。
    -   (ii) 具有独立平稳增量性。
    -   (iii) 对 $\forall t > s \ge 0$，增量 $B_t - B_s$ 服从均值为 $\mathbf{0}$，协方差矩阵为 $(t-s)I_d$ 的多元正态分布，即 $B_t - B_s \sim N(\mathbf{0}, (t-s)I_d)$，其中 $I_d$ 为 $d$ 阶单位矩阵。
    -   (iv) 轨道 $t \mapsto B_t$ 几乎处处连续。

3.  **高斯过程定义**：$B$ 是一个 $\mathbb{R}^d$-值高斯过程，满足：
    -   均值向量 $E[B_t] = \mathbf{0}$。
    -   协方差矩阵 $E[B_s B_t^T] = (s \wedge t) I_d$。
    -   轨道几乎处处连续。
```

其实就是每个分量都是一维 brown 运动，且始终独立，在处理时其实就是 d 个一维 brown 运动分开处理。

## 循序可测性
作为一个连续适应过程，布朗运动相对于其自然过滤是**循序可测的 (Progressively Measurable)**。这意味着映射 $(t, \omega) \mapsto B_t(\omega)$ 关于 $\mathcal{B}([0, t]) \otimes \mathcal{F}_t$ 是联合可测的。这一性质对于定义随机积分至关重要。

[[Wiki - 循序可测过程]]
## Pro 1

```ad-proposition
title: Propositon 1

1、由独立增量性，一定有 markov 性

2、对标准 brown 运动， $\forall 0<t_{1}<\dots<t_{n}$，由 $(X (t_{1}),\dots, X (t_{n}))\sim N_{n}\left( \boldsymbol{0},\sum \right)$。其中

$$\Sigma=\left[\begin{array}{cccc}t_1&t_1&\cdots&t_1\\t_1&t_2&\cdots&t_2\\\vdots&\vdots&\ddots&\vdots\\t_1&t_2&\cdots&t_n\end{array}\right]$$

(**此性质加 $X(0)=0$ 等价于 brown 运动的三条定义**)

据此可以有推论 $Cov (X (t_{i}), X (t_{j}))=t_{i}, i<j$

3、对标准 brown 运动 $\forall 0<s<t$，

$$
[X(s)|X(t)=b]\sim N\left(  \frac{s}{t}b, \frac{{s(t-s)}}{t} \right)
$$


```

 [[Wiki - markov性]]

[[Wiki - 条件分布与条件密度]]

[[Wiki - 协方差矩阵]]

[[Wiki - 多元正态分布]]
### Proof

性质 3 证明需要引理
```ad-lemma


$$\begin{aligned}&(Z_{1},Z_{2})\sim N_{2}\left(\left(\begin{array}{c}{a}\\{b}\end{array}\right),\left(\begin{array}{cc}{{\sigma_{11}}}&{{\sigma_{12}}}\\{{\sigma_{21}}}&{{\sigma_{22}}}\end{array}\right)\right),\text{则}\\&[Z_{2}|Z_{1}=x]\sim N(m(x),\sigma_{22}-\sigma_{21}\sigma_{11}^{-1}\sigma_{12}),\\&\text{其中 }m(x)=b+\sigma_{21}\sigma_{11}^{-1}(x-a).\end{aligned}$$


```


[[Wiki - 多元正态分布的性质]]