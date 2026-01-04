---
aliases: 
info: 
date: 2024-06-12-星期三 10:40
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析
id: wiki20240612104035
banner: "![[astrowalk.gif]]"
---
---

## The 1 rouche 定理

```ad-theorem
title: Theorem 1

设 $f,g\in H(D),\gamma$ 是 $D$ 中可求长的简单闭曲线，$\gamma$ 的内部位于 $D$ 中. 如果当 $z\in\gamma$ 时，有不等式
$$|f(z)-g(z)|<|f(z)|,$$
那么 $f$ 和 g 在 $\gamma$ 内部的**零点个数相同**.


```

[[Wiki - 连通区域|简单闭曲线]]

[[Wiki - 全纯函数]]

### Proof

用 [[Wiki - 幅角原理]]

$|1- \frac{g}{z}|<1$，说明 z 变动时，$\frac{g}{f}$ 落在圆 $|w-1|=1$ 内，绕原点的幅角为 0

而由幅角定义

$$
\frac{1}{2\pi i} \int _{\gamma} \frac{(f /g)'}{f / g} \, dz = \frac{1}{2\pi i}\left( \int_{\gamma} \frac{g'}{g}  \, dz - \int _{\gamma} \frac{f'}{f} \, dz  \right)=0 
$$

