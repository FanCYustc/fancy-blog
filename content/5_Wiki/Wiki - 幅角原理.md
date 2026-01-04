---
aliases: 
info: 
date: 2024-06-12-星期三 10:40
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析
id: wiki20240612104014
banner: "![[astrowalk.gif]]"
---
---

## The 1 幅角原理

幅角定义为绕原点转动的角度，

今设 $\Gamma$ 是一条不通过原点的可求长简单闭曲线[[Wiki - 连通区域|简单闭曲线]]，显然有
$\frac 1{2\pi }\Delta _{\Gamma}\mathbf{Argw}= \begin{cases} 1\text{, 如 果 原 点 在  }\Gamma \text{ 内 部 ; }\\ 0\text{, 如 果 原 点 不 在  }\Gamma \text{ 内 部 }& \end{cases}$


```ad-theorem
title: Theorem 1

设 $f\in H(D),\gamma$ 是 $D$ 中的可求长简单闭曲线，$\gamma$ 的内部位于 $D$ 中. 如果 $f$ 在 $\gamma$ 上没有零点，那么当 $z$ 沿着 $\gamma$ 的正方向转动一圈时，函数 $f(z)$ 在相应的曲线 $\Gamma$ 上绕原点转动的**总圈数**恰好等于 $f$ 在 $\gamma$ 内部的**零点的个数**.

```


其中幅角变化的计算式为

$$
\frac{1}{2\pi\mathrm{i}}\int_{\Gamma}\frac{f'(z)\mathrm{d}z}{f(z)}=\frac{1}{2\pi}\Delta_{\Gamma}\mathrm{Arg}f(z)
$$

