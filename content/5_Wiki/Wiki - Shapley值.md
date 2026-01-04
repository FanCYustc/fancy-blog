---
aliases: [Shapley Value, 夏普利值]
info: 合作博弈中基于边际贡献的公平分配方法
date: 2025-12-17-星期三 10:20
update: 
tags:
  - wiki/year2025
  - wiki/month12
  - 运筹学/博弈论
  - 合作博弈
id: wiki20251217102005
banner: "![[astrowalk.gif]]"
---
---

# Shapley 值

**Shapley 值**（Shapley Value）是劳埃德·沙普利（Lloyd Shapley）提出的一种用于解决合作博弈中收益（或成本）分配问题的解概念。它提供了一种**唯一**的、满足特定公理的分配方案。

## 1. 定义
对于合作博弈 $(N, v)$，局中人 $i$ 的 Shapley 值 $\phi_i(v)$ 为：
$$ \phi_i(v) = \sum_{S \subseteq N \setminus \{i\}} \frac{|S|!(n-|S|-1)!}{n!} [v(S \cup \{i\}) - v(S)] $$
*   $v(S \cup \{i\}) - v(S)$：局中人 $i$ 加入联盟 $S$ 带来的**边际贡献**。
*   权重系数：表示该排列出现的概率（假设所有排列等概）。

## 2. 公理化特征
Shapley 值是唯一满足以下四个公理的分配规则：
1.  **有效性 (Efficiency)**：所有人的分配之和等于大联盟的总收益，$\sum \phi_i = v(N)$。
2.  **对称性 (Symmetry)**：如果两个局中人在博弈中地位等同（对任何联盟贡献相同），则分配相同。
3.  **虚拟人/哑元 (Null Player)**：如果某人对任何联盟的贡献都为 0，则其分配为 0。
4.  **可加性 (Additivity)**：两个博弈合成的博弈，其分配等于两个博弈分配之和。

## 3. 应用
广泛应用于成本分摊、供应链利润分配、投票权力指数（Shapley-Shubik Index）等。
