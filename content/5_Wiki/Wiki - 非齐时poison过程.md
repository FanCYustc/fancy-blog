---
aliases: 
info: 
date: 2024-04-15-星期一 19:56
update: 
tags:
  - wiki/year2024
  - 随机过程/poison过程
  - wiki/month03
id: wiki20240415195616
banner: "![[astrowalk.gif]]"
---
---

## Def 1 非齐时 poison 过程

```ad-definition
title: Definition 1

```
计数过程[[Wiki - 计数过程]] $\{N(t),t\geq0\}$ 称为强度函数 $\lambda(t)$ 的**非齐次 Poisson 过程**，若
1. $N(0)=0;$ 
2. 过程具有独立增量性质；
3. 
$$
\mathrm{P}\left(N(t+h)-N(t)=1\right)=\lambda(t)h+\circ(h);
$$

4. $P(N(t+h)-N(t)\geq2)=\circ(h).$

记为NHPP$(\lambda(t))$，这里要求$\lambda(t)$连续

等价定义：

计数过程 $\{N(t),t\geq0\}$ 称为强度函数 $\lambda(t)$ 的 NHPP, 若：
1. $N(0)=0;$
2. 过程具有独立增量性质；
3. $N(t+s)-N(s)\sim\operatorname{Poi}\left(m(t+s)-m(s)\right),\forall s\geq0,t>0.$[[Wiki - 泊松分布]]

其中 $m(t)=\int _{0}^{t} \lambda(s) \, ds$


即把 [[Wiki - poison过程#Def 2 poison 过程]]中的 $\lambda$ 换成 $\lambda(t)$ 可变



```ad-info

**只有独立增量性质，不再有平稳增量性质**

```

## Pro 1 与 poison 分布

```ad-proposition
title: Propositon 1

设 $\{N(t),t\geq0\}$ 为强度函数 $\lambda(t)$ 的 NHPP, 则

$$
N(t+s)-N(t)\sim\mathrm{Poi}\left(m(t+s)-m(t)\right),\quad t\geq0,s>0,
$$


```

### Proof

见胡太忠随机过程 PPT[[实用随机过程PPT.pdf]]第二章 2.4

## Pro 2 与齐次的关系

```ad-proposition
title: Propositon 2

设 $\lambda (t)$ 连续, 满足 $\lambda (t)\leq\lambda_{0}<\infty,\quad\forall t\geq0$. 设 $\{N^{*}(t), t\geq0\}$ 是 $HPP(\lambda_{0})$, 且于时刻 s 发生的事件以概率 $\rho (s)=\frac{\lambda (s)}{\lambda_{0}}$ 划入一型, 以 $N(t)$ 为 $(0, t]$ 时间段划入一型事件数, 则 $\{N (t), t\geq0\}$ 是强度函数为 $\lambda (t)$ 的 NHPP

```

![[Wiki - poison过程的分类与合并#Pro 1 分类]]

即 NHPP 可视为 HPP 的抽样

## Pro 3 与齐次的关系

NHPP 可视为 HPP 对时间进行变换

```ad-proposition
title: Propositon 3

设 $\lambda(t)>0$ 连续，定义

$$
m(t)=\int_0^t\lambda(s)\operatorname{d}s,\quad t>0.
$$
 因为 m (t) 单调连续，设 $\{N(t),t\geq0\}$ 是强度函数为 $\lambda(t)$ 的 NHPP, 定义

$$
N^*(t)=N(m^{-1}(t)),
$$

则 $\{N^*(t),t\geq0\}$ 是 HPP (1).

```



## Cal 1

设计数过程 $\{N(t),t\geq0\}$ 的事件发生时刻为

$$
0<S_1<S_2<\cdots<S_n<\cdots,
$$

且 $m(0)=0,m^{\prime}(t)=\lambda(t)>0$. 若
$m ( S_1) , \quad m ( S_2) - m ( S_1) , \ldots , m ( S_n) - m ( S_{n- 1}) , \ldots$ iid $\sim Exp(1)$ ,  则 $\{N(t),t\geq0\}$ 是强度函数为 $\lambda(t)$ 的 NHPP.
