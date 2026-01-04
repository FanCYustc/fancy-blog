---
aliases: 
info: 
date: 2025-06-18-星期三 11:33
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 多元统计分析/主成分分析
id: wiki20250618113322
banner: "![[astrowalk.gif]]"
---
---
## Def 1 对应分析 (Correspondence Analysis)

```ad-definition
title: 对应分析定义

由法国学者 Benzéiri (1973) 提出，核心思想是将列联表转化为标准化残差矩阵进行分解：

$$
W_s = D_r^{-1/2}(W - \frac{rc^T}{n})D_c^{-1/2} = UDV^T
$$
其中：
- $W_{p×q}$：$p×q$ 列联表
- $r = W1_q$：行和向量，$D_r = \text{diag}(r)$
- $c = W^T1_p$：列和向量，$D_c = \text{diag}(c)$
- $U, V$：左/右奇异向量矩阵
- $D = \text{diag}(\sqrt{\lambda_1},...,\sqrt{\lambda_k})$：奇异值矩阵 ($\lambda_1 \geq \cdots \geq \lambda_k > 0$)
```

**关键特征**：
1. 消除行/列边际影响：标准化残差 $\phi_{ij} = \frac{w_{ij}-r_ic_j/n}{\sqrt{r_ic_j}}$ 度量偏离独立性的程度 [[Wiki - 独立性检验]]
2. Pearson 卡方关联度量：$X^2 = n \|W_s\|_F^2 = n\sum\phi_{ij}^2 \sim \chi^2_{(p-1)(q-1)}$ 检验独立性 [[Wiki - pearson卡方检验]]
3. 双标图可视化：通过主坐标将行/列类别映射到低维空间

[[Wiki - 矩阵的奇异值分解]]

[[Scientech - 多元统计分析-协方差结构分析#Lec 12 双标图]]

---

## Thm 1 对应分析的 SVD 分解

```ad-theorem
title: 标准化残差矩阵的SVD

对中心标准化矩阵 $W_s$ 进行奇异值分解：
$$
W_s = UDV^T \quad \text{其中} \quad 
\begin{cases} 
U^TU = I_k, & V^TV = I_k \\
D = \text{diag}(\sqrt{\lambda_1},...,\sqrt{\lambda_k}) & (k=\text{rank}(W_s))
\end{cases}
$$
分解后可得：
1. **行主坐标**（行类别表示）：
   $$
   F = D_r^{-1/2}UD = [f_1 \mid \cdots \mid f_k], \quad f_\alpha = D_r^{-1/2}u_\alpha\sqrt{\lambda_\alpha}
   $$
2. **列主坐标**（列类别表示）：
   $$
   G = D_c^{-1/2}VD = [g_1 \mid \cdots \mid g_k], \quad g_\alpha = D_c^{-1/2}v_\alpha\sqrt{\lambda_\alpha}
   $$
```

**几何解释**：  
行/列坐标满足加权正交性：
$$
F^TD_rF = D^2, \quad G^TD_cG = D^2
$$
前两列 $(f_1,f_2)$ 和 $(g_1,g_2)$ 构成双标图坐标。

---

## Prop 1 对应分析的最优性

```ad-proposition
title: 最小化加权距离

对应分析的主坐标解等价于优化问题：
$$
\min_{f,g} \sum_{i,j} \left(w_{ij} - \frac{r_ic_j}{n}\right)(f_i - g_j)^2 \quad \text{s.t.} \quad 
\begin{cases} 
f^TD_rf = 1 \\ 
g^TD_cg = 1 \\
f^TD_r1_p = 0, \  g^TD_c1_q = 0
\end{cases}
$$
**最优解**为第一对奇异向量：
$$
f^* = D_r^{-1/2}u_1, \quad g^* = D_c^{-1/2}v_1
$$
```

### **证明**：  

由引理 $\sum_{i,j} a_{ij}(f_i - g_j)^2 = -2f^TW_cg$（当 $W_c$ 双中心化），目标函数转化为：
$$
-2f^T \underbrace{\left(W - \frac{rc^T}{n}\right)}_{W_c} g = -2(D_r^{1/2}f)^T W_s (D_c^{1/2}g)
$$
由 Rayleigh 商性质，最大值在 $W_s$ 的最大奇异向量处达到。

[[Wiki - Eckart-Young-Mirsky定理]]

---

## Def 2 双标图 (Biplot)

```ad-definition
title: 双标图可视化

将行/列主坐标的前两个维度绘制在同一坐标系中：
- **行点**：$P_i = (f_{i1}, f_{i2})$ 表示第 $i$ 个行类别
- **列点**：$Q_j = (g_{j1}, g_{j2})$ 表示第 $j$ 个列类别

**距离解释**：
1. 同行点间距离近 $\Rightarrow$ 行轮廓相似
2. 同列点间距离近 $\Rightarrow$ 列轮廓相似
3. 行点与列点距离近 $\Rightarrow$ 该行/列组合有强正关联
```
