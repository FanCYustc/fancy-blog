---
aliases: 
info: 
date: 2025-06-10-星期二 21:31
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 数据分析
  - 概率论
id: wiki20250610213115
banner: "![[astrowalk.gif]]"
---
---

## Def 1 基尼指数 (Gini Index)

```ad-definition
title: 基尼指数定义

**基尼指数**（Gini Index）是决策树算法中用于特征选择的纯度度量指标，定义为从数据集$D$中随机抽取两个样本，其类别标记不一致的概率。其计算公式为：

$$ \text{Gini}(D) = 1 - \sum_{k=1}^{K} p_k^2 $$

其中：
- $K$ 为类别总数
- $p_k$ 为第$k$类样本在$D$中所占比例

基尼指数越小（最小值为0），表示数据集纯度越高。
```

```ad-proposition
title: 特征选择准则

对于特征$A$，其基尼指数定义为：
$$ 
Gini_{index}(A) = \sum_{v=1}^{V} \frac{|D_v|}{|D|} Gini(D_v) 
$$
其中：
- $V$ 是特征$A$的取值个数
- $D_v$ 是$A$取第$v$个值时对应的子集

**特征选择原则**：选择使$Gini_{index}(A)$最小的特征进行节点分裂
```

```ad-theorem
title: 基尼指数与熵的关系

基尼指数与信息熵$\text{Ent}(D)$具有相似特性：
$$ \text{Gini}(D) \approx 2 \times \text{Ent}(D) $$
证明：
由泰勒展开式 $-\ln p_k = (1-p_k) - \frac{(1-p_k)^2}{2} + \cdots$ 可得：
$$ \begin{aligned}
\text{Ent}(D) &= -\sum p_k \ln p_k \\
&\approx \sum p_k \left[ (1-p_k) - \frac{(1-p_k)^2}{2} \right] \\
&= \sum (p_k - p_k^2) - \frac{1}{2}\sum p_k(1-2p_k+p_k^2) \\
&= \frac{1}{2} \left(1 - \sum p_k^2\right) = \frac{1}{2}\text{Gini}(D)
\end{aligned} $$
```

[[Wiki - 熵]]

