---
aliases: 
info: 24春实用随机过程第3张
date: 2024-03-19-星期二 14:10
update: 
tags:
  - scientech/year2024
  - scientech/month03
  - 随机过程/更新过程
id: scientech20240319141046
banner: "![[astrofishing.gif]]"
---
 ---

# CH3-更新过程

[第 3 章课件](E:\课程资料\实用随机过程\SP-PPT-3.pdf)

## 3.1 更新过程

[[Wiki - 更新过程]]

## 3.2 更新方程

主要研究 N (t) 的分布性质

[[Wiki - 更新方程]]

更新函数具体求法虽然有，但很难算，但有一些对 m (t) 大小的估计

[[Wiki - 更新函数大小的估计]]

## 3.3 更新极限定理

[[Wiki - Wald等式]]

[[Wiki - 基本更新定理]]

[[Wiki - Blackwell定理]]

## 3.4 关键更新定理

[[Wiki - 直接黎曼可积]]

[[Wiki - 关键更新定理]]

### 应用

为了用关键更新定理，解题时要想办法化成

$$\begin{aligned}g(t)&=h(t)+\int_{0}^{t}g(t-x)\operatorname{d}F(x),\quad t\geq0;\\g(t)&=h(t)+\int_{0}^{t}h(t-x)\operatorname{d}m(x),\quad t\geq0.\end{aligned}$$

这两个式子是可以互相转化的。第一个式子是对 $S_{1}$ 取条件；第二个式子对最后一次更新取条件。

第一项 $h (t)=P (A_{t}|X_{1}>t) \overline{F}(t)$ 是统一的，$A_{t}$ 是待求的事件

推论：
```ad-lemma


$$\mathcal{P}(S_{N(t)}\leq s)=\overline{F}(t)+\int_{[0,s]}\overline{F}(t-y)\operatorname{d}m(y).$$

$$
dF_{S_{N}(t)}(y)= \overline{F}(t-y)dm(y),y>0
$$


```

## 3.5 交替更新过程

[[Wiki - 交替更新过程]]

交替更新过程的应用：求元件年龄 $A(t)=t-S_{N(t)}$ 和元件剩余年龄 $Y(t)=S_{N(t)+1}-t$ 的极限分布（还未整理）

从而发现有检查悖论

推论：

```ad-proposition
title: Propositon 1

F 非格点，$X\sim F$, 且 E $X^2<\infty$, 则

$$
\lim_{t\to\infty}\mathbb{E}Y(t)=\frac{\mathbb{E}X^2}{2\mu}.
$$
 

```

上面性质的推论：
设 F 非格点，$X\sim F$, 且 E $X^2<\infty$, 则

$$
\lim_{ t \to \infty }\left[ m(t)- \frac{t}{\mu} \right] = \frac{{EX^{2}}}{2\mu^{2}} -1 
$$
  

## 3.6 延迟更新过程

[[Wiki - 延迟更新过程]]

重要的应用：花样问题[[Wiki - 花样问题]]

## 3.7 更新酬劳过程


