---
aliases: 
info: 
date: 2025-03-19-星期三 22:00
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 凸优化
  - 对偶
id: wiki20250319220018
banner: "![[astrowalk.gif]]"
---
---


## **对偶锥（Dual Cone）**

给定正常锥 [[Wiki - 正常锥]] $K$，其**对偶锥**定义为：
$$
K^* = \left\{ y \in \mathbb{R}^n \mid y^\top x \geq 0,\ \forall x \in K \right\}.
$$

[[Wiki - 对偶空间]]
## 对偶锥的性质

1. **自反性**：若 $K$ 是闭 [[Wiki - 度量空间的开集闭集]]凸锥 [[Wiki - 凸集]]，则 $(K^*)^* = K$。类似 [[Wiki - 自反空间]]
2. **保序性**：若 $K_1 \subseteq K_2$，则 $K_2^* \subseteq K_1^*$。
3. **广义不等式对偶**：  
   - $x \preceq_K y \iff y^\top \lambda \geq x^\top \lambda$ 对所有 $\lambda \succeq_{K^*} 0$ 成立。
   - $x \prec_K y \iff y^\top \lambda > x^\top \lambda$ 对所有非零 $\lambda \succeq_{K^*} 0$ 成立。

 [[Wiki - 广义不等式]]

---

## **常见正常锥及其对偶**

子空间的对偶锥是其正交补 [[Wiki - 正交补空间]]

1. **非负象限**（例2.23）  
   - $K = \mathbb{R}^n_+$，对偶锥 $K^* = \mathbb{R}^n_+$（自对偶）。
   - 广义不等式即分量不等式：$x \preceq y \iff x_i \leq y_i$。

2. **半正定锥**（例2.24）  
   - $K = \mathbb{S}^n_+$（$n \times n$ 对称半正定矩阵），对偶锥 $K^* = \mathbb{S}^n_+$（自对偶）。[[Wiki - 正定矩阵]]
   - 广义不等式即矩阵半正定序：$X \preceq Y \iff Y - X \succeq 0$。

3. **二阶锥**（例2.25）  
   - $K = \left\{ (x,t) \in \mathbb{R}^n \times \mathbb{R} \mid \|x\|_2 \leq t \right\}$，对偶锥 $K^* = K$（自对偶）。
   - 广义不等式对应欧几里得范数约束。

---

## **在优化中的应用**

1. **锥优化标准形式**（来自[[Robustbook.pdf]]）：  
   目标函数为线性，约束为广义不等式：
   $$
   \begin{align*}
   \min \quad & c^\top x \\
   \text{s.t.} \quad & Ax = b, \\
   & x \succeq_K 0.
   \end{align*}
   $$
   对偶问题为：
   $$
   \begin{align*}
   \max \quad & b^\top y \\
   \text{s.t.} \quad & A^\top y = c, \\
   & y \succeq_{K^*} 0.
   \end{align*}
   $$

2. **强对偶条件**：  
   若原问题严格可行（存在 $x$ 使 $Ax = b$ 且 $x \in \text{int}\,K$），则强对偶成立，即原问题与对偶问题最优值相等。

3. **极小元判定**（定理2.26）：  
   - $x$ 是集合 $S$ 的极小元（关于 $K$）当且仅当存在 $\lambda \succ_{K^*} 0$，使得 $x$ 在 $S$ 上最小化 $\lambda^\top z$。
   - 几何解释：超平面 $\{ z \mid \lambda^\top (z - x) = 0 \}$ 是 $S$ 在 $x$ 处的严格支撑超平面。[[Wiki - 承托超平面]]

