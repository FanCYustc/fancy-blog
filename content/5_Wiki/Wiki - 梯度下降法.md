---
aliases: 
info: 
date: 2025-01-06-星期一 21:05
update: 
tags:
  - wiki/month12
  - wiki/year2024
  - 统计算法
  - 运筹学
  - 机器学习
id: wiki20250106210524
banner: "![[astrowalk.gif]]"
---
---

## the 1 梯度下降法

考虑多维空间最小值问题
$$
x^{*}= \arg\min_{x\in \mathbb{R}^{p}} f(x) 
$$

由于沿梯度方向 [[Wiki - 梯度]]下降最快，所以进行迭代
$$
x_{t+1}= x_{t}- s_{t}\nabla f(x_{t}) 
$$

直到 $|f (x_{t})-f (x_{t+1})|< \epsilon 或 t>t_{max}$ 时停止。称为梯度下降法，$s_{t}$ 称为步长



## Def 1 最优步长

$s_{t}$ 除了最简单的取固定步长，可以取最优步长
$$
s_{t}= \arg\min_{s>0} f(x_{t}- s\nabla f(x_{t}))
$$
但不用如此精确，可以取 $\alpha\in (0, 1), \gamma\in (0,1)$，以及初始步长 $s_{0}$，不断缩短 $s\leftarrow \gamma s$，直到满足
$$
f(x_{t})- f(x_{t}- s\nabla f(x_{t}))\geq \alpha s \|\nabla f(x_{t})\|^{2}
$$

即为 [[Wiki - 回溯搜索算法]]

实际应用时经常取 $\alpha= 0.5, \gamma= 0.8$

带最优步长的梯度下降法的另一种写法是
$$
x_{t+1}= \arg\min_{x\in \mathbb{R}^{p}}f(x_{t})+ \langle \nabla f(x_{t}), x-x_{t}\rangle+ \frac{1}{2s_{t}}\|x-x_{t}\|^{2}
$$

## 收敛性分析

#### 1. **强凸函数下的线性收敛（精确直线搜索）**
**定理 1**：若目标函数 $f$ 满足 $mI \preceq \nabla^2 f(x) \preceq MI$（强凸性 [[Wiki - 强凸性]]），采用精确直线搜索时，函数值以线性速度收敛：
$$
f(x^{(k)}) - p^\star \leq c_0 c^k, \quad c_0 = f(x^{(0)}) - p^\star, \quad c = 1 - \frac{m}{M}.
$$
**证明要点**：
- 利用强凸性导出二次上界：$f(x - t\nabla f(x)) \leq f(x) - t \|\nabla f(x)\|_2^2 + \frac{M t^2}{2} \|\nabla f(x)\|_2^2$。
- 精确线搜索时 $t$ 最小化 $f$，代入最优步长 $t = \frac{1}{M}$ 得函数值下降量：
  $$
  f(x^+) - p^\star \leq \left(1 - \frac{m}{M}\right) (f(x) - p^\star).
  $$
- 递推即得 $O(c^k)$ 收敛。

---

#### 2. **强凸函数下的线性收敛（回溯直线搜索）**
**定理 2**：在相同强凸假设下，采用回溯直线搜索 [[Wiki - 回溯搜索算法]]（参数 $\alpha \in (0, 0.5), \beta \in (0, 1)$）时：
$$
f(x^{(k)}) - p^\star \leq c_0 c^k, \quad c = 1 - 2m\alpha \min\left\{1, \frac{\beta}{M}\right\}.
$$
**证明要点**：
- 回溯条件确保步长 $t \geq \min\{1, \beta / M\}$。
- 结合 Armijo 准则 $f(x + t\Delta x) \leq f(x) + \alpha t \nabla f(x)^\top \Delta x$ 和强凸性，导出每步下降量：
  $$
  f(x^+) - p^\star \leq \left(1 - 2m\alpha t\right)(f(x) - p^\star).
  $$
- 代入 $t$ 的下界即得线性收敛。

---

#### 3. **一般凸函数的次线性收敛（固定步长）**
**定理 3**：若 $f$ 为凸函数且 $\nabla^2 f(x) \preceq MI$（不一定强凸），采用固定步长 $t \leq \frac{1}{M}$ 时：
$$
f(x^{(k)}) - p^\star \leq \frac{c_0}{k}, \quad c_0 = \frac{\|x_0 - x^\star\|_2^2}{2t}.
$$
**证明要点**：
- 由凸性和 Lipschitz 连续性得：
  $$
  f(x^+) \leq f(x) - \frac{t}{2} \|\nabla f(x)\|_2^2 \leq p^\star + \frac{1}{2t} \left( \|x - x^\star\|_2^2 - \|x^+ - x^\star\|_2^2 \right).
  $$
- 对迭代步求和并利用 $f(x^{(k)})$ 单调递减：
  $$
  \sum_{i=1}^k \left( f(x^{(i)}) - p^\star \right) \leq \frac{\|x^{(0)} - x^\star\|_2^2}{2t}.
  $$
- 由最小值性质得 $k \left( f(x^{(k)}) - p^\star \right) \leq c_0$，即 $O(1/k)$ 收敛。

---

#### 4. **关键结论对比**
| **条件**     | **搜索方式**          | **收敛速度** | **收敛率**                                           |
| ---------- | ----------------- | -------- | ------------------------------------------------- |
| 强凸 ($m,M$) | 精确线搜索             | $O(c^k)$ | $c = 1 - m/M$                                     |
| 强凸 ($m,M$) | 回溯线搜索             | $O(c^k)$ | $c = 1 - 2m\alpha \min\{1, \beta/M\}$             |
| 一般凸 ($M$)  | 固定步长 $t \leq 1/M$ | $O(1/k)$ | $c_{0}=\frac{\mid x^{(0)}-x^{*}\mid_{2}^{2}}{2t}$ |

