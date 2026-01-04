---
aliases: 
info: 条件方差的定义和性质
date: 2023-11-13-星期一 09:50
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/期望方差
  - 概率论/特征
id: wiki20231113095014
banner: "![[astrowalk.gif]]"
---
---

## Def 1 条件方差
```ad-definition
title: Definition 1



$$\begin{aligned}
\operatorname{Var}(X|Y=y)& =\mathbb{E}\left\{\left(X-\mathbb{E}\left[X|Y=y\right]\right)^2|Y=y\right\}  \\
&=\quad\operatorname{E}[X^2|Y=y]-(\operatorname{E}[X|Y=y])^2
\end{aligned}$$
称为**条件方差**


```

[[Wiki - 条件期望]]


[[Wiki - 方差]]


## The 1 条件方差公式

```ad-theorem
title: Theorem 1 (全方差公式)

$$\mathrm{Var}(X)=\mathbb{E}\left[\mathrm{Var}(X|Y)\right]+\mathrm{Var}\left(\mathbb{E}\left[X|Y\right]\right).$$

```

### Proof
利用方差定义 $\text{Var}(X) = \mathbb{E}[X^2] - (\mathbb{E}[X])^2$ 和条件方差定义。
$$
\begin{aligned}
\text{右边} &= \mathbb{E}[\mathbb{E}[X^2|Y] - (\mathbb{E}[X|Y])^2] + (\mathbb{E}[(\mathbb{E}[X|Y])^2] - (\mathbb{E}[\mathbb{E}[X|Y]])^2) \\
&= (\mathbb{E}[\mathbb{E}[X^2|Y]] - \mathbb{E}[(\mathbb{E}[X|Y])^2]) + (\mathbb{E}[(\mathbb{E}[X|Y])^2] - (\mathbb{E}[X])^2) \\
& \quad \text{(利用全期望公式 } \mathbb{E}[\mathbb{E}[X^2|Y]] = \mathbb{E}[X^2]) \\
&= \mathbb{E}[X^2] - \mathbb{E}[(\mathbb{E}[X|Y])^2] + \mathbb{E}[(\mathbb{E}[X|Y])^2] - (\mathbb{E}[X])^2 \\
&= \mathbb{E}[X^2] - (\mathbb{E}[X])^2 \\
&= \text{Var}(X)
\end{aligned}
$$

同 [[Wiki - 条件期望#Pro 1 重要性质]]，可以找到合适的 Y 用两步走求X的