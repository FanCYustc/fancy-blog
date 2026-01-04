---
aliases: 
info: 
date: 2024-10-21-星期一 15:17
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析/范畴论
id: wiki20241021151734
banner: "![[astrowalk.gif]]"
---
---

## The 1 baire 纲第一定理

BCT1：完备度量空间 $(X,d)$ [[Wiki - 度量空间的完备性]]是 baire 第二纲集

[[Wiki - Baire纲集]]

### Proof

利用 [[Wiki - 区间套定理#The 2 推广闭球套定理]]

反证：假设是第一纲集，$X = \bigcup_{n=1}^{\infty} E_{n}$，$E_{n}$ 为疏集

由于疏集，任取 $B(x_{0},r_{0})$，则存在 $x_{1}\in B (x_{0}, r_{0}) / \overline{E_{1}}$ ，所以存在 $B (x_{1}, r_{1})\subset B (x_{0}, r_{0}), r_{1}< 1$，使得 $B (x_{1}, r_{1})\cap \overline{E_{1}} = \emptyset$

同理，一直取 $B (x_{n}, r_{n})\subset B (x_{n-1}, r_{n-1}), r_{n}< \frac{1}{n}$ 满足 $B (x_{n}, r_{n}) \cap \overline{E_{n}} = \emptyset$

由闭球套定理，$\bigcap_{n} B (x_{n}, r_{n})= \{x\}$，但 x 不属于 $\bigcup_{n=1}^{\infty} \overline{E_{n}} =X$，矛盾

## Baire 纲第二定理

BCT2：$(X,d)$ 为完备度量空间，$\{U_{n}\}_{n=1}^{\infty}$ 为一列开集 [[Wiki - 度量空间的开集闭集]]满足 $\overline{U_{n}}=X$ [[Wiki - 度量空间的内部外部|闭包和内部]]。则
$$
\overline{\bigcap_{n=1}^{\infty}U_{n}}=X
$$

### Proof

设 $B_0$ 是 X 上的任一非空开集， $U_1$ 稠密 $\Rightarrow \exists x_0 \in U_1 \cap B_0$, 因为 $U_1 \cap B_0$ 是开集，所以存在 $x_0$ 的邻域 $B_1$ 满足 $\overline{B_1} \subset U_1 \cap B_0$。又因为 $U_2$ 稠密，类似地存在 $B_2$ 满足 $\overline{B_2} \subset U_2 \cap B_1$, 以此类推可得一列开集 $\{ B_n \}_{n = 1}^{\infty}$, 满足 $\overline{B_n} \subset U_n \cap B_{n - 1}$。不妨令 $B_n$ 为半径小于 $\frac{1}{n}$ 的开球，根据闭球套定理[[Wiki - 区间套定理|闭球套定理]]可知 $K = \bigcap_{n = 1}^{\infty} \overline{B_n} \neq \varnothing$ 根据构造过程可得 $K \subset B_0, K \subset U_n$，从而 $B_0$ 与 $\bigcap_{n = 1}^{\infty} U_n$ 相交，所以 $\bigcap_{n = 1}^{\infty} U_n$ 也是稠密的。

