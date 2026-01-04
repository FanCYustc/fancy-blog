---
aliases: 
info: 切片函数，积分可交换
date: 2024-04-22-星期一 10:12
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/lebesgue积分
id: wiki20240422101259
banner: "![[astrowalk.gif]]"
---
---

## Def 1 函数切片

将空间分解为  $\mathbb{R}^{d}=\mathbb{R}^{d_{1}}\times \mathbb{R}^{d_{2}}$，令 $E_{x}= \{x\in \mathbb{R}^{d_{1}}, (x, y)\in E\}, E_{y} = \{y \in \mathbb{R}^{d_{2 }},(x,y)\in E\}$

固定 y, $f^{y}(x)=f(x,y)$ 称为**切片函数**。$f^{x}(y)$ 同理

## The 1 fubini 定理

[[Scientech - 实分析-lebesgue积分#2.1 lebesgue 积分]]


```ad-theorem
title: Theorem 1

Suppose $f (x, y)$ is integrable on $\mathbb{R}^{d_1}\times\mathbb{R}^{d_2}$. Then for almost every $y\in\mathbb{R}^{d_2}:$

(i) The slice $f^y$ is integrable on $\mathbb{R} ^d_1.$ 

(ii) The function defined by $\int_{\mathbb{R}^d_1}f^y (x)\: dx$  is integrable on $\mathbb{R}^{d_2}.$

(iii) Moreover, 
$$\int_{\mathbb{R}^{d_{2}}}\left(\int_{\mathbb{R}^{d_{1}}}f(x,y)dx\right)dy=\int_{\mathbb{R}^{d}}f.$$



```

类似对 x 也成立

```ad-tip

会与 Torelli 搭配使用：

```

对可测函数 f，由 [[Wiki - Tonelli定理]]，$\int |f| \, dm= \int _{\mathbb{R}^{d_{1}}}\left( \int _{\mathbb{R}^{d_{2}}}|f(x,y)| \, dx \right) \, dy$

如果此积分值有限，则有 f 可积，再对 f 应用 fubini 定理，可以计算出 $\int  f \, dx$


### Proof

先证明特殊函数满足 fubini 定理，再用特殊函数逼近所有可积函数--特殊函数选取**示性函数**。

1、定义 $\mathscr{F}$ 为满足条件的函数集，目标是 $\mathscr{F}=L^{1}(\mathbb{R}^{d})$，首先证明 $\mathscr{F}$ 关于线性运算和单调极限封闭。

2、若 E 可测且 $m(E)<\infty$，则 $f= \mathcal{X}_{E}\in \mathscr{F}$

2.1、E 为方体，则 $E=Q_{1}\times Q_{2}$，分别为 $\mathbb{R}^{d_{1}}$ 和 $\mathbb{R}^{d_{2}}$ 中的方体。

2.2  $G=\partial Q$ 为方体的边界，其实是对 $E\subset G, m (G)=0,\chi_{G}\in \mathscr{F}$

2.3 E 为有限个闭方体的几乎不交并：拆分成开方体和若干不交零测集的不交并，利用线性运算封闭。

2.4 对于有限测度开集，可以写成至多可数个方体几乎不交并 [[Wiki - 开集的结构定理#The 2 开集结构定理]]

2.5 对 $G_{\delta}$ 集 E，可以写成可数个有限测度开集的交。

（对 2.4，2.5 由于可数集的运算，需要用到对极限封闭的性质）

2.6 E 为零测集，利用 [[Wiki - lebesgue可测集的性质#Cal 1]] 存在 $E\subset G_{\delta},m(G_{\delta})=0$，利用 2.2

2.7 E 为一般有限测度集合，利用 $G_{\delta}$ 集并上零测集

3、证明 $L^{1}(\mathbb{R}^{d})\subset \mathscr{F}$ 在前面对示性函数的讨论中可以得到 $\{可积简单函数\}\subset \mathscr{F}$，再利用[[Wiki - 简单函数逼近定理]]

具体见[[实分析讲义-于树澄.pdf]] 讲义第 16 节定理 16.3 的证明

