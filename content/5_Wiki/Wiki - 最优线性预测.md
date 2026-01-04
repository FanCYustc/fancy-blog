---
aliases:
  - Yule-Walker系数
info: 
date: 2024-12-29-星期日 10:28
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 时间序列分析
  - 机器学习
id: wiki20241229102857
banner: "![[astrowalk.gif]]"
---
---

## Def 1 最优线性预测

```ad-definition

如果想用 $X_{1},\dots,X_{n}$ 随机变量线性估计随机变量 $Y$，考虑最小化均方误差：

$$
L[Y|X_{1},\dots,X_{n}]= \arg\min_{a_{0},\dots,a_{n}} E[Y-(a_{0}+a_{1}X_{1}+\dots+a_{n}X_{n})]^{2}
$$
则称 $L[Y|X_{1},\dots,X_{n}]$ 为 Y 关于 $X_{1},\dots,X_{n}$ 的最优线性预测
```


[[Wiki - 一致最小方差无偏估计|均方误差]]

特别的，如果有 $Y\in C(X_{1},\dots,X_{n})$，可以由 $X_{1},\dots,X_{n}$ 线性表出，则 $L(Y|X_{1},\dots,X_{n})$ 为完全线性预测 [[Wiki - 完全线性预测]]
## The 1 正交性原理 (Orthogonality Principle)

```ad-theorem

设 $Y$ 和 $\boldsymbol{X} = (X_1, \dots, X_n)^T$ 是均值为零、方差有限的随机变量。如果 $\boldsymbol{a} \in \mathbb{R}^n$ 使得
$$
\Gamma \boldsymbol{a} = \Sigma_{\boldsymbol{X}Y}
$$
则最优线性预测 $L(Y|\boldsymbol{X}) = \boldsymbol{a}^T \boldsymbol{X}$ 满足：
$$
E[(Y - L(Y|\boldsymbol{X}))X_i] = 0, \quad \forall i=1, \dots, n
$$
即**预测误差与所有用于预测的变量 $X_i$ 正交**。

这等价于预测误差与 $\boldsymbol{X}$ 的任意线性组合正交：
$$
Y - L(Y|\boldsymbol{X}) \perp L(\boldsymbol{X})
$$
其中 $L(\boldsymbol{X})$ 是由 $X_1, \dots, X_n$ 生成的线性子空间。
```


与 [[Wiki - 多重线性回归最小二乘估计]]一致

用 $L^2$ 表示全体方差有限的随机变量构成的 **Hilbert 空间**。[[Wiki - Hilbert空间]]

**定义 14.3 (正交投影)**：如果 $H$ 是 $L^2$ 的闭子空间，$Y \in L^2$，若存在 $\hat{Y} \in H$ 使得
$$
E(Y - \hat{Y})^2 = \inf_{\xi \in H} E(Y - \xi)^2
$$
则称 $\hat{Y}$ 是 $Y$ 在 $H$ 上的**投影**，记做 $P_H(Y)$。

**最佳线性预测实际上是 Hilbert 空间中的正交投影**：[[Wiki - 欧式空间的子空间|正交投影]]
$$
L(Y|\boldsymbol{X}) = P_{L(\boldsymbol{X})}(Y)
$$
由投影定理可知，投影存在的**充要条件**是误差向量垂直于子空间 $H$：
$$
(Y - \hat{Y}) \perp H
$$
这与正交性原理是一致的。

## Pro 1 预测误差性质

```ad-proposition

1.  **勾股定理**：由于正交性，有 $\|Y\|^2 = \|\hat{Y}\|^2 + \|e\|^2$。
2.  **单调性**：随着利用的信息（历史数据）增加，预测子空间变大 ($H_n \subset H_{n+1}$)，均方预测误差单调不增。即如果 $M \subset H$，则
    $$\|Y - P_H(Y)\| \le \|Y - P_M(Y)\|$$
    这反映了“信息越多，预测越准”的直观认识。
3.  **极限性质**：对于非决定性平稳序列 [[Wiki - 非决定性平稳序列]]，当历史长度 $n \to \infty$ 时，预测误差方差收敛于一步预测均方误差 $\sigma_1^2$（或 $\gamma_0$ 对于纯非决定性序列）。
```


## The 3 极值性质 (Extremal Property)


1.  **线性性**：$L(aX + bY|H) = aL(X|H) + bL(Y|H)$。
2.  **勾股定理**：$\|Y\|^2 = \|L(Y|H)\|^2 + \|Y - L(Y|H)\|^2$。
3.  **范数非增**：$\|L(Y|H)\| \leq \|Y\|$。
4.  **包含关系**：若 $H$ 是 $M$ 的子空间，则 $P_H P_M = P_M P_H = P_H$（塔式性质）。
5.  **误差最小**：如果 $Y \in H$，则 $L(Y|H) = Y$。如果 $Y \perp H$，则 $L(Y|H) = 0$。

[[Wiki - 投影矩阵的性质]]
## Cal 1 yule-walker 系数

对于零均值平稳列 [[Wiki - 平稳序列]]，用 $X_{1},\dots,X_{n}$ 线性预测 $X_{n+1}$，则有 yule-walker 方程

$$
\boldsymbol{a}= \Gamma_{n}^{-1} \boldsymbol{\gamma}_{n}
$$
此时 $\boldsymbol{a}_{n}$ 称为 $\{X_{t}\}$ 的 n 阶 yule-walker 系数 [[Wiki - Yule-Walker方程]]

此时均方误差为
$$
E[X_{n+1}- (a_{n1}X_{1} + \dots +a_{nn}X_{n})]^{2}= \gamma_{0}- a_{n 1}\gamma_{1}- \dots- a_{n n}\gamma_{n}
$$


