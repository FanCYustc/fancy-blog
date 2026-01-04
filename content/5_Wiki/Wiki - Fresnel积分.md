---
aliases: 
info: 
date: 2024-05-14-星期二 08:39
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数学分析/多变量微积分
  - 复分析/留数
id: wiki20240514083932
banner: "![[astrowalk.gif]]"
---
---

## The 1 fresnel 积分

计算 $\int _{0}^{+\infty}e^{ix^{2}} \, dx$

取围道为半径为 R，夹角为 $0\leq\theta\leq \frac{\pi}{4}$，顶点为原点。$e^{iz^{2}}$ 是整函数 [[Wiki - 整函数]]，所以由 cauchy 积分定理 [[Wiki - cauchy积分定理]]

$$\int_0^R\mathrm{e}^{\mathrm{i}x^2}\mathrm{d}x+\int_{\gamma_R}\mathrm{e}^{\mathrm{i}z^2}\mathrm{d}z+\int_{\gamma_2}\mathrm{e}^{\mathrm{i}z^2}\mathrm{d}z=0.$$

$\gamma_{R}$ 为圆弧，$\gamma_{2}$ 为 $\frac{\pi}{4}$ 夹角的边

分别讨论三条边上的积分，令 $R\to+\infty$，再利用多变量微积分中的结论，有

$$
\int _{0}^{+\infty}e^{ix^{2}} \, dx= \frac{\sqrt{ \pi }}{2}e^{i \frac{\pi}{4}} 
$$

取实部和虚部就有
$$\int_0^{+\infty}\cos x^2\mathrm{d}x=\int_0^{+\infty}\sin x^2\mathrm{d}x=\frac12\sqrt{\frac\pi2}.$$

## Cal 1 

