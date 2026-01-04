---
aliases: 
info: 线性相关的推论，线性相关的判定
date: 2023-05-18-星期四 23:12
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230518231212
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 

## Pro1

```ad-proposition
title: Propositon 1

设向量组 $S_{1}=\left\{a_{i_{1}}, \cdots, a_{i_{k}}\right\}$ 是向量组 $S=\left\{a_{1}, \cdots, a_{m}\right\}$ 的一个子集. 如果 $S_{1}$ 线性相关, 则 S 也线性相关; 如果 S 线性无关, 则 $S_{1}$ 也线性无关。

```


## Pro2 加长向量

```ad-proposition
title: Propositon 2

设 $\boldsymbol{a}_{i}=(a_{i1},\cdots,a_{i r})\in F^{r},i=1,2,\cdots,m$ ，它们的加长向量组为 $b_i=(a_{i1},\cdots,a_{ir},\cdots,a_{in})\in F^n(n>r),i=1,2,\cdots,m.$ 则有

(1) 若 $a_1,\cdots,a_m$ 线性无关, 则 $b_1,\cdots,b_m$ 也线性无关;
(2) 若 $b_{1},\cdots,b_{m}$ 线性相关, 则 $\bar{a}_1,\cdots,\bar{a}_m$ 也线性相关

```


## Cal 1

当向量数大于空间维数时，则向量组一定线性相关。 
（因为数组空间维数即代表极大无关组）

若 m=n, $\vec{\alpha_{1}},\dots,\vec{\alpha}_{m}$ 线性相关 等价于 A 不可逆。  
即 A 的行列式为 0 [[Wiki - 行列式与可逆]]

## Cal2 线性无关，解，与秩 

①向量组线性无关 [[Wiki - 线性相关和线性无关]]

②Ax = 0 只有零解 [[Wiki - 方程组解的属性]]

③A 是列满秩的，即 rank (A）=m  [[Wiki - 矩阵的秩]]

相互等价

## Pro 3

Suppose $\vec\alpha_{1},\dots,\vec\alpha_{n}$ is linearly dependent in V. then there exists $j \in {1,2,\dots,n}$ s.t. $\vec\alpha_{j} \in span(\vec{\alpha_{1}},\dots,\vec{\alpha_{j-1}})$

由 $a_{1}\vec{\alpha_{1}}+\dots+a_{n}\vec{\alpha_{n}}=0$, 取最大的 j 使 $a_{j}\neq 0$

**来源：[[Book - 线性代数应该这样学]]**

---

