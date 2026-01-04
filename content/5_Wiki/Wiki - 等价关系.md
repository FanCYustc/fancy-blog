---
aliases: 
info: 等价关系，等价类
date: 2023-05-18-星期四 15:14
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230518151441
banner: "![[astrowalk.gif]]"
---
---
#线性代数 #代数

## Def1 等价关系

等价关系~满足：
性质：1、**自反性**：A~A

2.     **对称性**A~B->B~A

3.     **传递性**A~B, B~C->A~C

## Def2 等价类

所有等价的元素构成的子集为一个等价类。

**等价类之间互不相交**。

主要的研究内容通常为一个等价类的代表元的选取。

## Cal 1

等价类全体的集合 $A/$~ 是各个等价类的无交并

```ad-example

矩阵相抵、矩阵相似、矩阵相合、向量组等价是线性代数中学习的三个主要等价关系。

```

---
## Def 1 Equivalence Relation

```ad-definition
title: Definition 1

A binary relation ~ on a set $S$ is called an **equivalence relation** if it satisfies:
1. **Reflexivity**: $\forall a \in S, a \sim a$
2. **Symmetry**: $\forall a,b \in S, a \sim b \Rightarrow b \sim a$
3. **Transitivity**: $\forall a,b,c \in S, (a \sim b \land b \sim c) \Rightarrow a \sim c$

The equivalence class of $a \in S$ is $[a] = \{x \in S \mid x \sim a\}$
```

## Pro 1 Properties of Equivalence Classes

```ad-proposition
title: Proposition 1

1. $\forall a \in S, a \in [a]$
2. $[a] = [b] \Leftrightarrow a \sim b$
3. $[a] \cap [b] \neq \emptyset \Rightarrow [a] = [b]$
4. The set of all equivalence classes forms a partition of $S$
```

## Cal 1 Quotient Set

The **quotient set** $S/{\sim}$ is the set of all equivalence classes:
$$S/{\sim} = \{[a] \mid a \in S\}$$

```ad-example
title: Example 1

1. Congruence modulo $n$ in $\mathbb{Z}$: $a \sim b \Leftrightarrow n \mid (a-b)$
2. Matrix similarity: $A \sim B \Leftrightarrow \exists P \text{ invertible}, B = P^{-1}AP$
3. Homeomorphism in topology
```

Related links: [[Wiki - 等价关系]]