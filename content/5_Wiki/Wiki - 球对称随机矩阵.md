---
aliases: 
info: 
date: 2025-03-25-星期二 17:03
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 多元统计分析
  - 概率论/概率分布
id: wiki20250325170350
banner: "![[astrowalk.gif]]"
---
---

## Def 1 球对称分布

假设 $m\geq p$，随机矩阵 $Z\in \mathbb{R}^{m\times p}$ 且 $Z^{T}Z>0$ [[Wiki - 正定矩阵]]，则称 Z 是球对称的如果对任意正交矩阵 $H\in O(m)$ [[Wiki - 正交矩阵]]，有 $f(HZ)=f(Z)$，f 为 Z 的概率密度

等价定义为 $f (Z)= h(Z^{T}Z)$，h 为某个 $R^{p\times p}\to \mathbb{R}$ 的函数

当 p=1 时就是 [[Wiki - 球对称分布]]

## Pro 1

同 [[Wiki - 球对称分布#Pro 1]]

$$p\left( W\right)  = \left| {V}_{m,p}\right| J\left( W\right) h\left( W\right)  = \frac{{\pi }^{{mp}/2}}{{\Gamma }_{p}\left( \frac{m}{2}\right) }h\left( W\right) {\left| W\right| }^{\left( {m - p - 1}\right) /2}$$

[[Wiki - Wishart分布]]参数一致，是特殊情况

