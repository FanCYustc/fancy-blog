---
aliases: 
info: 
date: 2025-06-12-星期四 12:20
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 统计算法
  - 算法
  - 凸优化
id: wiki20250612122015
banner: "![[astrowalk.gif]]"
---
---

### 最速下降法原理总结

#### **1. 核心思想**
最速下降法通过选择**使目标函数线性近似下降最快的方向**作为搜索方向：
- 规范化方向：$\Delta x_{\text{nsd}} = \operatorname{argmin} \{ \nabla f(x)^\top v \mid \|v\|=1 \}$
- 非规范化方向：$\Delta x_{\text{sd}} = \|\nabla f(x)\|_* \cdot \Delta x_{\text{nsd}}$
  - 其中 $\|\cdot\|_*$ 是对偶范数，满足 $\nabla f(x)^\top \Delta x_{\text{sd}} = -\|\nabla f(x)\|_*^2$

[[Wiki - Lagrange对偶问题]]

$$
\|\nabla f(x)\|_{*} = \max_{\|v\|=1}\{ \nabla f(x)^{T}v\}
$$
#### **2. 算法步骤**

1. 计算最速下降方向 $\Delta x_{\text{sd}}$
2. 线搜索确定步长 $t$（精确或回溯搜索）[[Wiki - 梯度下降法]] [[Wiki - 回溯搜索算法]]
3. 更新：$x := x + t \Delta x_{\text{sd}}$
4. 重复直至收敛

[[Wiki - 范数]]

#### **3. 不同范数下的方向形式**
- **欧几里得范数 ($L_2$)**：  
  $\Delta x_{\text{sd}} = -\nabla f(x)$  
  （退化为梯度下降法）

- **二次范数 ($\|z\|_P = (z^\top P z)^{1/2}$)**：  
  $\Delta x_{\text{sd}} = -P^{-1} \nabla f(x)$  
  （$P \in \mathbf{S}_{++}^n$ 为正定矩阵）

- **$L_1$ 范数**：  
  $\Delta x_{\text{sd}} = -\frac{\partial f(x)}{\partial x_i} e_i$  
  （$i$ 为 $\|\nabla f(x)\|_\infty$ 对应的分量索引，退化为坐标下降法）

#### **4. 收敛性分析**

[[Wiki - 算法的收敛性]]

假设 $f$ 强凸 [[Wiki - 强凸性]]且满足 $mI \preceq \nabla^2 f(x) \preceq MI$ ：
- **收敛速度**：线性收敛 $f(x^{(k)}) - p^\star \leq c_0 c^k$
- **参数关系**：  
  $c = 1 - 2m\alpha \gamma_1^2 \min\left\{1, \frac{\beta \gamma_1^2}{M \gamma_2^2}\right\}$  
  其中：
  - $\alpha, \beta$ 为回溯线搜索参数
  - $\gamma_1, \gamma_2$ 满足 $\gamma_1 \|x\|_2 \leq \|x\|_* \leq \gamma_2 \|x\|_2$ 由范数的等价性 [[Wiki - 范数的等价]]

#### **5. 关键性质**
- **$L_1$ 范数的特殊优势**：  
  方向简化为坐标轴方向，天然支持稀疏更新，可省略线搜索（解析解易得）。
- **与牛顿法对比**：  
  牛顿步径 $\Delta x_{\text{nt}} = -\nabla^2 f(x)^{-1} \nabla f(x)$ 是二次范数 $\|u\|_{\nabla^2 f(x)}$ 下的最速下降方向 [[Wiki - 牛顿算法]]。

#### **6. 应用示例**
- **坐标下降法 ($L_1$ 范数)**：  
  对于目标函数 $f(x) = \log\left(\sum_{i,j} M_{ij}^2 e^{x_i - x_j}\right)$ ：
  1. 选择梯度最大分量 $|\nabla f(x)|_\infty = \left| \frac{\partial f}{\partial x_k} \right|$
  2. 解析更新：$x_k := \frac{1}{2} \log(\beta_k / \gamma_k)$  
     （$\beta_k, \gamma_k$ 为 $x_k$ 的函数）
