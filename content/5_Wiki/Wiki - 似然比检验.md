---
aliases: 
info: 似然比检验的使用方法
date: 2024-05-14-星期二 14:08
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240514140833
banner: "![[astrowalk.gif]]"
---
---

## Def 1 似然比检验

```ad-definition
title: Definition 1

设样本 $\boldsymbol{X}$ 有概率函数 $f(x,\theta),\theta\in\Theta$, 而 $\theta_0$ 为参数空间 $\theta$ 的
真子集，考虑检验问题 $H_{0}:\theta\in \Theta\leftrightarrow H_{1}:\theta\notin \Theta$, 则统计量
$$\lambda(\boldsymbol{x})=\frac{\sup_{\theta\in\Theta}f(\boldsymbol{x},\theta)}{\sup_{\theta\in\Theta_0}f(\boldsymbol{x},\theta)}$$
称为关于该检验问题的**似然比**. 而由下述定义的检验函数
$$\left.\varphi(\boldsymbol{x})=\left\{\begin{array}{cc}1,&\lambda(\boldsymbol{x})>c,\\r,&\lambda(\boldsymbol{x})=c,\\0,&\lambda(\boldsymbol{x})<c,\end{array}\right.\right.$$
为似然比检验

```

[[Wiki - 检验函数]]

[[Wiki - 极大似然估计]]

注意是全空间**极大值**/零空间极大值

若想要检验水平[[Wiki - 功效函数|检验水平]]位 $\alpha$ 的检验，则需要选取合适的 c 和 r

```ad-tip

一般来说 $\lambda(x)$ 形式复杂，但如果存在统计量 T 使得 $\lambda(x)=g(T(x))$ 为关于 T 单调增函数，则似然比检验等价于


$$
\left.\varphi(\boldsymbol{x})=\left\{\begin{array}{cc}1,&T(\boldsymbol{x})>c,\\ 
r,&T(\boldsymbol{x})=c,\\ 
0,&T(\boldsymbol{x})<c,\end{array}\right.\right.$$


```


对于连续性的随机变量，其实没有 $\varphi (x)=r, \lambda(x)=c$ 这一部分

