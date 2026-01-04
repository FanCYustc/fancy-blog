---
aliases: 
info: 
date: 2024-11-07-星期四 14:32
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 统计算法
id: wiki20241107143215
banner: "![[astrowalk.gif]]"
---
---

Gibbs 抽样是 MCMC 方法的一种，但它没有拒绝的抽样样本 [[Wiki - MCMC方法]]
## The 1 系统扫描 gibbs 抽样

对于多元分布 $(X_{1},\dots,X_{p})$，gibbs 抽样对每一个分量分别抽样

1、初始化 $X_{0}$

2、对第 t 步，已有 $(X_{t,1},\dots,X_{t,p})$，对 $j=1,\dots,p$ ：从边际分布 [[Wiki - 边际分布与边际密度]] $f(X_{j}|\boldsymbol{X}_{t,-j})$ 中抽取新样本作为 $X_{t+1,j}$，其中 $\mathbf{X}_{t,-j}$ 是 $\mathbf{X}_{t}$ 中去掉 $X_{j}$ 后其他组成的向量。

3、更新 $\boldsymbol{X}_{t+1}= (X_{t+1,1},\dots,X_{t+1,p}),t\leftarrow t+1$

## The 2 随机扫描 gibbs 抽样

在系统扫描 gibbs 抽样的基础上，不对所有分量都更新，以随机的方式更新每个分量：

1、初始化 $X_{0}$

2、对第 t 步，以 $(\alpha_{1},\dots\alpha_{p})$ 的概率抽取一个下标 j，从边际分布 $f(X_{j}| \boldsymbol{X}_{t,-j})$ 中抽取样本 $X_{t+1,j}$。

3、更新 $\boldsymbol{X}_{t+1}= (X_{t, 1},\dots, X_{t, j-1}, X_{t+1, j}, X_{t, j+1},\dots, X_{t, p}), t\leftarrow t+1$

