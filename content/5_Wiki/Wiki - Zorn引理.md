---
aliases: 
info: 
date: 2024-09-30-星期一 15:08
update: 
tags:
  - wiki/year2024
  - 泛函分析
  - 代数
  - wiki/month10
id: wiki20240930150806
banner: "![[astrowalk.gif]]"
---
---

## The 1 zorn 引理

$(X,\leqslant)$ 是一个偏序集，X 的每个全序子集都有上界, 则 X 必有极大元。

[[Wiki - 偏序关系]]

### Proof


Zorn引理的证明思路（简要版）：

**步骤1**（反证假设）：  
假设$(X,\leqslant)$没有极大元，则对任意$x \in X$，存在$y \in X$，使得$y > x$。

**步骤2**（选择函数构造）：  
由选择公理，存在映射$f: \mathcal{C} \to X$，使得对任意全序子集（链）$C \subseteq X$，$f(C)$是$C$的一个严格上界（即$f(C) > c$对所有$c \in C$）。

**步骤3**（超限递归构造链）：  
利用超限归纳法，可构造一个严格递增的序数序列$\{x_\alpha\}_{\alpha \in \mathrm{Ord}}$：
- $x_0 \in X$任意
- $x_{\alpha+1} = f(\{x_\xi\}_{\xi \leq \alpha})$（严格上界）
- 对极限序数$\lambda$，定义$x_\lambda = f(\bigcup_{\xi < \lambda} \{x_\xi\})$，该链的上界存在且能被$f$选取。

**步骤4**（导出矛盾）：  
类$\mathrm{Ord}$比集合$X$的基数大，导致$\{x_\alpha\}$无法保持严格递增而无上界，这与题设「每个全序子集都有上界」矛盾。

**结论**：  
假设不成立，故$X$必有极大元。
