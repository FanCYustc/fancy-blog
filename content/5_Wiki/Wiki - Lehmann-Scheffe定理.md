---
aliases: 
info: 
date: 2024-03-29-星期五 11:43
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
id: wiki20240329114342
banner: "![[astrowalk.gif]]"
---
---

## The 1 Lehmann-Scheffe Theorem

```ad-theorem
title: Theorem 1

```
如果 T（X）是充分完全统计量 [[Wiki - 充分统计量]] [[Wiki - 完全统计量]]，$\hat{g}_{n}(T(X))$ 是 $g(\theta)$ 的无偏估计 [[Wiki - 无偏估计]]，则 $\hat{g}_{n}(T(X))$ 是唯一的 UMVUE [[Wiki - 一致最小方差无偏估计]]



这里唯一性指的是，$\hat{g},\hat{g}_{1}$，若 $P_{\theta}(\hat{g}=\hat{g}_{1})=1$，则视这两个估计是相同的

### Proof

利用 [[Wiki - Rao-Blackwell定理]]


### 应用：

寻找一致最小方差无偏估计：先找一个无偏估计 $\hat{\varphi}(X)$，由 [[Wiki - Rao-Blackwell定理]]，求 $h(T(X))=E_{\theta}[\hat{\varphi(X)}|T]$，为关于 T 的函数也为无偏估计，由唯一性，h (T) 就是 $\varphi(\theta)$ 的一致最小方差无偏估计。

