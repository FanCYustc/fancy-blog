---
aliases: 
info: 
date: 2025-03-17-星期一 19:00
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 随机过程/markov链
  - 多元统计分析
id: wiki20250317190050
banner: "![[astrowalk.gif]]"
---
---

## Def 1 马氏随机场

对于一个概率图，对任一节点𝑖 (或 $x_{i})$ ，定义其邻域为所有与𝑖有连结的节点集合  

$$
n e(i)=\{j;j{\sim}i\},
$$  

即所有与 $x_{i}$ 条件不独立的随机变量的集合。换言之，MRF图模型表达了**局部马氏性**质：  

$$
\mathbf{x}_{-(i,n e(i))}|\mathbf{x}_{n e(i)}\Leftrightarrow p(x_{i}|\mathbf{x}_{-i})=p\big(x_{i}\big|\mathbf{x}_{n e(i)})
$$  

$$
p(x_{i}|\mathbf{x}_{-i})=p\big(x_{i}\big|\mathbf{x}_{n e(x_{i})}\big)
$$  

[[Wiki - markov性]]