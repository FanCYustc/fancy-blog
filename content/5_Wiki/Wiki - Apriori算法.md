---
aliases: 
info: 
date: 2025-06-10-星期二 18:10
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 数据分析
  - 算法
id: wiki20250610181049
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Apriori 算法

```ad-definition
title: Apriori算法

**核心概念**：  
Apriori算法是关联规则挖掘中用于发现频繁项集（Frequent Itemsets）的经典算法，基于"向下闭包性"（Apriori Property）：  
*若项集$X$是非频繁的，则其超集$Y \supset X$也必然是非频繁的*  

**算法流程**：  
1. **扫描数据集**：计算所有单项的支持度（Support）  
   $$\text{supp}(X) = \frac{\text{count}(X)}{|D|}$$  
   保留满足最小支持度阈值$\text{minsup}$的项集$L_1$  
2. **迭代生成候选集**：  
   - 连接：$L_k$自连接生成候选$k+1$-项集$C_{k+1}$  
   - 剪枝：删除$C_{k+1}$中存在$k$-子集$\notin L_k$的项集  
3. **支持度计数**：扫描数据集验证$C_k$中项集的支持度  
4. **终止条件**：当$C_k = \emptyset$时停止  
```
将项集中的元素都按固定顺序排序，对 $L_{k}$ 中的项集能进行连接形成 $C_{k+1}$ 候选集，当且仅当它们的前 k-1 个项相同。

**伪代码**：  

L₁ = {frequent 1-itemsets}

for (k=2; $L_{k-1} \neq \emptyset$; k++):
    $C_k$ = $apriori_{gen} (L_{k-1})$  // 连接+剪枝
    for each transaction $t \in D$ :
        $C_t$ = $subset (C_k, t)$    // 获取 t 的子候选集
        for each candidate $c \in C_t$ :
            c.count++ 
    $L_k = \{c \in C_k | c.count \geq min_{sup}\}$
return $\cup_k L_k$


**复杂度分析**：  
- 时间复杂度：$O(|D| \cdot \max_k |C_k| \cdot k)$  
- 空间复杂度：$O(\prod_k |C_k|)$  
主要瓶颈在于候选项集数量指数级增长  


**关键性质证明**：  
设项集 $X \notin L_k$（非频繁），$Y \supset X$ ：  
$$\text{supp}(Y) \leq \text{supp}(X) < \text{minsup} \implies Y \text{ 非频繁}$$  
该性质使算法能有效剪枝搜索空间  
