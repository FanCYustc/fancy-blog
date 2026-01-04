---
aliases:
  - Robust Optimization
  - RO
info: 解决参数不确定性问题的优化方法，追求最坏情况下的可行性与最优性
date: 2025-12-11-星期四 10:45:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 鲁棒优化
  - 优化
id: wiki20251211104500
banner: "![[astrowalk.gif]]"
---

# 鲁棒优化 (Robust Optimization)

## 定义
**鲁棒优化 (Robust Optimization, RO)** 是一种应对数学规划中数据不确定性的建模方法。与随机规划（Stochastic Programming）依赖概率分布不同，鲁棒优化假设不确定参数在一个确定的集合（**不确定集**, Uncertainty Set $\mathcal{U}$）内变化，并寻求在**最坏情况（Worst-case）**下依然可行且最优的解。

## 基本形式
一个一般的鲁棒优化问题可以表述为：
$$ 
\min_{\pmb{x}} \left\{ \sup_{z \in \mathcal{U}} f(\pmb{x}, z) \right\} 
$$ 
s.t.
$$ g(\pmb{x}, z) \leq 0, \quad \forall z \in \mathcal{U} $$ 
其中：
- $\pmb{x}$ 是决策变量。
- $z$ 是不确定参数。
- $\mathcal{U}$ 是不确定集。
- 目标是最小化最坏情况下的成本。
- 约束要求在不确定集内的所有情景下都成立（**鲁棒可行性**）。

## 核心思想
鲁棒优化的核心思想是**“最坏情况下的最优” (Min-Max)**。即在所有可能的不确定参数实现中，寻找一个决策，使得在最坏情况下的目标函数值最好（或约束条件依然满足）。

### 数学模型
考虑一个带参数的不确定优化问题：
$$ 
\min_x f(x, \xi) \quad \text{s.t.} \quad g_i(x, \xi) \leq 0, \quad \forall i 
$$ 
其中 $\xi$ 是不确定参数。

参见 [[Wiki - 凸优化问题标准形式]]。

鲁棒优化对应的模型（Robust Counterpart, RC）为：
$$ 
\min_x \max_{\xi \in \mathcal{U}} f(x, \xi) \quad \text{s.t.} \quad g_i(x, \xi) \leq 0, \quad \forall \xi \in \mathcal{U} 
$$ 
其中 $\mathcal{U}$ 是**不确定集 (Uncertainty Set)**，包含了参数 $\xi$ 所有可能的取值。
1.  **最坏情况视角 (Worst-case Perspective)**：决策必须能够承受不确定集内任何可能的参数扰动，包括最极端的情况。
2.  **不确定集 (Uncertainty Set)**：用几何形状（如盒式、椭球、多面体）来刻画参数的波动范围，而非概率分布。
3.  **计算可处理性 (Tractability)**：鲁棒优化的一个关键目标是将含有无限约束（Semi-infinite Programming）的原始问题转化为可求解的有限凸优化问题（如线性规划、二阶锥规划），即推导**鲁棒对等式 (Robust Counterpart)**。

## 与随机规划的对比
| 特性 | 鲁棒优化 (RO) | 随机规划 (SP) |
| :--- | :--- | :--- |
| **不确定性描述** | 不确定集 (集合) | 概率分布 (PDF/CDF) |
| **优化目标** | 最坏情况 (Min-Max) | 期望值 (Expectation) |
| **约束保证** | 100% 可行 (Hard Constraint) | 概率可行 (Chance Constraint) |
| **计算难度** | 通常可转化为确定性凸优化 | 往往需要多重积分或采样 (SAA) |
| **适用场景** | 风险厌恶，无分布数据 | 风险中性，有历史数据 |

## 相关概念

- [[Wiki - 盒式不确定集]]
- [[Wiki - 椭球不确定集]]
- [[Wiki - 分布鲁棒优化]] (DRO)
