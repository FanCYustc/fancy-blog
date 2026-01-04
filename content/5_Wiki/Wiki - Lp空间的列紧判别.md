---
aliases: 
info: 
date: 2024-12-18-星期三 20:02
update: 
tags:
  - wiki/year2024
  - 几何学/赋范空间
  - 实分析/lebesgue积分
  - wiki/month09
id: wiki20241218200252
banner: "![[astrowalk.gif]]"
---
---

已知列紧空间连续函数族的列紧判别是 [[Wiki - 一致等度连续|阿斯科利引理]]

对于 $L^{p}$ 空间 [[Wiki - Lp线性空间]] 有如下定理:

## The 1 Riesz-Frechet-Kolmogorov 定理

$1\leq p<\infty$，$\mathcal{F}\subset L^{p}(\mathbb{R}^{n})$ 列紧 [[Wiki - 列紧空间]]当且仅当：

（1）$\mathcal{F}$ 有界，即 $\sup_{f\in \mathcal{F}}\|f\|_{p}<\infty$

(2) $\forall\epsilon>0, \exists R>0$, s.t. $\int _{|x|>R} |f (x)|^{p}\, dx<\epsilon^{p}, \forall f\in \mathcal{F}$

(3) $\forall\epsilon>0, \exists\delta>0$，s.t. $\|\tau_{h}f-f\|_{p}<\epsilon, \forall|h| <\delta, f\in \mathcal{F}$，这里 $\tau_{h}f (x)= f(x+h)$ 



