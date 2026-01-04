---
aliases: 
info: 条件期望的定义和应用
date: 2023-11-06-星期一 10:57
update: 2023-11-06-Monday 10:59:49
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/期望方差
id: wiki20231106105716
banner: "![[astrowalk.gif]]"
---
---


## Def 1 条件期望的定义

条件数学期望是概率论中一个非常重要的概念，它将随机变量的期望推广到已知部分信息的情况。

### 1.1 离散随机变量的条件期望（引例）

对于离散随机变量 $Y$ 和 $X$，当给定 $X=x$ 时 $Y$ 的条件期望定义为：

```ad-definition
title: 定义 1.1 （离散情况）

$Y$ 关于 $X=x$ 的条件期望为：
$$\operatorname{E}\left[Y|X=x\right]=\sum_y y \operatorname{P}(Y=y|X=x)\text{ (假设存在)}$$
其中，$\operatorname{P}(Y=y|X=x) = \frac{\operatorname{P}(Y=y, X=x)}{\operatorname{P}(X=x)}$。
对于连续随机变量，则将求和符号替换为积分：
$$\operatorname{E}\left[Y|X=x\right]=\int_{-\infty}^{\infty}y\operatorname{d}F_{Y|X}(y|x)\text{ (假设存在)}$$
这里 $F_{Y|X}(y|x)$ 是给定 $X=x$ 时 $Y$ 的条件分布函数。
````

[[Wiki - 条件分布与条件密度]]

通过这种方式，$\operatorname{E}[Y|X=x]$ 是关于 $x$ 的一个确定性函数，被称为**回归函数**。

### 1.2 一般条件期望的定义（基于 $\sigma$-代数）

更一般地，条件期望是关于一个 $\sigma$-代数（子事件域）的随机变量，它捕获了我们已知的“信息”。[[Wiki - 数学期望]]

```ad-definition
title: 定义 1.2 （一般情况）

设 $(\Omega, \mathcal{F}, \operatorname{P})$ 为一个概率空间，$X$ 是定义在该空间上的一个实值可积随机变量（即 $X \in L^1(\mathcal{F})$），$\mathcal{G}$ 是 $\mathcal{F}$ 的一个子 $\sigma$-代数（即 $\mathcal{G} \subset \mathcal{F}$）。那么，存在一个**几乎处处唯一**的**可积随机变量 $Y \in \mathcal{G}$** (即 $Y$ 是 $\mathcal{G}$-可测的且可积) 满足以下条件：
$$\operatorname{E}[Y|\boldsymbol{G'}] = \operatorname{E}[X|\boldsymbol{G'}], \quad \forall \boldsymbol{G'} \in \mathcal{G}$$
我们将这个几乎处处唯一的随机变量 $Y$ 记为 $\operatorname{E}[X|\mathcal{G}]$，称之为随机变量 $X$ 关于子事件域 $\mathcal{G}$ 的**条件数学期望**。

如果 $\mathcal{G} = \sigma(Z)$ (由随机变量 $Z$ 生成的 $\sigma$-代数)，则记为 $\operatorname{E}[X|Z]$，这意味着 $\operatorname{E}[X|Z]$ 是 $\sigma(Z)$-可测的，因此存在一个可测函数 $f$ 使得 $\operatorname{E}[X|Z] = f(Z)$。这个函数 $f$ 也被称为**回归函数**。
```

`E[X|G]` 是一个随机变量，其值取决于在 $\mathcal{G}$ 上可观测到的信息。它的存在唯一性是基于 **[[Wiki - R-N导数|Radon-Nikodym定理]]** 得以证明的（讲义第 4.1 节）。

[[Wiki - 条件期望的性质]]

## Pro 2 $L^2$ 空间中的投影理解与条件方差

条件期望在 $L^2$ 空间中扮演着特殊的角色。

```ad-proposition


设 $X \in L^2(\mathcal{F})$ （即 $\operatorname{E}[X^2] < \infty$）且 $\mathcal{G} \subset \mathcal{F}$ 是一个子 $\sigma$-代数。条件期望 $\operatorname{E}[X|\mathcal{G}]$ 是 $L^2(\mathcal{G}) = \{Y \in \mathcal{G} : \operatorname{E}[Y^2] < \infty\}$ 中与 $X$ 距离最近的元素，即它是以下优化问题的解：
$$\operatorname{E}[X|\mathcal{G}] = \arg \min_{Y \in L^2(\mathcal{G})} \operatorname{E}[(X-Y)^2]$$
这意味着 $\operatorname{E}[X|\mathcal{G}]$ 是 $X$ 在 $L^2(\mathcal{F})$ 空间向其子空间 $L^2(\mathcal{G})$ 上的**正交投影**。
几何上，这意味着误差项 $X - \operatorname{E}[X|\mathcal{G}]$ 与任何 $\mathcal{G}$-可测的 $Y \in L^2(\mathcal{G})$ 都是正交的，即 $\operatorname{E}[(X - \operatorname{E}[X|\mathcal{G}])Y] = 0$。
```

[[Wiki - Lp线性空间]]


