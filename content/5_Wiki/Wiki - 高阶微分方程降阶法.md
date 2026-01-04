---
aliases: 
info: 
date: 2024-05-29-星期三 19:00
update: 
tags:
  - wiki/year2024
  - wiki/month05
id: wiki20240529190018
banner: "![[astrowalk.gif]]"
---
---


## $y^{(n)}=f(x)$
连续求积分n次, 即可解得
$$y^{n-1}=\int f(x) \, dx+C_{1}$$
$$y^{n-2}=\int \Big[\int f(x) \, dx +C_{1} \Big] \, dx +C_{2}$$
$$...$$
[[Wiki - 常微分方程的解]]

## $y''=f(x,y')$
>[!tip] 第一积分法
设 $y'=p$ , 则 $y''=p'$
带入原方程得
$$p'=f(x,p)$$

这是一个一阶线性微分方程， [[Wiki - 一阶线性微分方程的解法]], 参照对应解法, 设通解为 $p=\phi(x,C_{1})$ 
但是$p=\frac{dy}{dx}$ ,带入后积分得解
$$y=\int \phi(x,C_{1}) \, dx+C_{2} $$

## $y''=f(y,y')$
设$y'=p$ , 则$y''=\frac{dp}{dx}=p'$ 

[[Wiki - 高阶微分方程降阶法]]