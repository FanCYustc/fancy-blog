---
aliases: 
info: 24春实用随机过程第5章
date: 2024-05-08-星期三 21:18
update: 
tags:
  - scientech/year2024
  - scientech/month05
  - 随机过程/markov链
id: scientech20240508211806
banner: "![[astrofishing.gif]]"
---
---

# CH5-连续时间的 markov 链

本章研究的是具有时**间齐次性**的**连续时间离散状态**的 markov 过程[[Scientech - 随机过程-markov链]]

## 5.1 连续时间的 markov 链

[[Wiki - 连续时间markov链]]

## 5.2 生灭过程

考虑一种特殊的连续时间 markov 链：生灭过程

[[Wiki - 生灭过程]]

其中生灭过程中又有一类特殊的纯生过程叫 Yule 过程，跟 [[Wiki - poison过程]]有一些很像的性质

## 5.3 kolmogorov 微分方程

研究 $P_{ij}(t)$ 关于 t 的导数，这是 markov 链里没有的

[[Wiki - kolmogorov向前向后微分方程]]

## 5.4 极限概率

研究连续时间 markov 链的极限性质和平稳分布

需要利用到 kolmogorov 微分方程 $P_{ij}'(t)=0$ 的条件研究平稳分布

[[Wiki - 连续时间markov链的平稳分布]]

## 5.5 时间可逆性

同离散时间 markov 链，要研究其逆向链以及可逆性

同 [[Wiki - 逆向markov链#Def 1 逆向链]]

[[Wiki - 时间可逆的markov链]]

对于生灭过程一定是时间可逆的，为了证明 M/M/1/N 排队模型公式成立，又证明截取一部分的生灭过程也是时间可逆的

## 5.6 一致化

