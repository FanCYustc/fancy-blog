---
aliases: 
info: 
date: 2025-03-19-星期三 21:34
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 凸优化
id: wiki20250319213456
banner: "![[astrowalk.gif]]"
---
---

## 定义

```ad-definition  
设函数 $f:\mathbb{R}^n \to \mathbb{R}$ 的定义域 $\text{dom}f$ 是凸集，若对 $\forall x,y \in \text{dom}f$ 和 $\forall \lambda \in [0,1]$ 都有：

$$
f(\lambda x + (1-\lambda)y) \leq \lambda f(x) + (1-\lambda)f(y)
$$

则称 $f$ 为凸函数。若不等式严格成立（$x \neq y$ 时），则称 $f$ 为严格凸函数。
```

如果-f 是凸的，那么 f 就是严格凹的

## 关键性质

```ad-proposition 
1. **一阶条件**：可微函数 $f$ 是凸函数当且仅当  
   $$f(y) \geq f(x) + \nabla f(x)^\top (y-x),\ \forall x,y \in \text{dom}f$$

2. **二阶条件**：二次可微函数 $f$ 是凸函数当且仅当  
   $$\nabla^2 f(x) \succeq 0,\ \forall x \in \text{dom}f$$

3. **保凸性**：凸函数在仿射变换下保持凸性，即若 $f$ 凸，则  
   $$g(x) = f(Ax+b)$$  
   也是凸函数
```



**常见凸函数示例**：
- 仿射函数：$f(x) = a^\top x + b$
- 指数函数：$f(x) = e^{ax}$
- 范数函数：$f(x) = \|x\|$ [[Wiki - 范数]]
- 几何平均：$f (x)= (\Pi_{i=1}^{n}x_{i})^{\frac{1}{n}}$ 是凹函数

## 重要定理

```ad-theorem 

**Jensen 不等式**  
对任意凸函数 $f$ 和概率向量 $\lambda \in \Delta^n$（即 $\lambda_i \geq 0$ 且 $\sum \lambda_i = 1$），有：

$$
f\left(\sum_{i=1}^n \lambda_i x_i\right) \leq \sum_{i=1}^n \lambda_i f(x_i)
$$

离散形式可推广到积分形式：

$$
f\left(\int_\Omega x d\mu(x)\right) \leq \int_\Omega f(x) d\mu(x)
$$
```


[[Wiki - Jensen不等式]]

相关笔记：  

[[Wiki - 凸集]]

