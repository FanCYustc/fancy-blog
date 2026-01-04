---
aliases: 
info: 线性方程组解存在和唯一的判断
date: 2023-05-19-星期五 22:38
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230519223821
banner: "![[astrowalk.gif]]"
---
---

#线性代数/线性空间 

## Pro1 存在性和唯一性定理：

设 $A\in F^{m\times n}$ 为 $m\times n$ 阶矩阵, $b\in F^m$ 为 $m$ 维列向量. 则线性方程组

$$

Ax=b

$$

**有解的充要条件**是 $\operatorname{rank}(\boldsymbol{A})=\operatorname{rank}(\boldsymbol{A},\boldsymbol{b}).$ [[Wiki - 矩阵的秩]]线性方程组**有唯一解的充要条件**是

$$

\operatorname{rank}(\mathbf{A})=\operatorname{rank}(\mathbf{A},\mathbf{b})=n.

$$

用秩来描述 [[Wiki - 方程组解的属性]]

另一种角度：即 b 可以用 A 中 n 个向量线性表示 [[Wiki - 线性相关和线性无关]]，即 b 也在 A 生成的子空间里 [[Wiki - 极大线性无关组与秩]]
[[Wiki - 生成子空间]]

## Cal1

齐次线性方程组 Ax=0 有非零解当且仅当 rank (A）<n.
[[Wiki - 线性相关与无关的性质#Cal2 线性无关，解，与秩]]