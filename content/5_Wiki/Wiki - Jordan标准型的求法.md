---
aliases: 
info: Jordan标准型的求法
date: 2023-11-22-星期三 19:31
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/相似标准型
id: wiki20231122193129
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 求法的前提

```ad-proposition
title: Propositon 1

由于 [[Wiki - Jordan标准型]]中 A 相似于 Jordan 标准型 J，则

$$
rank(A-\lambda_i I)^{k}=rank(J-\lambda_i I)^{k}
$$
对任意 k 成立

```


## SOL 1 若尔当标准型的求法

对每一个特征值，计算 $r_k=\operatorname{rank}(A-\lambda_iI)^k$ , 并约定 $r_0=n$ . 计算 $d_k=r_{k-1}-r_k,\quad\forall k\geq1$, 则 $d_k\geqslant d_{k+1}.$ 计算 $\delta_k=d_k-d_{k+1},\quad\forall k\geqslant1$. 则J 中有关特征值 $\lambda_{i}$ 的 $k$ 阶 Jordan 块 $J_k(\lambda_i)$ 共有 $\delta_k$ 个.

### Proof

对于特征值不是 $\lambda_{i}$ 的部分，次幂几次也不改变秩[[Wiki - 矩阵的秩]]
$$\begin{aligned}r_k&=(n-n_i)+\operatorname{rank}(\boldsymbol{J}_{i}-\lambda_i\boldsymbol{I})^k=(n-n_i)+\sum_{j=1}^{m_i}\operatorname{rank}(\boldsymbol{J}_{ij}-\lambda_{i}I)^k\\d_k&=r_{k-1}-r_k=\sum_{j=1}^{m_i}\operatorname{rank}(J_{ij}-\lambda_{i}I)^{k-1}-\operatorname{rank}(J_{ij}-\lambda_{i}I)^{k}\\&=\sum_{1<j<m_{i},l_{ij}\geq k}1=\langle\text{阶数}l_{ij}\geqslant\text{k的 Jordan 块}J_{ij}(\lambda_i)\text{个数}\rangle\\\delta_k&=d_k-d_{k+1}=\langle\operatorname{Jordan}\boldsymbol{\text{块}}\boldsymbol{J}_k(\lambda_i\rangle\text{的个数}\rangle.\quad\end{aligned}$$

这样就求出了没个特征值中各阶 Jordan 块的个数

## SOL 2 用初等因子组

[[Wiki - 相似于Jordan标准型#The 2 另一种证法]]