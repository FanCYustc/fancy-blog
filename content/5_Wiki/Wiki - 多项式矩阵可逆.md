---
aliases: 
info: 多项式矩阵可逆的定义和判别
date: 2023-12-06-星期三 10:11
update: 2023-12-06-Wednesday 10:50:54
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/矩阵
  - 线性代数/多项式
id: wiki20231206101139
banner: "![[astrowalk.gif]]"
---
---

## Def 1 可逆

```ad-definition
title: Definition 1

$A (\lambda)\in F[\lambda]^{n\times n}$，称 A 可逆，如果存在 $B (\lambda)\in F[\lambda]^{n\times n}$ 满足 $A (\lambda) B (\lambda)=I_{n},\forall \lambda\in F$

且称 $B(\lambda)$ 为 $A(\lambda)$ 的逆

```

[[Wiki - 逆矩阵]]

## Pro 1 可逆与行列式

```ad-proposition
title: Propositon 1

$A(\lambda)$ 可逆等价于 $\det A (\lambda)\equiv C\neq 0$

```

[[Wiki - 行列式与可逆]]

多项式方阵可逆要求所得的性质是把 $\lambda$ 消掉的，根一般矩阵不同

## Pro 2 秩与可逆

```ad-proposition
title: Propositon 2

n阶多项式方阵$A(\lambda)$ 可逆等价于存在初等变换 $P_{i}(\lambda)和Q_{j}(\lambda)$ 使

$$
A(\lambda)=P_{1}(\lambda)\dots P_{s}(\lambda)D(\lambda)Q_{1}(\lambda)\dots Q_{t}(\lambda)
$$

其中 $D(\lambda)=diag(d_{1}(\lambda),\dots,d_{n}(\lambda))$ 为 Smith 标准型 

```


[[Wiki - 多项式矩阵相抵#Def 3 相抵标准型]]

