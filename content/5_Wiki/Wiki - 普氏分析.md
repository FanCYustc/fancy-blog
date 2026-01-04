---
aliases: 
info: 
date: 2025-06-18-星期三 11:39
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 多元统计分析
  - 相关
id: wiki20250618113902
banner: "![[astrowalk.gif]]"
---
---
## Def 1 普氏分析 (Procrustes Analysis)

```ad-definition
title: 普氏分析定义

**普氏分析**是一种数据对齐方法，通过正交旋转和平移变换使两个数据集尽可能相似。名称源于希腊神话中强行将客人身体与铁床匹配的强盗Procrustes，在统计学中指：
> 寻找最优正交变换 $Q$ 和平移向量 $b$ 使得变换后数据集 $Y$ 与目标数据集 $X$ 的差异最小化：

$$
\min_{Q,b} \|X - (YQ^T + \mathbf{1}b^T)\|_F^2 \quad \text{s.t.} \quad Q^TQ = QQ^T = I_p
$$
其中：
- $X_{n×p}, Y_{n×p}$：目标矩阵和待变换矩阵
- $Q_{p×p}$：正交旋转矩阵
- $b \in \mathbb{R}^p$：平移向量
- $\mathbf{1}$：全1列向量
```


**关键特性**：
1. **形状保持**：正交变换保持向量间角度和距离不变
2. **中心化不变性**：解与数据中心化处理兼容
3. **应用场景**：图像配准、形状分析、多维标度验证

---

## Thm 1 普氏解的存在性与构造

```ad-theorem
title: 基于SVD的普氏解

设中心化数据集 $\tilde{X} = X - \mathbf{1}\bar{x}^T$, $\tilde{Y} = Y - \mathbf{1}\bar{y}^T$，其中 $\bar{x},\bar{y}$ 为行均值向量。普氏问题简化为：
$$
\min_Q \|\tilde{X} - \tilde{Y}Q^T\|_F^2
$$
**最优解**由样本协方差矩阵 $A = \tilde{X}^T\tilde{Y}$ 的SVD决定：
1. 计算SVD：$A = UDV^T$
2. 最优旋转：$Q^* = UV^T$
3. 最优平移：$b^* = \bar{x} - Q^*\bar{y}$
```

[[Wiki - 矩阵的奇异值分解]]
### **证明**：

目标函数展开：
$$
\|\tilde{X} - \tilde{Y}Q^T\|_F^2 = \text{tr}(\tilde{X}^T\tilde{X}) + \text{tr}(\tilde{Y}^T\tilde{Y}) - 2\text{tr}(Q\tilde{Y}^T\tilde{X})
$$
最大化 $\text{tr}(Q\tilde{Y}^T\tilde{X}) = \text{tr}(QA)$。由矩阵极分解理论，当 $A = UDV^T$ 时：
$$
\max_Q \text{tr}(QA) = \text{tr}(QUDV^T) \leq \sum \sigma_i(A)
$$
等号成立当且仅当 $Q = UV^T$。

[[Wiki - 矩阵的迹]]


## Prop 1 极分解与普氏分析

```ad-proposition
title: 极分解表示

任何矩阵 $A \in \mathbb{R}^{p×p}$ 可表示为**极分解**：
$$
A = \Theta R \quad \text{或} \quad A = R' \Theta
$$
其中：
- $R = (A^TA)^{1/2}$, $R' = (AA^T)^{1/2}$ 为对称半正定矩阵（"伸缩"）
- $\Theta = UV^T$ 为酉矩阵（"旋转"），由SVD $A = UDV^T$ 生成

**普氏意义**：普氏解 $Q^* = \Theta$ 本质是样本协方差矩阵 $A = \tilde{X}^T\tilde{Y}$ 的旋转分量。
```

[[Wiki - 协方差矩阵]]

**推导**：
$$
A = UDV^T = (UV^T)(VDV^T) = \Theta (A^TA)^{1/2}
$$
当 $A$ 为协方差矩阵时，$\Theta$ 即为使 $Y$ 旋转后与 $X$ 方向对齐的变换矩阵。

---

### 算法实现
```python
import numpy as np
def procrustes(X, Y):
    # 中心化
    X_cent = X - np.mean(X, axis=0)
    Y_cent = Y - np.mean(Y, axis=0)
    
    # 计算协方差矩阵的SVD
    A = X_cent.T @ Y_cent
    U, _, Vt = np.linalg.svd(A)
    
    # 最优旋转与平移
    Q = U @ Vt
    b = np.mean(X, axis=0) - Q @ np.mean(Y, axis=0)
    return Q, b

# 示例：对齐两个点集
X = np.random.randn(100, 3)  # 目标点云
Y = 0.8 * X @ np.random.randn(3, 3) + 1.5  # 仿射变换后的点云
Q, b = procrustes(X, Y)
Y_aligned = Y @ Q.T + b  # 对齐后的Y
```
