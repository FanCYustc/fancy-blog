---
aliases: 
info: fourier级数及系数求法
date: 2023-07-01-星期六 16:30
update: 
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
id: wiki20230701163033
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## Def1 Fourier 级数

```ad-definition
title: Definition 1

```
将 L 中的函数展开成

$$
f=\dfrac{a_{0}}{2}+\sum ^{\infty }_{n=1}\left ( a_{n}\cos nx+b_{n}\sin nx\right)
$$

称为函数的 Fourier 级数[[Wiki - 函数项级数]]展开，即将 f 映射为在三角函数系 [[Wiki - 三角函数系]]上的坐标

经计算

$$
\begin{aligned}a_{m}=\dfrac{1}{\pi }\int _{-\pi }^{\pi }f\left ( x\right) \cdot \cos mxdx\\

b_{m}=\dfrac{1}{\pi }\int _{-\pi }^{\pi }f\left ( x\right) \cdot \sin mxdx\end{aligned}
$$


求系数**只需要用到 f 可积**

目前求 Fourier 展开的系数基本就是分部积分

## Pro 1 dirichlet 积分形式

[[Wiki - dirichlet积分]]

