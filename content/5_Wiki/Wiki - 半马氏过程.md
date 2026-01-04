---
aliases: 
info: 
date: 2024-06-13-星期四 23:23
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613232321
banner: "![[astrowalk.gif]]"
---
---

## Def 1 半马氏过程

```ad-definition
title: Definition 1

**半马氏过程** $\{Z(t),t\geq0\}$ 称为 SMP, 状态空间 $S=\{0,1,2,\ldots\}$, 如果给定当前过程处在“i”,

1、 下一次状态转移进入“$j$”的概率为 $P_{ij};$

2、在已知下一步转移进入 j 的条件下，过程**滞留** i 的时间分布为 $F_{ij}.$


```

转移概率矩阵 $(P_{ij})$ 对应的 MC 称为 $\{Z(t)\}$ 的嵌入 MC [[Wiki - markov链]]

如果嵌入 MC $\{X_{n}\}$ 是不可约的，就称 $\{Z(t)\}$ 是不可约的 [[Wiki - markov链的类]]（发现类其实只与转移矩阵有关）

**半马氏过程没有 markov 性**

## The 1 更新定理

记 $\mu_{i}=E\tau_{i}$ 为在 i **滞留时间的期望**，有
$$
\tau_{i}\sim H_{i}(x)=\sum_{j} P_{ij}F_{ij}(x)
$$

记 $\mu_{ii}=ET_{ii}$ 为相邻两次访问 i 的时间间隔的期望

```ad-theorem
title: Theorem 1

半马氏过程 SMP 为不可约, 且 $T_{ii}$ **非格子点**, $\mu_{ii}<\infty$，则
$$P_{i}=\lim_{t\to\infty}\mathrm{P}\left(Z(t)=i|Z(0)=j\right)=\frac{\mu_{i}}{\mu_{ii}},\quad\forall i,j$$

```

进一步还可以求 $\mu_{ii}$，若 $\{Z(t)\}$ 不可约，对应的嵌入 MC $\{X_{n}\}$ 正常返 [[Wiki - markov链的正常返与零常返]]，$\mu_{ii}<\infty$，则存在平稳分布 [[Wiki - markov链的平稳分布]] $\{\pi_{j}\}$，有

$$
P_{i} = \frac{{\pi_{i}\mu_{i}}}{\sum_{j} \pi_{j}\mu_{j}}
$$

### Proof

看到非子格点，就应该相到用 [[Wiki - 交替更新过程]]证明，其实是一个 [[Wiki - 延迟更新过程]]



