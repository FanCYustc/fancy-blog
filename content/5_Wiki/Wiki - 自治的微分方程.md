---
aliases: 
info: 自治微分方程的特点和解法
date: 2023-10-26-星期四 09:59
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231026095926
banner: "![[astrowalk.gif]]"
---
---
## Def 1 自治微分方程
```ad-definition
title: Definition 1


$$
F\left( y, \frac{dy}{dx}, \frac{d^{2}y}{dx^{2}},\dots, \frac{d^{n}y}{dx^{n}} \right)=0
$$
称为**自治的**或驻定的方程

```


## SOL 降阶

$$\begin{aligned}\text{令}z&=\frac{dy}{dx}\text{,则有桓等式}\\&\begin{aligned}\frac{d^2y}{dx^2}&=\frac{dz}{dx}=\frac{dz}{dy}\frac{dy}{dx}=z\frac{dz}{dy}.\\\frac{d^3y}{dx^3}&=\frac{d}{dx}\left|z\frac{dz}{dy}\right|=z^2\frac{d^2z}{dy^2}+z\left|\frac{dz}{dy}\right|^2.\end{aligned}\\&\dots\\&\frac{d^ny}{dx^n}=\varphi(z,\frac{dz}{dy},\cdots,\frac{d^{n-1}z}{dy^{n-1}})\end{aligned}$$

多了一个变量 z，但降阶为 $F_{1}\left( y,z, \frac{dz}{dy}, \dots, \frac{d^{n-1}z}{dy^{n-1}} \right)=0$

```ad-note

虽然降阶求出z和y的表达式，但还要带回秋y和x的关系式

```
