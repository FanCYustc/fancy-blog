---
aliases: 
info: 
date: 2025-06-13-星期五 10:12
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 统计算法
  - 凸优化
  - 算法
id: wiki20250613101254
banner: "![[astrowalk.gif]]"
---
---

### **1. 问题描述**
- **目标**：最小化凸函数 $f (x)$（二次可微），满足等式约束 $Ax = b$。
- **条件**：
  - $A \in \mathbb{R}^{p \times n}$，且 $\text{rank}(A) = p < n$（约束独立且少于变量数）。
  - 初始点 $x^{(0)}$ 必须**可行**：$x^{(0)} \in \text{dom} f$ 且 $Ax^{(0)} = b$。

---

### **2. Newton 方向的计算**
- **定义**：在可行点 $x$ 处，Newton 方向 $\Delta x_{\text{nt}}$ 通过求解以下 KKT 系统获得：
  $$
  \begin{bmatrix}
  \nabla^2 f (x) & A^\top \\
  A & 0
  \end{bmatrix}
  \begin{bmatrix}
  \Delta x_{\text{nt}} \\
  w
  \end{bmatrix}
  =
  \begin{bmatrix}
  -\nabla f (x) \\
  0
  \end{bmatrix}
  $$
[[Wiki - 等式约束凸二次规划]]

  - **要求**：KKT 矩阵需非奇异 [[Wiki - 可逆线性映射]]（即 $\nabla^2 f (x)$ 在 $\mathcal{N}(A)$ 正定）。[[Wiki - KKT条件]]
- **性质**：
  - $\Delta x_{\text{nt}}$ 是**可行方向**：$A \Delta x_{\text{nt}} = 0$。
  - $\Delta x_{\text{nt}}$ 是**下降方向**：$\nabla f (x)^\top \Delta x_{\text{nt}} = -\lambda (x)^2 < 0$（除非 $x$ 已最优）。

---

### **3. Newton 减量**
- **定义**：
  $$
  \lambda (x) = \left ( \Delta x_{\text{nt}}^\top \nabla^2 f (x) \Delta x_{\text{nt}} \right)^{1/2}
  $$
- **作用**：
  1. **停止准则**：当 $\lambda (x)^2 / 2 \leq \epsilon$ 时终止。
  2. **目标估计**：$f (x) - p^\star \approx \lambda (x)^2 / 2$。
  3. **方向导数**：$\frac{d}{dt} f (x + t \Delta x_{\text{nt}}) \big|_{t=0} = -\lambda (x)^2$.

---

### **4. 算法步骤**

输入：可行初始点 $x$，容忍误差 $\epsilon > 0$
重复：
  1. 计算 Newton 方向 $\Delta x_{\text{nt}}$ 和减量 $\lambda (x)$。[[Wiki - 牛顿算法]]
  2. 若 $\lambda (x)^2 / 2 \leq \epsilon$，退出。
  3. 回溯直线搜索：选择步长 $t > 0$ 使得 $f (x + t \Delta x_{\text{nt}}) < f (x)$。
  4. 更新：$x \leftarrow x + t \Delta x_{\text{nt}}$。
输出：$\epsilon$ -次优解 $x$。

- **特点**：所有迭代点均可行（$Ax = b$），且目标函数严格下降。

---

### **5. 与消除法的等价性**
- **问题转换**：通过矩阵 $F$ $( \mathcal{R}(F) = \mathcal{N}(A))$ 将约束问题转化为无约束问题：
  $$
  \min_z \tilde{f}(z) = f (Fz + \hat{x}), \quad \hat{x} \text{ 是 } Ax=b \text{ 的特解}.
  $$


- **等价性**：
  - 简化问题的 Newton 方向 $\Delta z_{\text{nt}}$ 满足：
    $$
    F \Delta z_{\text{nt}} = \Delta x_{\text{nt}}.
    $$
  - Newton 减量 $\lambda (x)$ 与简化问题一致。

---

### **6. 收敛性分析**

[[Wiki - 算法的收敛性]]
- **假设**：
  - 下水平集 $S = \{ x \mid f (x) \leq f (x^{(0)}), Ax=b \}$ 闭且有界。
  -  $\nabla^2 f (x)$ 在 $S$ 上满足 Lipschitz 条件 [[Wiki - 利普希茨条件]]。
- **结论**：算法超线性收敛至最优解 $x^\star$，且对偶变量 $w$ 收敛至 $\nu^\star$。

---

### **7. 关键公式与解释**
- **KKT 系统**：  
$$
  \nabla f (x) + A^\top \nu = 0, \quad Ax = b.
 $$
- **Newton 步的推导**：用 $x + \Delta x_{\text{nt}}$ 近似最优解，线性化梯度：
  $$
  \nabla f (x) + \nabla^2 f (x) \Delta x_{\text{nt}} + A^\top w = 0.
  $$
