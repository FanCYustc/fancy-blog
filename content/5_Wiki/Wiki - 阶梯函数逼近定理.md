---
aliases: 
info: 
date: 2024-03-31-星期日 10:45
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
  - 数学分析/级数
  - 收敛
id: wiki20240331104507
banner: "![[astrowalk.gif]]"
---
---

## Def 1 阶梯函数

见 [[Wiki - 简单函数逼近定理#Def 1 简单函数]]中

## The 1 逼近定理

设 $f$ 是 $\mathbb{R}^d$ 上的可测函数 [[Wiki - 可测函数]]. 则存在一列阶梯函数 $\{\psi_k\}_{k=1}^\infty$ 使得 $\psi_k$**几乎处处**收敛至 $f.$

[[Wiki - 几乎处处收敛]]

[[Wiki - 函数项级数]]

### Proof 

为证明此定理，我们需要如下引理.

对任意具有紧支集的简单函数 $\varphi$, 对任意 $\epsilon>0$, 存在阶梯函数 $\psi$ 满足
$$m\left(\left\{x\in\mathbb{R}^d:\psi(x)\neq\varphi(x)\right\}\right)<\epsilon.$$

[[Wiki - lebesgue可测]]

用到 [[Wiki - Littlewood三原则#The 1 原则一]]，具体见于树澄[[实分析讲义-于树澄.pdf]] 第 8 讲定理 8.10 证明

