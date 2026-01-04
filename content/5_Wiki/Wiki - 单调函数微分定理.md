---
aliases: 
info: 
date: 2024-05-20-星期一 20:22
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/微分
id: wiki20240520202255
banner: "![[astrowalk.gif]]"
---
---

## The 1 单调函数微分定理

```ad-theorem
title: Theorem 1

```
$f:[a,b]\to \mathbb{R}$ 单调递增，则

1、f 在 $[a,b]$ 几乎处处可微 [[Wiki - lebesgue微分定理]]

2、$f'\in L^{1}([a,b])$ [[Wiki - lebesgue积分]]

3、$\int _{a}^{b} f' (x) \, dx\leq f (b)- f(a)$

[[Wiki - 单调函数的性质]]


是牛顿-莱布尼茨公式的弱化，且不等号不能改进

### Proof



$$\begin{aligned}
\text{We also consider the four Din}& \text{i numbers at x defined by}  \\
D^{+}(F)(x)& =\lim\sup_{h\to0^{+}}\triangle_h(F)(x)  \\
D_{+}(F)(x)& =\lim\inf_{h\to0^{+}}\triangle_h(F)(x)  \\
D^{-}(F)(x)& =\lim\sup_{h\to 0^{-}}\triangle_h(F)(x)  \\
D_-(F)(x)& =\lim\inf_{h\to0^{-}}\triangle_h(F)(x)
\end{aligned}$$

称为函数的四个 dini 导数。

1、首先证明四个不同方向的 **dini 导数几乎处处相等**，其中 $\Delta_{h}(f)(x)= \frac{{f(x+h)-f(x)}}{h}$ 为差分。这样就能得到结论 1

等价于证明 $m (E)= m(\{x:D^{+}f(x)>D_{-}f(x)\})=0$

由严格大于，只需证 $\{x: D^{+}f(x)\geq r>s\geq D_{-}f(x)\}$ 是零测集对任意 $r, s\in \mathbb{Q}$ [[Wiki - lebesgue可测集的性质]]

证明见于树澄实分析讲义 22 讲，23 讲[[实分析讲义-于树澄.pdf]]，用到 [[Wiki - 区间的vitali覆盖]]

2、再证结论 3（蕴含结论 2）：$f'(x)$ 几乎处处存在，但有可能是正无穷，可以先知道 $f'$ 可测 [[Wiki - 可测函数]]

$$
\begin{align}
\int _{a}^{b}f'(x) \, dx &= \int _{a}^{b} \lim_{ n \to \infty } \frac{{f\left( x+\frac{1}{n} \right)-f(x)}}{\frac{1}{n}} \, dx \\ 
&\leq \lim_{ n \to \infty }\inf n \int _{a}^{b }f\left( x+\frac{1}{n} \right)-f(x) \, dx  \\
&=\lim_{ n \to \infty }\inf n\left( \int _{b}^{b+\frac{1}{n}} f(x) \, dx -\int _{a}^{a+\frac{1}{n}}f(x) \, dx  \right) \\
&\leq  \lim_{ n \to \infty } \inf n\left( \frac{1}{n}f(b) - \frac{1}{n}f(a) \right)=f(b)-f(a)
\end{align}
$$

用到 [[Wiki - fatou引理]]，且补充定义 $f (x)= f(b),x>b$

