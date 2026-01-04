---
aliases: 
info: 刘维尔公式
date: 2023-11-14-星期二 17:26
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
  - 微分方程/微分方程组
id: wiki20231114172643
banner: "![[astrowalk.gif]]"
---
---

## The 1 刘维尔公式

```ad-theorem
title: Theorem 1

对 n 维齐次线性微分方程组的 n 个解 $\boldsymbol{y}_{1}(x),\dots \boldsymbol{y}_{n}(x)$，其朗斯基行列式为 W (x)，则有

$$W(x)=W(x_0)e^{\int_{x_{0}}^{x} \mathrm{tr}A(x)dx},\quad(a<x<b)$$




```

[[Wiki - 矩阵的迹]]

[[Wiki - 朗斯基行列式]]
### Proof

$$\begin{aligned}
\frac{d\boldsymbol{W}}{\boldsymbol{dx}}& \left.=\sum_{i=1}^{n}\left|\begin{array}{ccc}y_{11}&y_{12}&\cdots&y_{1R_{..}}\\\cdots\\\\\frac{dy_{i1}}{dx}&\frac{dy_{i2}}{dx}&\cdots&\frac{dy_{in}}{dx}\\\cdots\\y_{n1}&y_{n2}&\cdots&y_{nn}\end{array}\right.\right|    \\
& \left.=\sum_{i=1}^n\left|\begin{array}{ccc}y_{11}&y_{12}&\cdots&y_{1n}\\\cdots\\\sum_{j=1}^na_{ij}y_{j1}&\sum_{j=1}^na_{ij}y_{j2}&\cdots&\sum_{j=1}^na_{ij}y_{jn}\\\cdots\\y_{n1}&y_{n2}&\cdots&y_{nn}\end{array}\right.\right|  \\
&=\sum_{i\text{ = 1}} ^ n a _ { i i }\cdot W=\mathrm{tr}A(x)\cdot W
\end{aligned}$$

由行列式求导公式[[Wiki - 特征值和特征向量的计算|矩阵求导]]

这个一阶微分方程组的解就是刘维尔公式所表示的



## Cal 1 

```ad-proposition
title: Propositon 1

对一组确定的解组，W（x）要么恒为 0；要么**恒不为 0**$(a<x<b)$，此时为基本解组 

```

**提供了判断了是否为基本解组的方法，注意在 a<x<b 中讨论**

[[Wiki - 齐次线性微分方程组解的结构]]