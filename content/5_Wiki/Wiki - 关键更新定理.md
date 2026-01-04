---
aliases: 
info: 
date: 2024-04-16-星期二 16:51
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/更新过程
id: wiki20240416165130
banner: "![[astrowalk.gif]]"
---
---

## The 1 关键更新定理

```ad-theorem
title: Theorem 1

对于时间间隔分布为 F 的更新过程，$\mu=\mu_{F}=EX$ ，若 F 非格子点分布，且 $h$ 为直接黎曼可积，则

$$
\int_0^th(t-x)\operatorname{d}m(x)~\to~\frac1\mu\int_0^\infty h(s)\operatorname{d}s,\quad t\to\infty,
$$


```

 [[Wiki - 更新过程]]
 
[[Wiki - 直接黎曼可积]]

非格点分布 ![[Wiki - Blackwell定理#Def 1 格点分布]]

## Pro 1 

关键更新定理与 Blackwell 定理等价 [[Wiki - Blackwell定理]]

### Proof


$$\begin{aligned}&\text{ 取 }h(x)=1_{[0,a)}(x),\text{ 则}\\
\int_{0}^{t}h(t-x)\mathrm{~d}m(x)&\quad=\quad\int_{0}^{t}1_{(t-a,t]}(x)\mathrm{~d}m(x)\\&\quad=\quad m(t)-m(t-a)\to\frac{a}{\mu}.\end{aligned}$$


逆定理要由阶梯函数逼近 Riemann 可积函数证明 [[Wiki - 阶梯函数逼近定理]]

## 应用

见 ![[Scientech - 随机过程-更新过程#应用]]



