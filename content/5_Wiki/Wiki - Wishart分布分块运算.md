---
aliases: 
info: 
date: 2025-03-28-星期五 21:19
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 概率论/概率分布
  - 多元统计分析
id: wiki20250328211909
banner: "![[astrowalk.gif]]"
---
---

## The 1 分块运算

定理 4. 假设 $W \sim  {W}_{p}\left( {m,\sum }\right) ,m \geq  p$ , [[Wiki - Wishart分布]] 划分
$W = \left( \begin{array}{ll} {W}_{11} & {W}_{12} \\  {W}_{21} & {W}_{22} \end{array}\right) ,\;\sum  = \left( \begin{array}{ll} {\sum }_{11} & {\sum }_{12} \\  {\sum }_{21} & {\sum }_{22} \end{array}\right)$
其中 ${W}_{11},{\sum }_{11}$ 是 $q \times  q$ 方阵, $1 \leq  q < p$

(1) ${W}_{11} \sim  {W}_{q}\left( {m,{\sum }_{11}}\right) ,{W}_{22} \sim  {W}_{p - q}\left( {m,{\sum }_{22}}\right)$ ;

(2) ${W}_{{11} \cdot  2} = {W}_{11} - {W}_{12}{W}_{22}^{-1}{W}_{21} \sim  {W}_{q}\left( {m - p + q,{\sum }_{{11} \cdot  2}}\right)$ ，且 ${W}_{{11} \cdot  2} ⫫ \left\{  {{W}_{12},{W}_{22}}\right\}$ . 与 [[Wiki - 线性回归最小二乘分量的估计]]类似

(3) 当 $q = 1$ 时，${W}_{12} \mid  {W}_{22} \sim  {N}_{p - 1}\left( {{\sum }_{12}{\sum }_{22}^{-1}{W}_{22},{W}_{22}{\sigma }^{2}}\right) ,{\sigma }^{2} = {\sum }_{{11} \cdot  2}$
$q > 1$ 时, 给定 ${W}_{22}$ 时, ${W}_{12}$ 所有元素服从 $q\left( {p - q}\right)$ -元正态分布:
$\operatorname{vec}\left( {W}_{12}\right)  \mid  {W}_{22} \sim  {N}_{q\left( {p - q}\right) }\left( {\operatorname{vec}\left( {{\sum }_{12}{\sum }_{22}^{-1}{W}_{22}}\right) ,{W}_{22} \otimes  {\sum }_{{11} \cdot  2}}\right)$ [[Wiki - 多元正态分布]]

### Proof

（1）取 
$$
A= \begin{pmatrix}
I_{q}  & O \\
O & O
\end{pmatrix}$$
由 [[Wiki - Wishart分布的性质#Pro 1]] 即得

（2）取 V 为 $Z_{1}$ 关于 $Z_{2}$ 的去相关化 $V=Z_{1}^{\perp}$ [[Wiki - 去相关化]]

则
$$
W_{11\bullet 2}= Z_{1}^{T}(I_{m}-P_{Z_{2}})Z_{1}= V^{T}(I_{m}-P_{Z_{2}})V
$$

此时 V 与 $Z_{2}$ 独立（$I-P_{Z_{2}}$ 不是常数矩阵），所以由 [[Wiki - Cochran定理]]，
$$
W_{11\bullet 2}|Z_{2}\sim W_{q}(m-p-q, \Sigma_{11\bullet 2})
$$
该分布与 $Z_{2}$ 无关


## Pro 2

假设 $W \sim  {W}_{p}\left( {m,\sum }\right)$ , 划分 $W = \left( \begin{array}{ll} {w}_{11} & {\mathbf{w}}_{12} \\  {\mathbf{w}}_{21} & {W}_{22} \end{array}\right) ,\sum  = \left( \begin{array}{ll} {\sigma }_{11} & {\mathbf{\sigma }}_{12} \\  {\mathbf{\sigma }}_{21} & {\sum }_{22} \end{array}\right)$ , 其中 ${w}_{11},{\sigma }_{11}$ 为标量, ${W}_{22},{\sum }_{22}$ 为 $\left( {p - 1}\right)  \times  \left( {p - 1}\right)$ 矩阵, 定义决定系数 ${R}^{2} = \frac{{\mathbf{w}}_{12}{W}_{22}^{-1}{\mathbf{w}}_{21}}{{w}_{11}}$ , 则当 ${\mathbf{\sigma }}_{12} = 0$ 时,

$$
\frac{m - p + 1}{p - 1} \times  \frac{{R}^{2}}{1 - {R}^{2}} \sim  {F}_{p - 1,m - p + 1}
$$

[[Wiki - F分布]]
### Proof

$$\frac{{R}^{2}} {1 - {R}^{2}} = \frac{{\mathbf{w}}_{12}{W}_{22}^{-1}{\mathbf{w}}_{21}}{{w}_{{11} \cdot  2}},{\sigma }_{{11} \cdot  2} = {\sigma }_{11}$$

(1) 由 pro 1, ${w}_{11 \bullet  2} = {w}_{11} - {\mathbf{w}}_{12}{W}_{22}^{-1}{\mathbf{w}}_{21} \sim  {W}_{1}\left( {m - p + 1,{\sigma }_{{11} \circ  2}}\right)  = {\sigma }_{11}{\chi }_{m - p + 1}^{2}$ .

(2) ${\mathbf{w}}_{21} \mid  {W}_{22} \sim  {N}_{p - 1}\left( {{W}_{22}{\sum }_{22}^{-1}{\mathbf{\sigma }}_{21},{W}_{22}{\sigma }_{11}}\right)  = {N}_{p - 1}\left( {\mathbf{0},{W}_{22}{\sigma }_{11}}\right)  \Rightarrow  {\mathbf{w}}_{21}^{\top }{W}_{22}^{-1}{\mathbf{w}}_{21} \sim  {\sigma }_{11}{\chi }_{p - 1}^{2}$
两者独立 (因为 ${w}_{{11} * 2}$ 与 ${\mathbf{w}}_{21},{W}_{22}$ 独立), 所以

$$
\frac{m - p + 1}{p - 1} \times  \frac{{R}^{2}}{1 - {R}^{2}} = \frac{{\mathbf{w}}_{12}{W}_{22}^{-1}{\mathbf{w}}_{21}/\left( {p - 1}\right) }{{w}_{{11} \bullet  2}/\left( {m - p + 1}\right) } \sim  {F}_{p - 1,m - p + 1}$$

