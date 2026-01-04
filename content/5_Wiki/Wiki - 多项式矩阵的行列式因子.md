---
aliases: 
info: 多项式矩阵的行列式因子
date: 2023-12-06-星期三 11:10
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/矩阵
  - 线性代数/多项式
  - 线性代数/行列式
id: wiki20231206111034
banner: "![[astrowalk.gif]]"
---
---

## Def 1 行列式因子


$$
A(\lambda)\begin{pmatrix}
i_{1} & \dots &i_{k} \\
j_{1}& \dots & j_{k}
\end{pmatrix}=\sum_{p_{i},q_{i}}P(\lambda)\begin{pmatrix}
i_{1} & \dots &i_{k} \\
p_{1} & \dots & p_{k}
\end{pmatrix}\begin{pmatrix}
D(\lambda) & 0 \\
0& 0
\end{pmatrix}
\begin{pmatrix}
p_{1} & \dots & p_{k} \\
q_{1} &\dots &q_{k} 
\end{pmatrix}
Q(\lambda)\begin{pmatrix}
q_{1} &\dots &q_{k} \\
j_{1} &\dots & j_{k}
\end{pmatrix}
$$

只需考虑 A 的子式非零的情况，则 $k<r, 1\leq i_{1}<\dots< i_{k}\leq r, 1\leq j_{1}<\dots< j_{k}\leq r$

由于 Smith 标准型有 $\forall 1\leq p_{1}<\dots<p_{k}\leq r$
$$
d_{1}(\lambda)d_{2}(\lambda)\dots d_{k}(\lambda)| d_{p_{1}}(\lambda)\dots d_{p_{k}}(\lambda)
$$
可以得到 Smith 标准型的

$$
d_{1}(\lambda)\dots d_{k}(\lambda)|A(\lambda)\begin{pmatrix}
i_{1} & \dots &i_{k} \\
j_{1} &\dots & j_{k}
\end{pmatrix}
$$

```ad-definition
title: Definition 1

```
记所有非零 k 阶子式的最大公因子为 $D_{k}(\lambda)$，[[Wiki - 多项式最大公因式]]称为 $A(\lambda)$ 的 k 阶行列式因子

[[Wiki - 行列式Laplace展开|子式]]

## Pro 1 相抵的充要条件

```ad-proposition
title: Propositon 1

$A(\lambda)$ 与 $B (\lambda)\in F[\lambda]^{m\times n}$ 相抵的充要条件是 $\forall k\leq \min\{m,n\}$，k 阶行列式因子均相同
```
[[Wiki - 多项式矩阵相抵]]






