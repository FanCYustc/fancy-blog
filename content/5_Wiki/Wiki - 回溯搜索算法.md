---
aliases: 
info: 
date: 2025-06-11-星期三 22:38
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 统计算法
  - 凸优化
  - 算法
id: wiki20250611223852
banner: "![[astrowalk.gif]]"
---
---


## The 1 回溯直线搜索

```ad-theorem
title: 回溯直线搜索 (Backtracking Line Search)

**回溯直线搜索**是一种用于优化算法（如梯度下降法）的自适应步长选择策略。其核心思想是通过逐步缩小步长 $\alpha$，确保目标函数值满足**充分下降条件**（Armijo条件）。

**数学描述**：  
设目标函数 $f: \mathbb{R}^n \to \mathbb{R}$，当前迭代点 $x_k$，搜索方向 $p_k$（通常 $p_k = -\nabla f(x_k)$）。  
选择初始步长 $\alpha_0 > 0$，衰减因子 $\rho \in (0,1)$，常数 $c \in (0,1)$。  
重复以下步骤直到满足 **Armijo 条件**：  
$$ f(x_k + \alpha p_k) \leq f(x_k) + c \alpha \nabla f(x_k)^T p_k $$  
若不满足，则更新 $\alpha \leftarrow \rho \alpha$。

**参数典型值**：  
- $c \in [10^{-5}, 10^{-1}]$（常用 $10^{-4}$）  
- $\rho \in [0.1, 0.8]$（常用 $0.5$）
```

**关键性质**：  
1. **全局收敛性**：在适当条件下，可保证优化算法收敛到局部极小点。  
2. **计算效率**：避免固定步长导致的震荡或收敛缓慢问题。  
3. **适应性**：自动调整步长以适应函数局部曲率。

**推导说明**：  
Armijo 条件确保函数值下降量至少为线性外推预测值的 $c$ 倍：  
$$ \Delta f \approx \alpha \nabla f^T p_k \quad \Rightarrow \quad \text{要求} \quad f(x_{k+1}) - f(x_k) \leq c \alpha \nabla f^T p_k $$  
当 $p_k$ 为下降方向时（$\nabla f^T p_k < 0$），该条件可被满足。

[[Wiki - 梯度下降法]]

