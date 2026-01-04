---
aliases: 
info: 
date: 2025-03-25-星期二 20:04
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 凸优化
  - 对偶
id: wiki20250325200403
banner: "![[astrowalk.gif]]"
---
---

## The 1 对偶不等式定义的极小元定理

```ad-theorem
title: 对偶不等式定义的极小元定理

给定一个正常锥 $K$ 和其对偶锥 $K^*$，设 $S$ 是一个集合。对于 $x \in S$，$x$ 是 $S$ 的极小元（关于 $K$）当且仅当存在 $\lambda \succ_{K^*} 0$，使得 $x$ 在 $S$ 上最小化 $\lambda^\top z$，即：

$$
\lambda^\top x \leq \lambda^\top z, \quad \forall z \in S
$$

几何解释：超平面 $\{ z \mid \lambda^\top (z - x) = 0 \}$ 是 $S$ 在 $x$ 处的严格支撑超平面。
```

相关链接：[[Wiki - 对偶锥]], [[Wiki - 广义不等式]], [[Wiki - 承托超平面]]

[[Wiki - 正常锥]]

## The 2 对偶不等式定义的极小元逆定理

```ad-theorem
title: Theorem 1 - 极小元逆定理

给定正常锥 $K$ 和其对偶锥 $K^*$，若 $x \in S$ 是**凸集合** $S$ 关于锥 $K$ 的极小元，则存在 $\lambda \succ_{K^*} 0$，使得 $x$ 在 $S$ 上最小化 $\lambda^\top z$。即：
$$
\lambda^\top x \leq \lambda^\top z, \quad \forall z \in S.
$$
```


[[Wiki - 凸集]]
### Proof

1. **极小元定义**：  
   若 $x$ 是 $S$ 关于 $K$ 的极小元，则不存在 $z \in S$ 使得 $z \preceq_K x$ 且 $z \neq x$。这意味着：
   $$
   \nexists z \in S \text{ 使得 } x - z \in K \setminus \{0\}.
   $$

2. **分离超平面存在性**：  
   根据[[Wiki - 承托超平面]]定理，存在 $\lambda \in K^*$ 使得：
   $$
   \lambda^\top (x - z) \leq 0, \quad \forall z \in S.
   $$
   由于 $\lambda \succ_{K^*} 0$，进一步有：
   $$
   \lambda^\top x \leq \lambda^\top z, \quad \forall z \in S.
   $$

3. **极小化条件**：  
   上述不等式表明 $x$ 在 $S$ 上最小化 $\lambda^\top z$，即 $x$ 是 $\lambda^\top z$ 的极小点。

### 几何解释

该定理表明，极小元 $x$ 可以通过一个严格的正对偶向量 $\lambda$ 来识别，使得 $x$ 在 $S$ 上最小化 $\lambda^\top z$。几何上，这等价于存在一个超平面 $\{ z \mid \lambda^\top (z - x) = 0 \}$，严格支撑集合 $S$ 于点 $x$。
