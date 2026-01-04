---
aliases: 
info: 
date: 2025-04-03-星期四 20:27
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 数学分析/函数
  - 凸优化
id: wiki20250403202745
banner: "![[astrowalk.gif]]"
---
---


## Def 1 拟凸函数

```ad-definition
title: 拟凸函数 (Quasiconvex Function)
设函数 $f: \mathbb{R}^n \to \mathbb{R}$，若其定义域 $\text{dom}f$ 为凸集，且满足：
$$f(\theta x + (1-\theta)y) \leq \max\{f(x), f(y)\},\quad \forall x,y \in \text{dom}f, \theta \in [0,1]$$
则称 $f$ 为拟凸函数。其所有 $\alpha$-下水平集 $C_\alpha = \{x | f(x) \leq \alpha\}$ 均为凸集。

```

[[Wiki - 凸集]]

对应的如果每个上水平集 $\{x| f(x)\geq \alpha\}$ 都是凸的，那么就是拟凹函数

等价定义：

```ad-theorem
title: 一阶条件 (可微情形)
若 $f$ 可微，则拟凸性等价于：
$$\forall x,y \in \text{dom}f,\ f(y) \leq f(x) \implies \nabla f(x)^\top(y-x) \leq 0$$
**对比凸函数**：凸函数要求 $\nabla f(x)^\top(y-x) \leq f(y)-f(x)$，而拟凸函数在 $f(y) \leq f(x)$ 时梯度方向有更严格的限制。
```



[[Wiki - 梯度]]

```ad-theorem
title: 二阶条件 (二次可微情形)
若 $f$ 二次可微，则拟凸性要求：
$$\forall x \in \text{dom}f,\ \forall y \neq 0,\ y^\top\nabla f(x) = 0 \implies y^\top\nabla^2 f(x)y \geq 0$$
即在梯度正交方向上 Hessian 矩阵半正定。例如，对 $f(x)=x^3$，当 $\nabla f(x)=0$ 时需验证二阶条件。
```

[[Wiki - 海塞矩阵]]
### **典型示例**：

1. **秩函数**：半正定矩阵空间 $S_{+}^n$ 上的 $\text{rank}(X)$ 是拟凹函数，因 $\text{rank}(X+Y) \geq \min\{\text{rank}X, \text{rank}Y\}$。
2. **对数函数**：$\log x$ 在 $\mathbb{R}_{++}$ 上是拟线性函数（既是拟凸也是拟凹）。

## Pro 1

1. **极值特性**：拟凸函数的局部极小即全局极小，但驻点 [[Wiki - 多变量函数极值的判断]] $\nabla f(x)=0$ 不一定是极值点（与凸函数关键区别）。
2. **保运算性**[[Wiki - 保凸运算]] ：
   - 非负加权上确界：$\sup_{i} f_i(x)$ 保持拟凸性。
   - 积分保持：若 $f(x,y)$ 拟凸，则 $g(x)=\int f(x,y)dy$ 拟凸。
3. **与凸函数关系**：
   - 所有凸函数都是拟凸函数 [[Wiki - 凸函数]]，但反之不成立。
   - 对数凹函数类（如多元正态密度）是拟凸函数的子类。
