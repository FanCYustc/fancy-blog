---
aliases: 特征函数的判定
info: 特征函数的充要条件
date: 2025-12-17-星期三 10:48
update: 2025-12-17-星期三 10:48
tags:
  - 概率论/特征
  - wiki/year2025
  - wiki/month12
id: wiki20251217104800
banner: "![[astrowalk.gif]]"
---
---

## The 1Bochner 定理

**注释 6.1 (Bochner 定理)**
设 $\Phi : \mathbb{R} \to \mathbb{C}$ 是一个复值函数且满足：

1.  $\Phi(0) = 1$
2.  $\Phi$ 在 $\theta = 0$ 处连续

那么，函数 $\Phi$ 为某个概率测度 $\mu \in \mathcal{P}(\mathbb{R})$ 的特征函数 [[Wiki - 随机变量的特征函数]]当且仅当 $\Phi$ 是 [[Wiki - 半正定函数]]。


Bochner 定理极其重要，它不仅解决了“什么样的函数能对应一个概率分布”的问题，还在随机过程（如平稳过程的谱 [[Wiki - 平稳序列的谱]]表示）和谐波分析中有深远应用。

它说明了：**连续性**、**归一化** ($\\Phi(0)=1$) 和 **半正定性** 完全刻画了特征函数。