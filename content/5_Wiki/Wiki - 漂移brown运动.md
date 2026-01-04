---
aliases: 
info: 
date: 2024-06-15-星期六 19:32
update: 
tags:
  - wiki/year2024
  - wiki/month06
  - 随机过程/brown运动
id: wiki20240615193239
banner: "![[astrowalk.gif]]"
---
---

## Def 1 漂移 brown 运动

```ad-definition
title: Definition 1

称 $\{X (t), t\geq0\}$ 为漂移率为 $\mu$ 的布朗运动过程, 若过程满足以下三条:

$$\begin{aligned}
\mathrm{(i)}&X(0)=0;\\\mathrm{(ii)}&\text{具有独立平稳增量性;}\\\mathrm{(iii)}&\text{对 }\forall t>0,X(t)\sim N(\mu t,t).\end{aligned}$$

```

## Pro 1 

定义击中时 $T_{x}=\inf \{t: X(t)=x,t\geq 0\}$，$P (x) = P (T_{A}<T_{-B}|X (0)=x), -B<x<A$

```ad-proposition
title: Propositon 1

则有 
$$
P (x)= \frac{{e^{2\mu B}-e^{-2\mu x}}}{e^{2\mu B}-e^{2\mu A}}, -B\leq x\leq A
$$

```

当 $\mu=0$ 时，[[Wiki - brown运动]]

$P (T_{c}<T_{d}|B (0)=0) = \frac{{x-d}}{c-d}$

令 $B\to \infty$ 时，$\mu>0,x=0$ 有
$P (T_{A}<\infty) = 1,A>0$

$\mu<0,x=0$ 时有 $P (T_{A}<\infty)= e^{2\mu A}, A\geq 0$



## Pro 2 

```ad-proposition
title: Propositon 2

对漂移率为 $\mu$ 的 brown 运动 $\{X(t),t>0\}$，有 $\lim_{ t \to \infty } \frac{1}{t} \max_{0\leq s\leq t} X (s)= \mu$


```

### Proof

利用 [[Wiki - 基本更新定理]]

## Pro 3

```ad-proposition
title: Propositon 3

设 $\{X(t),t\geq0\}$ 为漂移率为 $\mu$ 的 BMP, 则
$$\operatorname{E}\left[e^{-\theta\:T_x}\right]=\exp\left\{-x\left[\sqrt{\mu^2+2\theta}-\mu\right]\right\},$$
其中 $x\geq 0$, $\theta \geq 0.$


```

### Proof

见胡太忠实用随机过程 PPT [[实用随机过程PPT.pdf]] 第 8 章命题 8.4.1

## 4. Girsanov 变换视角

利用 [[Wiki - Girsanov定理]]，我们可以将漂移布朗运动 $X_t = \sigma W_t + \mu t$（设 $\sigma=1$）看作是标准布朗运动在测度变换下的表现。

令 $W_t$ 为测度 $P$ 下的标准布朗运动。定义新测度 $P^{(\mu)}$，其 Radon-Nikodym 导数 [[Wiki - R-N导数]] 为：
$$
\frac{dP^{(\mu)}}{dP}\bigg|_{\mathcal{F}_t} = Z_t(\mu) = \exp\left(\mu W_t - \frac{1}{2}\mu^2 t\right)
$$
根据 Girsanov 定理，在 $P^{(\mu)}$ 下，过程 $\tilde{W}_t = W_t - \mu t$ 是标准布朗运动。反之，原过程 $W_t = \tilde{W}_t + \mu t$ 在 $P^{(\mu)}$ 下即为漂移率为 $\mu$ 的布朗运动。

[[Wiki - Girsanov定理]]
### 首次击中时密度 (Inverse Gaussian)
利用上述变换，可以推导出首次击中时 $T_b = \inf\{t: W_t = b\}$ 在 $P^{(\mu)}$ 下的密度函数：

对于漂移率为 $\mu$ 的布朗运动，其到达水平 $b \neq 0$ 的时间 $T_b$ 的概率密度函数为：
$$
P^{(\mu)}[T_b \in dt] = \frac{|b|}{\sqrt{2\pi t^3}} \exp\left[ -\frac{(b - \mu t)^2}{2t} \right] dt, \quad t > 0
$$

此分布称为**逆高斯分布** (Inverse Gaussian Distribution)。

*   若 $\mu$ 与 $b$ 同号，则 $P(T_b < \infty) = 1$。
*   若 $\mu$ 与 $b$ 异号，则 $P(T_b < \infty) = \exp(2\mu b) < 1$（在此情况下密度函数不积分为 1，称为 defective density）。


