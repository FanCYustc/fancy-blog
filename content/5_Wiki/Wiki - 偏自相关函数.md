---
aliases: 
info: 
date: 2024-12-29-星期日 11:17
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 时间序列分析
id: wiki20241229111738
banner: "![[astrowalk.gif]]"
---
---

## Def 1 偏自相关

对于平稳列 $\{X_{n}\}$ [[Wiki - 平稳序列]]，其自协方差矩阵 $\Gamma_{n}$ 正定 [[Wiki - 正定矩阵]]，则偏自相关系数定义为

$$
a_{nn}= Corr [L[X_{1}|X_{2},\dots,X_{n}], L[X_{n+1}|X_{2},\dots,X_{n}]]
$$
[[Wiki - 偏相关系数]]

$L[|]$ 定义为最优线性预测 [[Wiki - 最优线性预测]]

## The 1 AR 序列偏自相关判别

$\{X_{t}\}$ 为零均值平稳列，自协方差函数 $\{\gamma_{k}\}$ 是正定序列，则 $\{X_{t}\}$ 是 $AR(p)$ 序列 [[Wiki - AR模型]]的充分必要条件是偏自相关系数 p 后截尾

即 
$$
a_{nn}= \begin{cases}
a_{p}\neq 0, \quad n=p \\
0, \quad n>p
\end{cases}
$$
### Proof

只证充分性，等价于证明 $\epsilon_{t}= X_{t}- \sum_{j=1}^{p} a_{j}X_{t-j}$ 是白噪声序列 [[Wiki - 白噪声]]

利用 [[Wiki - levinson递推公式]]

