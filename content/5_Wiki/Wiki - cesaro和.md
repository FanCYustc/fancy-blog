---
aliases:
  - 塞萨罗和
  - 费耶尔核
  - fejer核
info: 
date: 2023-10-31-星期二 11:11
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 收敛
  - 数学分析/积分
  - fourier分析
id: wiki20231031111150
banner: "![[astrowalk.gif]]"
---
---

## Def 1 cesaro 和

```ad-definition
title: Definition 1


$$\sigma_n(x)=\frac{S_0(x)+S_1(x)+\cdots+S_n(x)}{n+1}.$$
求 部分和的算数平均，称为 **cesaro 和**

```

[[Wiki - Fourier级数]]
## Def 2 fejer 核

```ad-definition
title: Definition 2

利用 dirichlet 积分 
$$\begin{aligned}
& \sigma_{n}(x)={\frac{1}{\pi}}\int_{-\pi}^{\pi}f(t)K_{n}(x-t)\mathrm{d}t={\frac{1}{\pi}}\int_{-\pi}^{\pi}f(x-t)K_{n}(t)\mathrm{d}t,  \\
&K_{n}(x) =\frac1{n+1}\sum_{k=0}^nD_n(x)=\frac1{2(n+1)}\Big(\frac{\sin\frac{n+1}2x}{\sin\frac x2}\Big)^2 
\end{aligned}$$
$K_{n}(x)$ 称为 fejer 核

```

[[Wiki - dirichlet积分]]

[[Wiki - 卷积]]

## Pro 1 fejer 核是单位近似

```ad-proposition
title: Propositon 1

与 dirichlet 核不同，fejer 核是单位近似，也是恒同逼近


```

[[Wiki - 单位近似]]

[[Wiki - 恒同逼近]]