---
aliases: 
info: 
date: 2024-09-11-星期三 10:23
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 泛函分析
  - 几何学/度量空间
id: wiki20240911102322
banner: "![[astrowalk.gif]]"
---
---

## Def 1 $\epsilon-$ 网

度量空间[[Wiki - 度量空间]] $(X,d),A\subset X,\varepsilon>0$, 1. 称 $N_\varepsilon\subset A$ 是 $A$ 的一个 $\varepsilon$ 网是指

$$\forall x\in A,\exists y\in N_\varepsilon\text{ s.t. }d(x,y)<\varepsilon $$

等价于
$$A\subset\bigcup_{y\in N_\varepsilon}B(y,\varepsilon)$$
即由半径为 $\varepsilon$ 的开球组成的 $A$ 的开覆盖。

## Def 2 完全有界

如果 $\forall\varepsilon>0$, 都有 $A$ 的一个元素有限的 $\varepsilon$ 网，则称 $A$ **完全有界**。即可以选取有限个半径为 $\varepsilon$ 的开球作为 $A$ 的开覆盖。

 [[Wiki - 度量空间的紧致性]]跟紧致性有区别

## The 1 与列紧性

1、完全有界一定有界 [[Wiki - 度量空间的有界和收敛]]

2、若 $A\subset X$ 有列紧性 [[Wiki - 列紧空间]]，一定完全有界

3、在完备度量空间 X [[Wiki - 度量空间的完备性]]中，列紧性等价于完全有界

### Proof

见 [[泛函分析2023秋笔记.pdf]] 1.3 节

2、$\to$ : 反证，则可以构造出不列紧的列（不存在收敛子列），存在 $\epsilon>0$ 使得有限个 $\epsilon-$ 球不能覆盖 A。所以存在 $x_{1}\in A, x_{2}\in A / B(x_{1},\epsilon)$，$\exists x_{3}\in A / (\cup_{k=1}^{2}B(x_{k},\epsilon))$。以此类推，存在序列 $\{x_{n}\}\subset A$，$x_{n}\in A / (\cup_{k=1}^{n-1}B(x_{k},\epsilon) )$。但 $\{x_{n}\}$ 没有收敛子列。

3、由完全有界推列紧：设 $\{x_{n}\}\subset A$ 由于对每个 $\epsilon = \frac{1}{i}$，都有有限个开球覆盖，所以有无穷多项 $\{x_{n}^{1}\}\subset B(y^{1},1)$，无穷多项 $\{x_{n}^{2}\}\subset B\left( y^{2}, \frac{1}{2} \right)$ 且 $\{x_{n}^{2}\}\subset\{x_{n}^{1}\}$...

取对角线证明取的对角线是 $\{x_{n}\}$ 的收敛子列（证明 [[Wiki - 一致等度连续]]中的技巧）

