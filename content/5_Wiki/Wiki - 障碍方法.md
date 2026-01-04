---
aliases:
  - 不等式约束优化问题
  - 路径跟踪方法
info: 
date: 2025-06-13-星期五 11:06
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 统计算法
  - 凸优化
  - 算法
id: wiki20250613110649
banner: "![[astrowalk.gif]]"
---
---


### 1. **Core Problem Formulation**
Minimize convex objective $f_0 (x)$ subject to:
- Inequality constraints: $f_i (x) \leq 0,  i=1,\dots, m$  
- Equality constraints: $Ax = b$  
- $f_0, f_i$ are convex and twice differentiable [[Wiki - 凸函数]]  
- **Strict feasibility** (Slater's condition) is assumed: $\exists x$ with $f_i (x) < 0$, $Ax = b$ [[Wiki - Slater定理]]

### 2. **Logarithmic Barrier Function**
- **Approach**: Replace inequalities with a barrier term in the objective:  
  $$
  \phi (x) = -\sum_{i=1}^{m} \log (-f_i (x)), \quad \text{dom } \phi = \{x \mid f_i (x) < 0\}
  $$
- **Modified problem** (for parameter $t > 0$):  
  $$
  \min \quad t f_0 (x) + \phi (x) \quad \text{subject to} \quad Ax = b
  $$

### 3. **Central Path**
- **Definition**: Solutions $x^*(t)$ for $t > 0$ form the **central path**  
- **Optimality conditions**:  
  $$
  \begin{cases}
  A x^*(t) = b, \quad f_i (x^*(t)) < 0 \\
  t \nabla f_0 (x^*(t)) + \nabla \phi (x^*(t)) + A^\top \hat{\nu} = 0
  \end{cases}
  $$
- **Dual variables**:  
  $$
  \lambda_i^*(t) = -\frac{1}{t f_i (x^*(t))}, \quad \nu^*(t) = \hat{\nu}/t
  $$
- **Duality gap**: $f_0 (x^*(t)) - p^* \leq m/t$


### 4. **Barrier Method Algorithm**
1. **Input**: Strictly feasible $x$, $t^{(0)} > 0$, $\mu > 1$, tolerance $\epsilon > 0$  
2. **Repeat**:  
   a. **Centering Step**: Compute $x^*(t)$ by solving:  
      $$
      \min \space t f_0 (x) + \phi (x) \quad \text{s.t.} \quad Ax = b
    $$  
      (Use Newton's method for equality constraints)  [[Wiki - 等式约束的牛顿方法]]
   b. **Update**: $x \leftarrow x^*(t)$  
   c. **Stopping Criterion**: Exit if $m/t < \epsilon$  
   d. **Increase $t$**: $t \leftarrow \mu t$  

### 5. **Key Properties**
- **Feasibility**: All iterates satisfy strict inequalities ($f_i (x) < 0$) and $Ax = b$  
- **Convergence**: After $k$ outer iterations, duality gap $\leq m / (\mu^k t^{(0)})$  
- **Complexity**: Outer iterations needed:  
  $$
  \left\lceil \frac{\log (m/(\epsilon t^{(0)}))}{\log \mu} \right\rceil
  $$
算法能够达到精度要求$\epsilon$[[Wiki - 算法的收敛性]]
- **Parameter choice**:  
  - $\mu$: Trade-off between inner/outer iterations (typical $\mu \in [10, 100]$)  
  - $t^{(0)}$: Chosen so $m/t^{(0)} \approx f_0 (x^{(0)}) - p^*$  

### 6. **Connection to KKT Conditions**
- **Modified KKT**: Replaces complementarity $-\lambda_i f_i (x) = 0$ with $-\lambda_i f_i (x) = 1/t$  
- **Newton step**: Solves linear system:  
  $$
  \begin{bmatrix}
  t\nabla^2 f_0 + \nabla^2\phi & A^\top \\
  A & 0
  \end{bmatrix}
  \begin{bmatrix}
  \Delta x \\ \nu
  \end{bmatrix}
  = -\begin{bmatrix}
  t\nabla f_0 + \nabla\phi \\ 0
  \end{bmatrix}
  $$
[[Wiki - KKT条件]]
### 7. **Applications**
- **Linear Programming**: Barrier $\phi (x) = -\sum \log (b_i - a_i^\top x)$  
  Central path: $tc + A^\top d = 0$ where $d_i = 1/(b_i - a_i^\top x)$  
- **Chebyshev Approximation**: Transformed to LP via barrier method  
