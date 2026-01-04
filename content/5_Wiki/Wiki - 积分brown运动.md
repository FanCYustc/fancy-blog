---
aliases: 
info: 
date: 2024-06-25-星期二 17:28
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/brown运动
id: wiki20240625172857
banner: "![[astrowalk.gif]]"
---
---

## Def 1 积分 brown 运动

对标注 brown 运动 $\{X(t)\}$，[[Wiki - brown运动]] 定义 $Z (t) = \int _{0}^{t} X(s) \, ds$

称为积分 brown 运动

## Pro 1 

1、 $\{Z(t)\}$ 为高斯过程 [[Wiki - 高斯过程]]

2、$\{(Z(t),X(t))\}$ 为 markov 过程 [[Wiki - 连续时间markov链]]，但 $\{Z(t)\}$ 不是

3、$EZ (t)=0, Cov (Z (s), Z (t))= s^{2}\left ( \frac{t}{2}- \frac{s}{6}  \right), s<t$ [[Wiki - 数学期望]]

[[Wiki - 协方差]]

4、$$
(X(t), Z(t)) \sim N\left( \begin{pmatrix}
0 \\
0
\end{pmatrix}, \begin{pmatrix}
t & \frac{t^{2}}{2} \\
\frac{t^{2}}{2} & \frac{t^{3}}{3} 
\end{pmatrix} \right)
$$
[[Wiki - 协方差矩阵]]

[[Wiki - 多元正态分布]]



