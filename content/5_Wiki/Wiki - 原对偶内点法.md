---
aliases: 
info: 
date: 2025-06-13-星期五 11:19
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 凸优化
  - 算法
  - 统计算法
id: wiki20250613111940
banner: "![[astrowalk.gif]]"
---
---

### **1. 核心思想**
原对偶内点法是一种求解不等式约束优化问题的高效算法，通过同时更新原变量和对偶变量，避免障碍方法的内外迭代分离。其核心是求解**修改的 KKT 方程**：
$$
\begin{bmatrix} 
\nabla^2 f_0(x) + \sum \lambda_i \nabla^2 f_i(x) & \nabla f(x)^T & A^T \\
-\text{diag}(\lambda) \nabla f(x) & -\text{diag}(f(x)) & 0 \\
A & 0 & 0 
\end{bmatrix}
\begin{bmatrix} 
\Delta x_{\text{pd}} \\ 
\Delta \lambda_{\text{pd}} \\ 
\Delta \nu_{\text{pd}} 
\end{bmatrix} = 
- \begin{bmatrix} 
r_{\text{dual}} \\ 
r_{\text{cent}} \\ 
r_{\text{pri}} 
\end{bmatrix}
$$
其中残差项包括对偶残差 $r_{\text{dual}}$、中心残差 $r_{\text{cent}}$ 和原残差 $r_{\text{pri}}$。

[[Wiki - KKT条件]]

---

### **2. 关键概念**
#### **（1）代理对偶间隙 (Surrogate Duality Gap)**
- 定义：$\hat{\eta}(x, \lambda) = -f(x)^T \lambda$。
- 作用：当原问题可行 ($f(x) \prec 0$) 且对偶可行 ($\lambda \succeq 0$) 时，$\hat{\eta}$ 等于真实对偶间隙。
- 参数 $t$ 的更新：$t = \mu m / \hat{\eta}$（$\mu > 1$ 为增长因子）。

#### **（2）搜索方向**
- 通过求解上述线性方程组得到 $\Delta y_{\text{pd}} = (\Delta x_{\text{pd}}, \Delta \lambda_{\text{pd}}, \Delta \nu_{\text{pd}})$。
- 与障碍方法的联系：方向相似但不完全相同，且通过残差耦合。

---

### **3. 算法步骤**
**算法 2：原对偶内点法**  
1. **初始化**：  
   - 严格可行点 $x$（满足 $f_i(x) < 0$），$\lambda \succ 0$，$t = t_0 > 0$，$\mu > 1$，$\epsilon_{\text{feas}} > 0$，$\epsilon > 0$。  
2. **循环直到收敛**：  
   a. **更新 $t$**：$t := \mu m / \hat{\eta}$。  
   b. **计算搜索方向**：求解修改的 KKT 方程得 $\Delta y_{\text{pd}}$。  
   c. **直线搜索**：  
      - 计算最大步长 $s_{\max} = \min\left(1, \min\{ -\lambda_i / \Delta \lambda_i \mid \Delta \lambda_i < 0 \}\right)$。  
      - 从 $s = 0.99 s_{\max}$ 开始回溯，用 $\beta \in (0,1)$ 缩减 $s$ 直至：  
        - $f(x^+) \prec 0$（可行性保持），  
        - $\|r_t(x^+, \lambda^+, \nu^+)\|_2 \leq (1 - \alpha) \|r_t(x, \lambda, \nu)\|_2$（残差下降）。  
   d. **更新变量**：$y := y + s \Delta y_{\text{pd}}$。  
   e. **终止条件**：$\|r_{\text{pri}}\|_2 \leq \epsilon_{\text{feas}}$，$\|r_{\text{dual}}\|_2 \leq \epsilon_{\text{feas}}$，且 $\hat{\eta} \leq \epsilon$。  

---

### **4. 特点与优势**
1. **单层迭代**：  
   - 同时更新原变量和对偶变量，无内外迭代分离（区别于障碍方法）。  
2. **可行性要求宽松**：  
   - 迭代点无需严格可行（障碍方法需严格可行点）。  
3. **高效性与收敛性**：  
   - 适合高精度求解，具有超线性收敛性。  
   - 实际计算中常比障碍方法更快（尤其大规模问题）。  
4. **鲁棒性**：  
   - 通过代理对偶间隙和残差控制收敛，稳定性强。  

---

### **5. 与障碍方法的对比**
| **特性** | **原对偶内点法**   | **障碍方法**                     |
| ------ | ------------ | ---------------------------- |
| 迭代结构   | 单层迭代         | 外层迭代（$t$ 更新）+ 内层迭代（Newton 步） |
| 初始点要求  | 无需严格可行       | 需严格可行点                       |
| 搜索方向   | 修改的 KKT 方程导出 | 通过障碍函数导出                     |
| 计算效率   | 更高（尤其高精度问题）  | 较低（需多次求解子问题）                 |
| 收敛性    | 超线性收敛        | 线性收敛                         |
[[Wiki - 障碍方法]]

[[Wiki - 算法的收敛性]]