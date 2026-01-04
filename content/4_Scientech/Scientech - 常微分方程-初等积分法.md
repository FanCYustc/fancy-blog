---
aliases: []
info: 23秋微分方程概论第二章
date: 2023-09-12-星期二 14:59
update: 2025-12-30-星期二 15:20
tags:
  - scientech/year2023
  - scientech/month09
  - 微分方程/ODE
id: scientech20230912145916
banner: "![[astrofishing.gif]]"
---
---

# 第二章-初等积分法

所谓初等积分法，就是把微分方程的解通过初等函数或它们的积分来表达的方法。本章主要介绍几种可以用初等积分法求解的一阶微分方程。

## 2.1 恰当方程

### 定义与充要条件

[[Wiki - 恰当方程]]当方程是恰当方程时，通积分可由下式给出：
$$\int_ {x _ {0}} ^ {x} P (x, y) d x + \int_ {y _ {0}} ^ {y} Q (x _ {0}, y) d y = C$$
或者
$$\int_ {x _ {0}} ^ {x} P \left(x, y _ {0}\right) d x + \int_ {y _ {0}} ^ {y} Q (x, y) d y = C$$
其中 $(x_0, y_0)$ 是区域内任意取定的一点。

问题：
1.  **如何判断是不是恰当方程？** 检验 $\frac{\partial P}{\partial y} = \frac{\partial Q}{\partial x}$。
2.  **如何找到恰当方程？** 构造位势函数 $\Phi(x,y)$。
3.  **如何把方程恰当化？** 寻找积分因子 $\mu(x,y)$。

P, Q 同乘一个积分因子 $\mu(x,y)$ -- $\mu$ 是否存在？如何找到？

## 2.2 分离变量的方程

见数学分析 B1 第六章 [[数学分析讲义-第1册.pdf]]

[[Wiki - 可分离变量的微分方程]]

```ad-theorem
title: Osgood 条件下的唯一性 (Exercise 5)

对于方程 $\frac{dy}{d x}=f(y)$，其中 $f(y)$ 在 $y=a$ 处连续且 $f(a)=0$（即 $y=a$ 是平衡解）。
则在直线 $y = a$ 上的每一点，方程的解局部唯一，当且仅当瑕积分发散：

$$ \left| \int _{a}^{a \pm \epsilon} \frac{dy}{f(y)} \right|=\infty $$
```

[[Wiki - 奥斯古德唯一性定理|Osgood Uniqueness Theorem]]
## 2.3 一阶线性方程

[[Wiki - 一阶线性微分方程的解法]]

### 线性方程的性质

[[Wiki - 线性微分方程的性质]]

1.  **非平凡性**：齐次方程的解要么恒为0，要么恒不为0。
2.  **整体存在性**：线性方程的解在 $p(x), q(x)$ 的连续区间上整体存在。
3.  **叠加原理**：
    *   齐次方程解的线性组合仍是解。
    *   非齐次解 + 齐次解 = 非齐次解。
    *   非齐次解 - 非齐次解 = 齐次解。
4.  **通解结构**：非齐次通解 = 齐次通解 + 非齐次特解。
5.  **唯一性**：满足初值条件的解存在且唯一。

[[Wiki - 高阶微分方程降阶法]]

## 2.4 初等变换法

通过适当的变量代换，可以将某些方程化为可分离变量方程或线性方程。

### 齐次方程

如果 $P(x, y)$ 和 $Q(x, y)$ 是同次齐次函数，即 $P(tx, ty) = t^m P(x, y)$，则方程 $Pdx + Qdy = 0$ 为**齐次方程**。[[Wiki - 齐次方程]]
或者方程可写为 $\frac{dy}{dx} = \varphi(\frac{y}{x})$ 的形式。

对于形如 $\frac {d y}{d x} = f \left(\frac {a x + b y + c}{m x + n y + l}\right)$ 的方程，通过平移变换（$\Delta \neq 0$）或线性变换（$\Delta = 0$）化为齐次方程或变量分离方程。[[Wiki - 分式线性微分方程]]

### 伯努里方程 (Bernoulli Equation)

形式：
$$\frac {d y}{d x} + p (x) y = q (x) y ^ {n} \quad (n \neq 0, 1)$$
**解法**：
令 $z = y^{1-n}$，将方程化为一阶线性方程：
$$\frac {d z}{d x} + (1 - n) p (x) z = (1 - n) q (x)$$

### 黎卡提方程 (Riccati Equation)

[[Wiki - 里卡蒂方程]]

## 2.5 积分因子法

[[Wiki - 积分因子]]寻找函数 $\mu(x,y)$ 使得 $\mu P dx + \mu Q dy = 0$ 成为恰当方程。 $\mu$ 满足偏微分方程：
$$P \frac {\partial \mu}{\partial y} - Q \frac{\partial \mu}{\partial x} = \mu \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right)$$

### 特殊积分因子

1.  **只含 $x$ 的积分因子** $\mu = \mu(x)$：
    充要条件是 $\frac{1}{Q}(\frac{\partial P}{\partial y} - \frac{\partial Q}{\partial x}) = G(x)$，此时 $\mu(x) = e^{\int G(x)dx}$。
2.  **只含 $y$ 的积分因子** $\mu = \mu(y)$：
    充要条件是 $\frac{1}{P}(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}) = H(y)$，此时 $\mu(y) = e^{\int H(y)dy}$。
3.  **齐次方程的积分因子**：
    若 $Pdx + Qdy = 0$ 是齐次方程且 $xP + yQ \neq 0$，则 $\mu = \frac{1}{xP + yQ}$ 是一个积分因子。

### 分组求积分因子

[[Wiki - 分组求积分因子]]若方程可分为两组 $(P_1 dx + Q_1 dy) + (P_2 dx + Q_2 dy) = 0$，且每组易求积分因子 $\mu_1, \mu_2$ 及其原函数 $\Phi_1, \Phi_2$。则寻找函数 $g_1, g_2$ 使得 $\mu_1 g_1(\Phi_1) = \mu_2 g_2(\Phi_2)$，公共项即为原方程的积分因子。

## 2.6 应用举例

### 等角轨线与正交轨线

求一个曲线族 $\Psi(x, y, K) = 0$，使其与已知曲线族 $\Phi(x, y, C) = 0$ 相交成定角 $\alpha$。
*   已知曲线族微分方程：$\frac{dy}{dx} = H(x, y)$。
*   等角轨线微分方程：$\frac {d y}{d x} = \frac {H (x , y) + \tan \alpha}{1 - H (x , y) \tan \alpha}$。
*   **正交轨线** ($\alpha = \pi/2$)：$\frac{dy}{dx} = -\frac{1}{H(x,y)}$。

### 人口模型

1.  **Malthus 模型**：$\frac{dN}{dt} = kN$，指数增长 $N = N_0 e^{kt}$。
2.  **Logistic 模型**（阻滞增长）：$\frac{dN}{dt} = (a - bN)N$。解为 $N = \frac {a N _ {0} e ^ {a (t - t _ {0})}}{a - b N _ {0} + b N _ {0} e ^ {a (t - t _ {0})}}$，极限趋于 $a/b$。

### 捕食者-被捕食者模型 (Volterra 方程)

描述食饵 ($y$) 与捕者 ($x$) 的数量变化：
$$ \begin{cases} \frac{dx}{dt} = x(-\lambda + \sigma y) \\ \frac{dy}{dt} = y(\mu - \delta x) \end{cases} $$
相轨线为闭曲线族：$\delta x + \sigma y - \mu \ln x - \lambda \ln y = h$。
**性质**：
*   $x(t), y(t)$ 呈周期性波动，且相位滞后。
*   外加捕捉（捕鱼）会使捕食者平均数量减少，被捕食者平均数量增加（Volterra 原理）。