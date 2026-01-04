---
aliases: 
info: 
date: 2025-06-18-星期三 20:42
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 聚类分析
  - 机器学习
id: wiki20250618204225
banner: "![[astrowalk.gif]]"
---
---
## The 1 K-medoid 聚类

```ad-definition
title: K-medoid聚类定义

给定$n$个对象的距离矩阵$D = (d_{ij})_{n \times n}$（$d_{ij} = \text{dist}(i,j)$），**K-medoid聚类**求解指标集$\{1,2,...,n\}$的$K$-划分$C_1,...,C_K$及其**medoid中心**$\{m_1,...,m_K\} \subset \{1,2,...,n\}$，最小化组内距离和：
$$
\min_{C_k, m_k} \sum_{k=1}^K \sum_{i \in C_k} \text{dist}(i, m_k)
$$
其中**medoid**定义为类内与其它点距离之和最小的点：
$$
m_k = \arg\min_{j \in C_k} \sum_{i \in C_k} d_{ij}
$$

```

[[Wiki - 度量空间|距离空间]]

```ad-proposition
title: K-medoid算法步骤

1. **初始化**：随机选择$K$个medoid或给定初始划分
2. **分配步骤**：固定medoid $\{m_k\}$，将每个对象分配到最近medoid的类：
   $$
   C_k = \left\{ i : \text{dist}(i,m_k) \leq \text{dist}(i,m_s), \forall s \neq k \right\}
   $$
3. **更新步骤**：固定划分$\{C_k\}$，更新每个类的medoid：
   $$
   m_k = \arg\min_{j \in C_k} \sum_{i \in C_k} d_{ij}
   $$
4. **迭代**：重复步骤2-3直到收敛（medoid不再变化）

```



K-medoid vs K-means 比较：

| 特性                | K-medoid                          | K-means                           |
|---------------------|-----------------------------------|-----------------------------------|
| **中心类型**        | 实际数据点 (medoid)               | 类均值 (可能非数据点)             |
| **适用数据**        | 距离矩阵 (无原始特征)             | 原始特征向量                      |
| **鲁棒性**          | 对离群点鲁棒                      | 对离群点敏感                      |
| **计算复杂度**      | $O(n^2K)$                         | $O(npK)$                          |
| **目标函数**        | 绝对距离和                        | 平方欧氏距离和                    |

[[Wiki - 欧式相似系数矩阵]]

数学关系：
- 当距离为欧氏距离且各类方差相同时，K-means 等价于 K-medoid 的平方形式 [[Wiki - K-means聚类]]


### R语言实现
```r
# 使用cluster包的pam函数
library(cluster)

# 示例：欧洲11种语言聚类
s <- read.table("http://staff.ustc.edu.cn/~ynyang/vector/data/Euro-language1.txt")
d <- 10 - as.matrix(s)  # 相似度转距离

# 执行K-medoid聚类 (K=4)
pam_result <- pam(d, k = 4)

# 输出结果
print(pam_result$medoids)     # 各类medoid
print(pam_result$clustering)  # 分类结果
```

**输出**：
```
Medoids:
    ID
[1] "2" Norwegian  # 日耳曼语中心
[2] "8" Italian    # 拉丁语中心
[3] "10" Hungarian
[4] "11" Finnish

Clustering vector:
English Norwegian Danish Dutch German → 1
French Spanish Italian Polish → 2
Hungarian → 3
Finnish → 4


```

**应用场景**：
1. 只有主观距离矩阵（无原始特征）
2. 需要可解释的类代表（medoid为实际对象）
3. 数据含离群点（比K-means更鲁棒）

