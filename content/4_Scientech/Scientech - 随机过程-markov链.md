---
aliases: 
info: 24春实用随机过程第4章
date: 2024-05-08-星期三 21:17
update: 
tags:
  - scientech/year2024
  - scientech/month05
  - 随机过程/markov链
id: scientech20240508211708
banner: "![[astrofishing.gif]]"
---
---

# CH4-markov 链

[第4章课件](file:///E:/课程资料/实用随机过程/SP-PPT-4.pdf)

## 4.1 离散时间 markov 链

本章研究的是离散时间离散状态时间齐次的 markov 链 [[Scientech - 随机过程-连续时间的markov链]]

[[Wiki - markov性]]

[[Wiki - markov链]]

[[Wiki - markov链n步转移概率]]

## 4.2 Markov 链状态分类

在 n 步转移的基础上，考虑 markov 链的一些性质

[[Wiki - markov链的类]]

[[Wiki - markov链的周期]]

[[Wiki - markov链的常返与滑过]]

## 4.3 极限性质

这一部分跟 [[Scientech - 随机过程-更新过程]]很相关，是对 $N_{j}(n)=前n步访问j的次数$ 的更新过程

[[Wiki - markov链的正常返与零常返]]

[[Wiki - markov链的平稳分布]] : 前提是不可约正常返（周期或非周期）

## 4.4 分支过程

分支过程为一种“繁殖”的过程，主要研究最后种族会不会灭绝；是一种特殊的 markov 链

[[Wiki - 分支过程]]

## 4.5 时间可逆的 markov 链

时间可逆考虑的是在**有平稳分布的条件下**，逆向链也是 markov 链。这样通过逆向操作就可以有很多好的结果。

时间可逆首先需要 markov 链有逆向链

[[Wiki - 时间可逆的markov链]]

借助时间可逆，对于一般的逆向链可以求出逆向的转移矩阵

[[Wiki - 逆向markov链]]

后续介绍了若干个根据时间可逆性编制的算法，见 PPT 的介绍

## 4.6 半马氏过程

半马氏过程不是 markov 过程，但是跟 markov 链相关

[[Wiki - 半马氏过程]]

还是需要用到很多 [[Scientech - 随机过程-更新过程]]的结论。

对于半马氏过程，需要利用嵌入 markov 链的 $P,\{\pi_{j}\}$ 来求平稳的 $P_{i}$

