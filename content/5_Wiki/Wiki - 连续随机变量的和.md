---
aliases:
  - 伽玛分布、正态分布的再生性
info: 连续随机变量的和和再生性
date: 2023-10-16-星期一 10:21
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机变量
  - 概率论/随机向量
  - 独立性
id: wiki20231016102134
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 离散随机变量的和]]

## Pro 1 连续型随机变量的和

```ad-proposition
title: Propositon 1

如果 (X, Y) 是二维连续型随机向量, 它们的联合密度为 $p(x,y)$, 
 则它们的和 $X+Y$ 是连续型随机变量, 具有密度函数

$$
p_{X+Y}(x)=\int_{=\infty}^{\infty}p(x-t,t)\mathrm{d}t=\int_{=\infty}^{\infty}p(u,x-u)\mathrm{d}u,\quad\forall x\in\mathbb{R}.
$$


```

 [[Wiki - 卷积]]
## Pro 2 独立随机变量和的分布

```ad-definition
title: Definition 1

若连续型随机变量 X 与 Y **相互独立** ，

$$F_Z(z)=\int_{-\infty}^{\infty}F_2(z-x)dF_1(x)=\int_{-\infty}^{\infty}F_1(z-y)dF_2(y),\quad z\in\Re,$$
[[Wiki - 卷积]]

```

[[Wiki - 连续型随机变量的独立性]]

## The 1 随机变量和的分布

```ad-theorem
title: Theorem 1

设 $X_1,X_2,\ldots,X_n$ **相互独立**, $X_i\sim F_i$, 则 $Z=\sum_{i=1}^nX_i$ 的 cdf 为


```

$$
F_{Z}(z)=F_{1}*F_{2}*\cdots*F_{n}.
$$

[[Wiki - 分布函数]]
## Pro 1 伽玛函数的再生性

[[Wiki - 离散随机变量的和|分布的再生性]]

```ad-proposition
title: Propositon 1

$$\begin{aligned}X&\sim\Gamma(\alpha_1,\lambda),Y\sim\Gamma(\alpha_2,\lambda),\text{且X 与 }Y\text{相互独立}\\&X+Y\sim\Gamma(\alpha_1+\alpha_2,\lambda).\end{aligned}$$



```
[[Wiki - gamma分布]]
## Pro 2 正态分布的再生性

```ad-proposition
title: Propositon 2


$$\begin{aligned}&X\sim N(\mu_1,\sigma_1^2),Y\sim N(\mu_2,\sigma_2^2),\\&\text{且X 与 Y 相互独立}\\&X+Y\sim N(\mu_1+\mu_2,\sigma_1^2+\sigma_2^2).\end{aligned}$$


```

[[Wiki - 随机变量的独立性]]

[[Wiki - 正态分布]]