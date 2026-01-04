---
aliases: 
info: 
date: 2023-10-09-星期一 16:35
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 数学分析/多变量微积分
id: wiki20231009163523
banner: "![[astrowalk.gif]]"
---
---


## Def  1 加边海塞矩阵

```ad-definition
title: Definition 1

[[Wiki - 海塞矩阵]]

$$
\begin{pmatrix}
0& \frac{{\partial F}}{\partial x_{1}}& \dots& \frac{{\partial F}}{\partial x_{n}} \\
\frac{{\partial F}}{\partial x_{1}}& \frac{{\partial^{2}F}}{\partial x_{1}\partial x_{1}}& \dots& \frac{{\partial^{2}F}}{\partial x_{1}\partial x_{n}} \\
\vdots & \vdots & \ddots & \vdots \\
\frac{{\partial F}}{\partial x_{n}} & \frac{{\partial^{2}F}}{\partial x_{n}\partial x_{1}}  & \dots& \frac{{\partial^{2}F}}{\partial x_{n}\partial x_{n}}
\end{pmatrix}
$$

称为**海塞加边矩阵**

```

## Pro 1 判断条件极值

同海塞矩阵用于判断多变量函数极值[[Wiki - 多变量函数极值的判断]]，加边海塞矩阵用于判断条件极值 [[Wiki - 拉格朗日乘数法]]


```ad-proposition
title: Propositon 1

当加边海塞矩阵在条件极值点正（负）定时，在条件极值点取极小（大）值

```


**加边海塞矩阵不定也不一定不取极大极小值**
