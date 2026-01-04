---
aliases:
  - 半范数
info: 
date: 2024-11-07-星期四 09:02
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 泛函分析/线性算子
id: wiki20241107090229
banner: "![[astrowalk.gif]]"
---
---

## Def 1 次线性泛函

X 是向量空间，如果函数 $p: X\to\mathbb{R}$ 使得 
1. 正齐性: $p (tx)=tp (x),\forall x\in X, t>0$.
2. 次可加性: $p (x+y)\leqslant p (x)+p (y),\forall x, y\in X$.

则称 p 是 X 上的一个**次线性这函**。

如果 p 还满足齐次性, 即 $p (\lambda x)=|\lambda|p (x),\forall x\in X,\forall\lambda\in\mathbb{K}$，则称 p 是一个**半范数**。

[[Wiki - 线性算子|线性泛函]]



## Pro 1

1. 次线性泛函是凸函数
2. 半范数满足非负性：$2p (x)= p (x)+ p (-x) \geq p (0)= 0$
3. 如果半范数有 $p (x)=0\to x=0$，则 p 为范数 [[Wiki - 范数]]

