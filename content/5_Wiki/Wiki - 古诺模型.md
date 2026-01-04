---
aliases:
  - Cournot Model
info: 基于产量竞争的双寡头博弈模型
date: 2025-12-17-星期三 10:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 运筹学/博弈论
  - 经济学
id: wiki20251217102003
banner: "![[astrowalk.gif]]"
---
---

# 古诺模型

**古诺模型**（Cournot Model）是法国经济学家古诺于1838年提出的**双寡头**（Duopoly）博弈模型。

## 1. 假设
*   两个厂商生产**同质**产品。
*   决策变量是**产量**（$q_1, q_2$）。
*   市场价格 $P$ 是总产量 $Q = q_1 + q_2$ 的函数：$P(Q) = a - bQ$（线性需求）。
*   单位成本为常数 $c$。

## 2. 模型分析
厂商 $i$ 的利润函数：
$$ \pi_i = (P(Q) - c) q_i = (a - b(q_1+q_2) - c)q_i $$

**反应函数**（Reaction Function）：
通过 $\frac{\partial \pi_i}{\partial q_i} = 0$ 求得最佳反应：
$$ q_1^*(q_2) = \frac{a-c-bq_2}{2b} $$
$$ q_2^*(q_1) = \frac{a-c-bq_1}{2b} $$

## 3. 均衡解
联立反应函数求解，得到**古诺纳什均衡**：
$$ q_1^* = q_2^* = \frac{a-c}{3b} $$
总产量 $Q^* = \frac{2(a-c)}{3b}$。
相比于完全竞争（$P=c$）和完全垄断，古诺均衡介于两者之间。