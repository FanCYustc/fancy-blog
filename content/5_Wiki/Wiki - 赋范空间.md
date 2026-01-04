---
aliases:
  - 典则度量
info: 
date: 2024-09-18-星期三 10:09
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 几何学
  - 线性代数/线性空间
  - 泛函分析
id: wiki20240918100935
banner: "![[astrowalk.gif]]"
---
---

## Def 1 赋范空间

$\mathbb{K}$ 是 $\mathbb{C}$ 或者 $\mathbb{R}$, $X$ 是 $\mathbb{K}$ 上的**向量空间** [[Wiki - 一般线性空间]]，如果函数 $\|\cdot\|:X\to\mathbb{R}$ 为 $X$ 上的一个范数[[Wiki - 范数]]，$(X,\|\cdot\|)$ 称为一个赋范空间。定义
$$d(x,y)\stackrel{\text{def}}{=}||x-y||$$
称为**范数诱导的度量**，也叫典则度量。

[[Wiki - 度量空间]]

（前提是向量空间）

完备的称为 [[Wiki - banach空间]]

## Pro 1 

同维数 [[Wiki - Hamel基]] 的两个有限维 [[Wiki - Hamel基]]赋范空间同构

### Proof


$$T:X\to\mathbb{K}^n,x=\sum_{i=1}^n\xi_ie_i\mapsto\xi $$

是一个**代数同构**[[Wiki - 线性空间同构]]，满足

$$C_1|T(x)|\leqslant||x||\leqslant C_2|T(x)|,\forall x\in X$$

第一个不等号得到 $T$ 连续，第二个不等号得到 $T^-1$ 连续，故 $T$ 也是**同胚**。

在代数和拓扑意义下都是同构的

