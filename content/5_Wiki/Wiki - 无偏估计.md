---
aliases: 
info: 无偏性的定义
date: 2024-03-19-星期二 14:36
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
id: wiki20240319143606
banner: "![[astrowalk.gif]]"
---
---

## Def 1 无偏估计

```ad-definition
title: Definition 1

设 $X=(X_1,\cdots,X_n)$ 为从总体 $\{f(x,\theta),\quad\theta\in\Theta\}$ 中抽取的样本， $g(\theta)$ 是定义于参数空间 $\theta$ 上的已知函数. $\hat{g}(X)=\hat{g}(X_1,\cdots,X_n)$ 是 $g(\theta)$ 的一个估
 计量，如果 $E_{\theta}(\hat{g}(\boldsymbol{X}))=g(\theta),\quad\theta\in\theta$, 则称 $\hat{g}(X)$ 为 $g(\theta)$ 的一个**无偏估计** (unbiased estimation). 
 
记 $\hat{g}(X)=\hat{g}_n(\mathbf{X})$。如果有 $\lim_{ n \to \infty }\hat{g}_{n}(\boldsymbol{X})=g(\theta)$，则称 g 为**渐进无偏估计**

```

[[Wiki - 数学期望]]

