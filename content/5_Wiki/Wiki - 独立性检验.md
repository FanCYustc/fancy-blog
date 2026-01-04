---
aliases: 
info: 
date: 2024-05-28-星期二 14:51
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240528145147
banner: "![[astrowalk.gif]]"
---
---

## The 1 独立性检验

设有 A, B 两种属性，有 $A_{1},\dots,A_{r}$ 和 $B_{1},\dots,B_{s}$ 这些类。设每类 $(A_{i},B_{j})$ 中的个体数是 $n_{ij}$，记 $\sum_{j}n_{ij} =n_{i\cdot},\sum_{i}n_{ij}=n_{\cdot j}$，$\sum_{i}\sum_{j}n_{ij}=n$

则假设检验 $H_{0}: A,B独立$ [[Wiki - 随机变量的独立性]]就可以表示为 $H_{0}:P (X^{(1)}=i, X^{(2)}=j)=p_{i}\cdot p_{j},i=1,\dots,r;j=1,\dots,s$

![[Wiki - pearson卡方检验#Cal 1]] 

卡方检验量 [[Wiki - pearson卡方检验]] 为
$$
K_{n}^{*}= n\sum_{i=1}^{r}\sum_{j=1}^{s} \frac{{\left( n_{ij}- \frac{n_{i\cdot}n_{\cdot j}}{n} \right)^{2}}}{n_{i\cdot}n_{\cdot j}}
$$
由于要求 $\sum_{i}p_{i}=1,\sum_{j}p_{j}=1$ ，参数个数为 $r+s-2$，所以将 $K_{n}^{*}$ 与 $\chi^{2}_{(r-1)(s-1)}$ 比较

[[Wiki - 卡方分布]]

## Pro 1

**标准化残差 $\phi_{ij}$ 的事后分析：**

- **作用**：定位具体关联模式（当 $X^2$ 拒绝 $H_0$ 时）  
  - $|\phi_{ij}| > 2$ ：显著偏离独立（$\alpha=0.05$ 水平）  
  - $\phi_{ij} > 0$ ：正关联（观测 > 期望）  
  - $\phi_{ij} < 0$ ：负关联（观测 < 期望）  

这里的 $\phi_{ij}$ 就是 $K_{n}^{*}$ 中的 (i, j) 项。