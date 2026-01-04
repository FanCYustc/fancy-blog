---
aliases:
info:
date: 2025-12-10-星期三 15:35
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/非参方法
  - 统计学习
id: wiki20251210153500
banner: "![[astrowalk.gif]]"
---
---

## Def 1 光滑样条 (Smoothing Splines)

光滑样条通过最小化带惩罚的残差平方和来寻找最佳拟合函数 $f(x)$，从而避免了手动选择节点位置和数量的问题。
优化目标为：
$$
\text{RSS}(f, \lambda) = \sum_{i=1}^N \{y_i - f(x_i)\}^2 + \lambda \int \{f''(t)\}^2 dt
$$
其中 $\lambda \geq 0$ 是光滑参数。
-   第一项衡量拟合优度（数据贴合程度）。
-   第二项惩罚函数的曲率（粗糙度）。
-   $\\lambda$ 控制两者之间的权衡：$\\lambda=0$ 时为插值函数（过拟合），$\\lambda \to \infty$ 时退化为最小二乘线性回归。

[[Wiki - 多重线性回归最小二乘估计]]
## Pro 1 唯一解与性质

### 唯一解
虽然优化是在无限维函数空间（Sobolev 空间）中进行的，但可以证明，上述问题的唯一极小值是一个**自然三次样条**，其节点位于每个唯一的观测点 $x_i$ 处。

### 有效自由度 (Effective Degrees of Freedom)
光滑样条是线性平滑器，拟合值可以写成 $\\hat{\mathbf{f}} = \mathbf{S}_\lambda \mathbf{y}$，其中 $\\mathbf{S}_\lambda$ 是光滑矩阵（类似于回归中的帽子矩阵）。
定义有效自由度为：
$$
df_\lambda = \text{trace}(\mathbf{S}_\lambda)
$$
通过指定 $df_\lambda$ 可以直观地确定光滑参数 $\\lambda$。

[[Wiki - 有效参数个数|有效自由度]]
### 广义交叉验证 (GCV)
通常使用 [[Wiki - 交叉验证]] 或广义交叉验证 (GCV) 来自动选择最优的 $\\lambda$。

参见：[[Wiki - 样条函数]], [[Wiki - 线性回归模型]], [[Wiki - 再生核希尔伯特空间]]
