---
aliases: 
info: 市场一般均衡的结构
date: 2023-12-20-星期三 14:21
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 经济学/均衡
id: wiki20231220142114
banner: "![[astrowalk.gif]]"
---
---

## The 1 家庭一般均衡

瓦尔拉斯一般均衡描述的是几个家庭互相既生产又消费，大家通过交换要素实现各自效用的最大化 [[Wiki - 效用最大化]]

设有 H 个家庭，r 种产品，n-r 种要素，价格记为 $P_{i}$，数量记为 $Q_{i},i=1,\dots,n$ 每个家庭有固定的要素禀赋作为它的收入。其中对于要素，有一部分是自己使用 $X_{ih}$，总供给量为 $\overline{X_{ih}}$，则 $Q_{ih}=\overline{X_{ih}}-X_{ih},i=r+1,\dots,n$
则家庭 h 的效用函数为

$$
U_{h}=U_{h}(Q_{1h},\dots,Q_{rh};Q_{(r+1)h},\dots ,Q_{nh})
$$

其中 $Q_{ih}$ 为家庭 h 对产品或要素 $Q_{i}$ 的需求量。要求它的最大值，在约束下：
$$
\sum_{i=1}^{r}P_{i}Q_{ih}+\sum_{i=r+1}^{n}P_{i}X_{ih}=\sum_{i=r+1}^{n}P_{i}\overline{X_{ih}}
$$

即收入等于支出

在收入约束下求极值，就可以得到每个家庭的需求函数和供给函数

$$\begin{aligned}Q_{1h}&=Q_{1h}(P_{_1},\cdots,P_{_r};P_{_{r+1}},\cdots,P_{_n})\\\dots
\\Q_{rh}&=Q_{rh}(P_{_1},\cdots,P_{_r};P_{_{r+1}},\cdots,P_{_n})\end{aligned}$$

$$\begin{aligned}Q_{(r+1)h}&=Q_{(r+1)h}(P_{_1},\cdots,P_{_r};P_{_{r+1}},\cdots,P_{_n})\\\dots
\\Q_{nh}&=Q_{nh}(P_{_1},\cdots,P_{_r};P_{_{r+1}},\cdots,P_{_n})\end{aligned}$$

对 H 个家庭加总，就可以得到产品的市场需求 $Q_{i}^{d}=\sum_{h=1}^{H}Q_{ih},i=1,\dots r$

以及要素的市场供给 $Q_{i}^{s}=\sum_{h=1}^{H}Q_{ih},i=r+1,\dots,n$

## The 2 企业一般均衡

与家庭不同的是，企业的约束是利润最大化而非效用最大化

设有 K 个企业，$Q_{ik},i=1,\dots,r$ 代表对产品的供给量，$Q_{ik},i=r+1,\dots,n$ 代表对要素的需求量，则企业追求

$$
\pi_{k}=\sum_{i=1}^{r}P_{i}Q_{ik}-\sum_{i=r+1}^{n}P_{i}Q_{ik}
$$
的最大值，可以解出

$$\begin{aligned}Q_{1k}&=Q_{1k}(P_{_1},\cdots,P_{_r};P_{_{r+1}},\cdots,P_{_n})\\\dots
\\Q_{rk}&=Q_{rk}(P_{_1},\cdots,P_{_r};P_{_{r+1}},\cdots,P_{_n})\end{aligned}$$

$$\begin{aligned}Q_{(r+1)k}&=Q_{(r+1)k}(P_{_1},\cdots,P_{_r};P_{_{r+1}},\cdots,P_{_n})\\\dots
\\Q_{nk}&=Q_{nk}(P_{_1},\cdots,P_{_r};P_{_{r+1}},\cdots,P_{_n})\end{aligned}$$

分别为企业的供给和要素需求函数

$Q_{i}^{s}=\sum_{k=1}^{K}Q_{ik},i=1,\dots,r$ 为产品市场的供给函数，$Q_{i}^{d}=\sum_{k=1}^{K}Q_{ik},i=r+1,\dots,n$ 为要素市场的需求函数



## 平衡的存在性

按 $Q_{i}^{d}=Q_{i}^{s},i=1,\dots,n$ 的平衡条件 [[Scientech - 微观经济学-需求、供给和均衡价格]]，n 个自变量 $P_{1},\dots P_{n}$，n 个约束，可以解出均衡价格和产品及要素的需求供给






