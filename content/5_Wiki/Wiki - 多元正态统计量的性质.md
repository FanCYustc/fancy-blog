---
aliases: 
info: 
date: 2025-03-31-星期一 12:01
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 多元统计分析
id: wiki20250331120155
banner: "![[astrowalk.gif]]"
---
---
## Pro 1

假设 ${\mathbf{x}}_{1},\ldots ,{\mathbf{x}}_{n}$ iid $\sim  {N}_{p}\left( {\mathbf{\mu },\sum }\right)$ , 则

(1) $\overline{\mathbf{x}} \sim  {N}_{p}\left( {\mathbf{\mu },\frac{\sum }{n}}\right)$ [[Wiki - 多元正态分布]]

(2) $\left ( {n - 1}\right) S \sim  {W}_{p}\left ( {n - 1,\sum }\right)$ ; [[Wiki - Wishart分布]]

(3) $\overline{\mathbf{x}} \perp S$ .

与 [[Wiki - 三大分布的统计学意义]]一致

### Proof

(1) [[Wiki - 多元正态分布的性质]]

(2) 记 $X = {\left( {\mathbf{x}}_{1},\ldots ,{\mathbf{x}}_{n}\right) }^{\top },Z = {\left( {\mathbf{x}}_{1} - \mathbf{\mu },\ldots ,{\mathbf{x}}_{n} - \mathbf{\mu }\right) }^{\top } = X - \mathbf{1}{\mathbf{\mu }}^{\top }$ ,
其中 ${\mathbf{x}}_{1} - \mathbf{\mu },\ldots ,{\mathbf{x}}_{n} - \mathbf{\mu }$ iid $\sim  {N}_{p}\left( {\mathbf{0},\sum }\right)$ , 则

$$
\left( {n - 1}\right) S = {X}^{\top }\left( {{I}_{n} - \frac{{11}^{\top }}{n}}\right) X = {Z}^{\top }\left( {{I}_{n} - \frac{{11}^{\top }}{n}}\right) Z
$$

由 Cochran 定理 $\left( {n - 1}\right) S \sim  {W}_{p}\left( {n - 1,\sum }\right)$ [[Wiki - Cochran定理]]。

(3) 因为 $\overline{\mathbf{x}} = \frac{{X}^{\top }\mathbf{1}}{n} = \frac{{Z}^{\top }\mathbf{1}}{n} + \mathbf{\mu },\left( {{I}_{n} - \frac{{\mathbf{{11}}}^{\top }}{n}}\right) \mathbf{1} = \mathbf{0}$

$\Rightarrow  {\mathbf{1}}^{\top }Z ⫫ \left( {{I}_{n} - \frac{{\mathbf{{11}}}^{\top }}{n}}\right) Z$ [[Wiki - Cochran定理]]

$\Rightarrow  {\mathbf{1}}^{\top }Z ⫫ {Z}^{\top }\left( {{I}_{n} - \frac{{\mathbf{{11}}}^{\top }}{n}}\right) Z = \left( {n - 1}\right) S,$

所以 $\overline{\mathbf{x}} ⫫ S$ 。

