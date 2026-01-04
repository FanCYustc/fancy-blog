---
aliases: 
info: Bayes因子方法
date: 2024-06-04-星期二 14:53
update: 
tags:
  - wiki/year2024
  - wiki/month06
  - 数理统计/贝叶斯方法
id: wiki20240604145346
banner: "![[astrowalk.gif]]"
---
---

## The 1 Bayes 因子方法

在[[Wiki - Bayes假设检验|最大后验原则]]基础上

考虑假设 $H_{0}:\theta\in \Theta_{0}\leftrightarrow H_{1}:\theta\in \Theta_{1},\Theta_{0}\cup \Theta_{1}=\Theta,\Theta_{0}  \cap \Theta_{1}= \emptyset$

定义 Bayes 因子为 
$$
BF_{01}(x) = \frac{{\alpha_{0} / \alpha_{1}}}{\pi_{0} / \pi_{1}} = \frac{{P(\theta\in \Theta_{0}|x)}}{P(\theta\in \Theta_{1}|x)} \cdot \frac{{\pi(\theta\in\Theta_{1} )}}{\pi(\theta\in \Theta_{0})}
$$
其中 $\pi$ 为无信息先验分布密度

