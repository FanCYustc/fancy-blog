---
aliases: 
info: 
date: 2024-06-29-星期六 20:22
update: 
tags:
  - 数学分析/极限
  - wiki/year2022
  - wiki/month10
id: wiki20240629202258
banner: "![[astrowalk.gif]]"
---
---

## The 1 

>[!info] 定义
$$\lim _{x \to 0}   \frac{\sin(x)}{x}=1$$

[[Wiki - 函数的极限]]

[[Wiki - 函数极限性质]]

### Proof

>[!question]+ 证明
>使用夹逼定理


## The 2 

 定义
$$\lim _{x \to \infty} \Big( 1 + \frac{1}{x}\Big)^x=e$$

### Proof

证明使用牛顿二项式定理, 比较 $x_{n}$ 与 $x_{n+1}$, 再使用单调有界准则 [[Wiki - 数列收敛判定#Pro 2 夹逼准则]]

## 推论1
$$
\lim _{x \to -\infty} \Big( 1 + \frac{1}{x}\Big)^x=e
$$



## 推论 2
$$
\lim _{x \to \infty} \Big( 1 - \frac{1}{x}\Big)^x
=\lim _{x \to \infty} \Big( 1 + \frac{1}{x}\Big)^{-x}
=\lim _{x \to -\infty} \Big( 1 - \frac{1}{x}\Big)^x
=\frac{1}{e}
$$
## 证明
根据换元$t=-x$ 可证
$$\lim_{ x \to \infty } (1-\dfrac{1}{x})^{x}=\lim_{ t \to -\infty } (1+\dfrac{1}{t})^{-t}=\lim_{ t \to -\infty } \dfrac{1}{(1+\dfrac{1}{t})^{t}}=\dfrac{1}{e}$$
