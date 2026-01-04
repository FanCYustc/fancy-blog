---
aliases: 
info: 24春随机过程A第5章
date: 2024-09-29-星期日 11:21
update: 
tags:
  - scientech/year2024
  - scientech/month09
  - 时间序列分析
  - 随机过程/平稳过程
id: scientech20240929112129
banner: "![[astrofishing.gif]]"
---
---

# CH5-平稳过程

## 1 平稳过程

[[Wiki - 严平稳过程]]

[[Wiki - 平稳序列]]

[[Wiki - 白噪声]]

[[Wiki - 正态平稳序列]]

## 2 线性过程

线性过程来源于白噪声的线性组合。对于有限组合称为有限运动平均。

如果想推广到无限线性组合，需要先做一些准备：

[[Wiki - 赋范空间]]

[[Wiki - Hilbert空间]]，这里的用处是 $L^{2}(X)=\{随机变量X: E X^{2}<\infty \}$ 是一个 hilbert 空间，内积定义为 $\langle X, Y \rangle=E[XY]$

[[Wiki - 平方可积]]

[[Wiki - Lebesgue控制收敛定理]]

[[Wiki - 单调收敛定理]]将这两个收敛定理用在概率测度上

[[Wiki - 线性过程]]

[[Wiki - 时间序列的线性滤波]]
## 3 遍历性定理

时间序列模型的最终目的是估计，而遍历性定理保证从时间序列一条轨道上的估计可以推断整体的统计性质

[[Wiki - 平稳过程遍历性定理]]

[[Wiki - 平稳序列的谱]]

