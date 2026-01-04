---
aliases: 
info: 
date: 2025-01-01-星期三 20:50
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 回归分析/线性回归
id: wiki20250101205029
banner: "![[astrowalk.gif]]"
---
---

## The 1 最小二乘估计

对于简单线性回归模型 $y= a+bx+\epsilon$，参数 $a,b$ 的矩估计 [[Wiki - 矩估计]]与最小二乘估计一致，

[[Wiki - 简单线性回归模型]]

即 $\hat{b}= \frac{s_{yx}}{s_{x x}}, \hat{a}= \overline{y}- \hat{b} \overline{x}$，其中 $s_{x x}= \sum_{i=1}^{n}(x_{i}-\overline{x})^{2}$ ，$s_{yx}= \sum_{i}(x_{i}-\overline{x})(y_{i}-\overline{y})= \sum_{i}(x_{i}-\overline{x})y_{i}$。 同时
$$
(\hat{a},\hat{b}) = \arg\min_{a,b}\left( \sum_{i=1}^{n}(y_{i}- a-bx_{i})^2 \right) 
$$
最小二乘估计使得误差平方和最小。

## Pro 1

1、最小二乘估计 $\hat{a},\hat{b}$ 是无偏估计 [[Wiki - 无偏估计]]

2、
 $$
Var\begin{pmatrix}
\hat{a} \\
\hat{b}
\end{pmatrix}|x = \begin{pmatrix}
\frac{\sigma^{2}}{n}+ \frac{\overline{x}^{2}\sigma^{2}}{s_{x x}} & -\frac{\overline{x}\sigma^{2}}{s_{x x}} \\
 - \frac{\overline{x}\sigma^{2}}{s_{x x}} & \frac{\sigma^{2}}{s_{x x}}
\end{pmatrix}
$$

这告诉我们采样样本方差越大，估计越准确
### Proof

$$
Var[\hat{b}|x]= \frac{{\sum_{i=1}^{n}(x_{i}-\overline{x})^{2}Var[y_{i}|x_{i}]}}{\left( \sum_{i=1}^{n}(x_{i}-\overline{x})^{2} \right)^{2}} = \frac{\sigma^{2}}{s_{ x x}} 
$$

$$
Var[\hat{a}|\mathbf{x}]= Var[\overline{y}|\mathbf{x}]+ \frac{\overline{x}^{2}\sigma^{2}}{s_{x x}}- 2\overline{x}Cov(\hat{b}, \overline{y})= \frac{\sigma^{2}}{n}+ \frac{\overline{x}^{2}\sigma^{2}}{s_{x x}}
$$

## Pro 2 有效性

在所有 b 的线性无偏估计中，LS 估计 $\hat{b}$ 的方差最小 [[Wiki - 方差]]

### Proof
 
 证明：设 $\tilde{b} = \sum c_i y_i$ 是 b 的线性无偏估计，则  
 
 $$ b = E(\tilde{b}|x) = \sum c_i E(y_i|x) = \sum c_i (a + b x_i) = a (\sum c_i) + b (\sum c_i x_i) $$
  
  对任何参数 $a, b$ 都成立，因此 $\sum c_i = 0$, $\sum c_i x_i = 1$. 因为  
  
  $$ var (\tilde{b}|x) = \sum c_i^2 var (y_i|x) = \sigma^2 \sum c_i^2, \quad var (\hat{b}|x) = \sigma^2 / \sum (x_i - \bar{x})^2 $$
  
为证 $var (\hat{b}|x) ≥ var (\hat{b}|x)$，只需证明 $\sum c_i^2 \sum (x_i - \bar{x})^2 ≥ 1$，由 Cauchy - Schwarz 不等式 [[Wiki - Cauchy-Schwarz不等式]]， 

$$ \sum c_i^2 \sum (x_i - \bar{x})^2 ≥ (\sum c_i (x_i - \bar{x}))^2 = (\sum c_i x_i - \bar{x} \sum c_i)^2 = 1 
$$
