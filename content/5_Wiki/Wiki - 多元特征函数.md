---
aliases: 
info: 多元特征函数的定义
date: 2023-11-22-星期三 21:53
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/特征
  - fourier分析
id: wiki20231122215320
banner: "![[astrowalk.gif]]"
---
---

## Def 1 多元特征函数

$$\begin{aligned}
&{\text{设随机向量 }\mathbf{X}}=(X_1,\ldots,X_n)^\top\sim F,X\text{ 或 F 的 cf 定义} \\
\text{为} \\
&f(t_1,\ldots,t_n) =\mathrm{E}\left.\left[\exp\left\{\mathrm{i}\sum_{k=1}^nt_kX_k\right\}\right]=\mathrm{E}\left[\mathrm{e}^{\mathrm{i}\mathbf{t}\mathbf{X}}\right]\right.   \\
&=\int_{-\infty}^\infty\cdots\int_{-\infty}^\infty\exp\left\{\mathrm{i}\sum_{k=1}^nt_kx_k\right\}\mathrm{~d}F(x_1,\ldots,x_n), \\
&\forall\mathbf{t}=(t_1,\ldots,t_n)\in\Re^n.
\end{aligned}$$

[[Wiki - 随机变量的特征函数]]

[[Wiki - 数学期望]]

