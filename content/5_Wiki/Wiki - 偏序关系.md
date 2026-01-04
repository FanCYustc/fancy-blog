---
aliases: 
info: 偏序结果和偏序集
date: 2024-09-30-星期一 14:53
update: 
tags:
  - wiki/year2024
  - 泛函分析
  - 代数
  - wiki/month10
id: wiki20240930145330
banner: "![[astrowalk.gif]]"
---
---

## Def 1 偏序关系

非空集合 X 上的一个偏“$\leqslant$”是指满足以下条件的一个关系:

1. 传递性: $x\leqslant y, y\leqslant z\Rightarrow x\leqslant z$
2. 反身性: $x\leqslant x$
3. $x\leqslant y, y\leqslant x\Rightarrow x=y$

$(X,\leqslant)$ 称为一个**偏序集**。如果 $\forall x, y\in X\text{,}x\leqslant y\text{ 或 }y\leqslant x$ 必有其一, 则称“$\leqslant$” 是 X 上的一个**全序**。

对于 $Y\subset X$, 如果存在 $p\in X$ 使得 $\forall y\in Y$ 有 $y\leqslant p$，称 p 是 Y 的一个**上界**。

如果存在 $m\in X$ 使得 $m\leqslant x\Rightarrow x=m$, 则称 m 是 X 上的一个**极大元**.

