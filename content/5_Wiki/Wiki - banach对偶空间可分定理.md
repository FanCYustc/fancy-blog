---
aliases: 
info: 
date: 2024-12-19-星期四 22:35
update: 
tags:
  - wiki/year2024
  - 泛函分析/线性算子
  - wiki/month11
id: wiki20241219223535
banner: "![[astrowalk.gif]]"
---
---

## The 1 banach 定理

对于赋范空间 X [[Wiki - 赋范空间]]，$X^{*}$ 可分，则 X 可分[[Wiki - 度量空间的稠密性|度量空间的可分性]]

### Proof

1、先证 $X^{*}$ 中单位球面 $S_{1}^{*}$ 可分，取可数稠密子集 $\{f_{n}\}$，取 $g_{n}= \frac{f_{n}}{\|f_{n}\|}\in S_{1}^{*}$，证明 $\{g_{n}\}$ 是 $S_{1}^{*}$ 的可数稠密子集

2、存在 $\{x_{n}\}\subset X, \|x_{n}\|=1$，且有 $|g_{n}(x_{n})|> \frac{1}{2}\forall n$。令 $M=span\{x_{n}\}$，则 $\overline{M}= X$，否则存在 $x_{0}\in X / \overline{M}$，由 [[Wiki - hahn-banach定理的推论#Pro 3]]，存在 $f\in X^{*},\|f\|=1, f (\overline{M})=\{0\}, f (x_{0})= dist(x_{0}, \overline{M})$，于是

$\|g_{n}-f\|\geq |g_{n}(x_{n})-f (x_{n})|=|g_{n}(x_{n})|> \frac{1}{2}$，与在 $S_{1}^{*}$ 稠密矛盾

3、证明 $\overline{span^\mathbb{Q}\{x_{n}\}}=X$，这就是一个可数稠密子集

### Cal1 

对 $1<p<\infty$，有 $L^{p}$ 空间可分 [[Wiki - Lp线性空间]]

但 $L^{1}$ 空间可分，$L^{\infty}$ 空间不可分

所以由 banach 定理可以得知 $L^{1}$ 不是自反空间 [[Wiki - 自反空间]]


