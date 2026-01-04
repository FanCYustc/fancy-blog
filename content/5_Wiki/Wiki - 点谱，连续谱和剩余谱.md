---
aliases: 
info: 
date: 2024-12-11-星期三 10:55
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 泛函分析/谱理论
id: wiki20241211105527
banner: "![[astrowalk.gif]]"
---
---

这是在 [[Wiki - 有界线性算子的谱]]的定义基础下再进行的分类
## Def 1 特征值

对 banach 空间 [[Wiki - banach空间]] X，$A\in \mathcal{L}(X)$，$Ker (\lambda I- A)\neq \{0\}$，称 $\lambda$ 是 A 的特征值，也称为点谱，记作 $\lambda\in \sigma_{p}(A)$

[[Wiki - 线性映射的像空间和核]]

是 [[Wiki - 特征值和特征向量]]在无限维空间上的推广
## Def 2 连续谱

如果 $Ker (\lambda I-A)=\{0\}$，$range (\lambda I-A)\neq X$，但 $range(\lambda I-A)$ 在 X 中稠密 [[Wiki - 度量空间的稠密性]]，称 $\lambda$ 是 A 的连续谱，记作 $\lambda\in \sigma_{c}(A)$

## Def 3 剩余谱

如果 $Ker (\lambda I-A)=\{0\}, range (\lambda I-A)\neq X$，且 $\overline{range (\lambda I-A)}\neq X$，称 $\lambda$ 是 A 的剩余谱，记作 $\lambda\in \sigma_{r}(A)$

$Ker (\lambda I-A)=\{0\},range( \lambda I-A)=X$，由 IMT [[Wiki - 逆算子定理]]，$\lambda$ 是正则值

## The 1 

$\sigma (A)= \sigma_{p}(A) \cup \sigma_{c}(A) \cup \sigma_{r}(A)$

