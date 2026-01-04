---
aliases:
  - 格点分布
info: 
date: 2024-04-16-星期二 16:41
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/更新过程
id: wiki20240416164111
banner: "![[astrowalk.gif]]"
---
---

## Def 1 格点分布

```ad-definition
title: Definition 1

格点分布：设非负随机变量 $X\sim F$. 称 X 为格点的，若存在 $d>0$ 使得

$$
\sum_{k=0}^{+\infty}P(X=kd)=1
$$

此时，F 称为**格点分布**. 满足上述性质的最大 $d$ 称为 X 的周期. 否则为**非格点分布**



```

## The 1 Blackwell 定理

```ad-theorem
title: Theorem 1

对更新过程 $\{X_{n}\}$ 为间隔分布~F，$\mu=EX_{1}$。若 F 是非格点的，则
$$
\lim_{ t \to \infty }[m(t+a)-m(t)]= \frac{a}{\mu} 
$$
若 F 是格点的

$$
\lim_{ n \to \infty }E[于时刻nd的更新次数] =\frac{d}{\mu} 
$$



```

[[Wiki - 更新过程]]

### Proof

对于非格点，由关键更新定理证明 ![[Wiki - 关键更新定理#Proof]]