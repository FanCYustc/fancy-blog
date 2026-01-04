---
aliases: 
info: 
date: 2024-06-13-星期四 23:18
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613231824
banner: "![[astrowalk.gif]]"
---
---

## Def 1 逆向链


```ad-definition

一个**遍历的或不可约正常返**的 MC $\left\{X_n,n\geq0\right\}$ 必存在平稳分布
$\{\pi_i\}$, 当 $X_0$ 服从平稳分布 $\{\pi_i\}$ 时，其逆向链也是 MC.

```
[[Wiki - markov链]]

[[Wiki - markov链的正常返与零常返]]

[[Wiki - markov链的平稳分布]]

对于不可约正常返连续时间的 markov 链 [[Wiki - 连续时间markov链]] ![[Wiki - 连续时间markov链的平稳分布#The 1 平稳分布]]
```ad-theorem
title: Theorem 2

当 $X(0)$ 服从**稳态分布** $\{P_{i}\}$， 若嵌入链的平稳分布为 $\{\pi_{i}\}$，则 $\{X(t)\}$ 的逆向链也是连续时间的 markov 链



```

## Pro 1 

```ad-proposition
title: Propositon 1

 一个不可约的 MC 的转移概率矩阵为 $\mathbb{P}=(P_{ij})$. 若存在

一个 pmf $\{\pi_i\}$ 和一个转移概率矩阵 $\mathbb{P}^*=(P_ij^*)$ 使得
$$\pi_iP_{ij}=\pi_jP_{ji}^*,\quad\forall\:i,j,$$

(i) $\{ \pi _i\}$ 为原 MC 的一个平稳分布；

(ii) $P_{ij}^*$ 为逆向链的转移概率；

(iii) $\{\pi_i\}$ 也为逆向链的一个平稳分布.

```

对于连续时间 markov 链存在逆向链，同样有 $\pi_{j}P_{ji}=P_{ij}^{*}\pi_{i}$ 为逆向链的嵌入 markov 链的转移概率

另外对于连续时间 markov 链，$Q=(q_{ij})$ 为转移速率矩阵，如果能找到一个 $Q^{*}=(q_{ij}^{*})$ 和一个 pmf $\{P_{i}\}$，使得 $P_{i}q_{ij}=P_{j}q_{ji}^{*},\forall i,j$，且 $\sum_{j\neq i} q_{ij} = \sum_{j\neq i} q_{ij}^{*}, \forall i$，则 $Q^{*}$ 和 $\{P_{i}\}$ 分别为逆向链的转移速率矩阵和正向逆向链的共同稳态分布

### Proof

利用 
$$
\sum_{i}\pi_{i}P_{ij} = \sum_{i} \pi_{j}P_{ji}^{*}=\pi_{j}
$$

[[Wiki - 时间可逆的markov链]]

