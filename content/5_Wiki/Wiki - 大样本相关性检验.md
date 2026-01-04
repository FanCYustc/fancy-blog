---
aliases: 
info: 
date: 2024-09-14-星期六 10:09
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 回归分析
id: wiki20240914100944
banner: "![[astrowalk.gif]]"
---
---

正态情况：[[Wiki - 正态相关性检验]]

对于非正态情况
## Pro 1 相关系数的渐进正态性

若 $(x_{i},y_{i}),i=1,\dots,n$，样本相关系数 [[Wiki - Pearson相关系数]]为 r，如果总体相关系数 $\rho=0$，则
$$
\sqrt{ n }r \xrightarrow{d} N(0,1)
$$

### Proof

固定 $x_{1},\dots,x_{n}$，由 [[Wiki - 中心极限定理]]有
$$
\frac{{\sum_{i}(x_{i}-\mu_{x})(y_{i}-\mu_{y})}}{\sqrt{\sum_{i}(x_{i}-\mu_{x})^{2}\sigma^{2}_{y}  }} \xrightarrow{d}N(0,1)
$$

极限与 $\boldsymbol{x}$ 无关，所以固定 $\boldsymbol{x}$ 也有同样极限。 

再利用 [[Wiki - Slutsky引理]]，有
$$
\frac{{\sum_{i}(x_{i}-\overline{x})(y_{i}-\overline{y}) }}{\sqrt{ \sum_{i}(x_{i}-\overline{x})^{2}\sum_{i}(y_{i}-\overline{y})^{2} \frac{}{ n }}=}\sqrt{ n }r\xrightarrow{d} N(0,1)
$$

## The 1 相关系数检验

在大样本下检验 $H_{0}: \rho_{xy}=0$，可以用 $\sqrt{ n }r$ 做正态检验，也可以用 $nr^{2}$ 做 $\chi_{1}^{2}$ 检验

[[Wiki - 卡方分布]]

