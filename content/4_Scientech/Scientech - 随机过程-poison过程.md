---
aliases: 
info: 24春实用随机过程第2章
date: 2024-03-04-星期一 08:02
update: 
tags:
  - scientech/year2024
  - scientech/month03
  - 随机过程/poison过程
id: scientech20240304080220
banner: "![[astrofishing.gif]]"
---
---

# 第 2 章-poison 过程

[随机过程第2章课件](E:\课程资料\实用随机过程\SP-PPT-2.pdf)

## 2.1 Poison 过程

[[Wiki - 计数过程]]

[[Wiki - poison过程]]

[[Wiki - gamma分布|gamma分布]]

## 2.2 Poison 过程的性质

[[Wiki - poison过程的性质]] : 主要是条件分布为均匀分布的次序统计量

[[Wiki - poison过程的分类与合并]]

## 2.3 排队论

一个应用场景：排队论 [[Scientech - 运筹学-排队论]]

一般的 M/M/c 排队模型

M/G/ $\infty$ 模型：本质为 poison 过程分类：$N_{1}(t)$ 为 t 完成服务的顾客，$N_{2}(t)$ 为 t 正在接受服务的顾客。来了就能接受服务，无需排队，则有

$$\begin{aligned}
&N_{1}(t)\perp N_{2}(t)\text{,且}\\
&N_{1}(t)\sim\mathrm{Poisson}(\eta_{1}(t)),\quad N_{2}(t)\sim\mathrm{Poisson}(\eta_{2}(t)),\\
&\eta_{1}(t)=\lambda\int_{0}^{t}G(x)\mathrm{d}x,\quad\eta_{2}(t)=\lambda\int_{0}^{t}\overline{G}(x)\mathrm{d}x.\end{aligned}$$


## 2.4 非齐时 poison 过程

[[Wiki - 非齐时poison过程]]

非齐时都是从齐次 poison 过程变换过去的，处理也是变换成齐次的处理

对非齐时过程，有三个情景：

1、记录值过程

2、最小修理过程：要利用非齐时 NHPP 定义验证这些模型符合。

3、之前的 M/G/ $\infty$ 排队模型，记 $N(t)$ 为 t 之前完成服务的顾客数，则 N (t) 为强度函数为 $\lambda G(t)$ 的 NHPP

## 2.5 复合 poison 过程

与 poison 过程有关的一种随机变量序列

[[Wiki - 复合poison过程]]

## 2.6 条件 poison 过程

在去条件下可以构成 poison 过程的称为条件 poison 过程

[[Wiki - 条件poison过程]]

