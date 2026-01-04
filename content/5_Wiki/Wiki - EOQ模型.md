---
aliases:
  - 经济订货批量
info: 确定性存储模型的核心
date: 2025-12-17-星期三 10:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 运筹学/存储论
id: wiki20251217100001
banner: "![[astrowalk.gif]]"
---
---

# EOQ 模型 (Economic Order Quantity)

**经济订货批量 (EOQ)** 模型是库存管理中最基础的确定性模型，用于在需求恒定且已知的情况下，权衡订货成本和持有成本，寻找最优的订货数量。

## 基本模型 (Harris/Wilson 公式)

### 假设条件
1.  需求率 $R$ 是连续且均匀的常数。
2.  不允许缺货 (Shortage is not allowed)。
3.  补货是瞬时完成的 (Instantaneous replenishment)。
4.  单位存储费 $C_1$ 和每次订货费 $C_3$ 不变。

### 公式
$$ Q^* = \sqrt{\frac{2C_3 R}{C_1}} $$
- $Q^*$: 最佳订货批量
- $R$: 需求率 (Demand rate)
- $C_3$: 每次订货费 (Setup/Ordering cost)
- $C_1$: 单位产品单位时间存储费 (Holding cost)

对应的最小总年费用 (不含购置成本):
$$ C(Q^*) = \sqrt{2 C_1 C_3 R} $$

## 变体模型

### 1. 生产模型 (EPQ)
- **条件**: 补货非瞬时，以生产率 $P$ 补充 ($P > R$)。
- **公式**:
  $$ Q^* = \sqrt{\frac{2C_3 R}{C_1 (1 - R/P)}} $$
- 由于 $1 - R/P < 1$，生产模型的库存水平较低，因此 $Q^*$ 比基本模型大。

### 2. 允许缺货模型
- **条件**: 允许缺货，单位缺货费为 $C_2$，瞬时补货。
- **公式**:
  $$ Q^* = \sqrt{\frac{2C_3 R}{C_1}} \cdot \sqrt{\frac{C_1 + C_2}{C_2}} $$
- 因为允许缺货分担了部分存储压力，订货批量比基本模型大。

### 3. 生产 + 允许缺货
- **条件**: 结合上述两者。
- **公式**:
  $$ Q^* = \sqrt{\frac{2C_3 R}{C_1 (1 - R/P)}} \cdot \sqrt{\frac{C_1 + C_2}{C_2}} $$
