---
aliases:
  - 斯特拉托诺维奇积分
info:
date: 2025-12-26-星期五 16:50
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251226165000
banner: "![[astroflow.gif]]"
---

**Stratonovich 积分**（或 Fisk-Stratonovich 积分），记作 $\int_0^t Y_s \circ dX_s$，是随机积分的另一种定义方式。与伊藤积分不同，它遵循经典的微积分运算法则（如链式法则），使其在微分几何和物理学建模中具有独特的优势，但代价是失去了伊藤积分核心的“鞅”性质。

## 1. 定义

对于连续半鞅 $X$和 $Y$，Stratonovich 积分定义为：

$$ 
\int_0^t Y_s \circ dX_s := \int_0^t Y_s \, dX_s + \frac{1}{2} \langle X, Y \rangle_t 
$$ 

其中：
*   $\int Y dX$ 是标准的 **伊藤积分 (Itô Integral)**。[[Wiki - 随机积分的定义]]
*   $\langle X, Y \rangle$ 是 $X$ 和 $Y$ 的 **联合二次变差 (Quadratic Covariation)**。[[Wiki - 二次变差|协变差]]

**直观解释 (Riemann Sum):**
如果在离散化逼近时，被积函数取区间的**中点**（或两端点的平均值）而不是左端点，收敛的极限即为 Stratonovich 积分：
$$ \sum_{j} \frac{Y_{t_j} + Y_{t_{j+1}}}{2} (X_{t_{j+1}} - X_{t_j}) \xrightarrow{P} \int Y \circ dX $$ 
相比之下，伊藤积分取的是**左端点** $Y_{t_j}$。

## 2. 性质：普通链式法则的回归

Stratonovich 积分最显著的特点是它**不需要伊藤引理中的二阶修正项**。

**变量代换公式:**
设 $f \in C^2(\mathbb{R})$，$X$ 为连续半鞅[[Wiki - 连续半鞅]]。则：
$$ f(X_t) = f(X_0) + \int_0^t f'(X_s) \circ dX_s $$ 
这与经典微积分中的牛顿-莱布尼茨公式形式完全一致[[Wiki - 牛顿莱布尼茨公式]]。

### 证明:
根据伊藤公式[[Wiki - Ito公式]]：$f(X_t) = f(X_0) + \int f' dX + \frac{1}{2} \int f'' d\langle X \rangle$。根据定义展开 Stratonovich 积分：
$$\int f'(X) \circ dX = \int f'(X) dX + \frac{1}{2} \langle f'(X), X \rangle$$

利用微分运算法则 $d\langle f'(X), X \rangle = f''(X) d\langle X, X \rangle$，两式完全相等。

## 3. 与伊藤积分的对比

| 特性        | 伊藤积分 ($\int Y dX$)               | Stratonovich 积分 ($\int Y \circ dX$) |
| :-------- | :------------------------------- | :---------------------------------- |
| **鞅性质**   | **保持** (如果是局部鞅积分)                | **不保持** (通常变为半鞅)                    |
| **微积分法则** | 需要 Ito 修正项 ($\frac{1}{2}f'' dt$) | 符合经典法则 (Chain Rule)                 |
| **物理意义**  | 适合金融/非预期未来 (信息流)                 | 适合受色噪声逼近的物理系统                       |
| **计算难度**  | 期望计算容易 (项消失)                     | 代数运算容易 (公式简单)                       |

## 4. 转换公式 (Conversion Formula)

在解随机微分方程 (SDE) 时，经常需要在两种形式间转换。

对于 SDE:
$$ dX_t = b(X_t) dt + \sigma(X_t) dW_t \quad (\text{Itô}) $$ 

其对应的 Stratonovich 形式为：
$$ dX_t = \left( b(X_t) - \frac{1}{2} \sigma'(X_t)\sigma(X_t) \right) dt + \sigma(X_t) \circ dW_t $$ 

这里的 $-\frac{1}{2} \sigma' \sigma$ 也就是所谓的“Stratonovich 漂移修正”。

