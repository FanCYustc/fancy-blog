---
aliases: 
info: 24秋时间序列分析第2章第3章
date: 2024-12-28-星期六 19:42
update: 
tags:
  - scientech/year2024
  - scientech/month10
  - 时间序列分析
  - 预测
id: scientech20241228194235
banner: "![[astrofishing.gif]]"
---
---

# CH2-自回归模型

## 自回归模型

[[Wiki - AR模型]]

[[Wiki - AR模型的Wold系数]]

[[Wiki - Yule-Walker方程]]

由 Yule-walker 方程，可以有自协方差矩阵计算出 $\boldsymbol{a}_{p}$ 和 $\sigma^{2}$，但为了 $\Gamma_{n}$ 可逆需要补充讨论自协方差矩阵的性质

[[Wiki - 自协方差矩阵的性质]]

[[Wiki - 完全线性预测]]

## 平稳序列的偏相关系数和 Levinson 递推公式

在 $AR(p)$ 模型下我们讨论了 Yule-Walker 方程及其性质，现在想对任意的零均值平稳列，利用 yule-walker 方程的结构，想利用 $X_{1},\dots,X_{n}$ 线性预测 $X_{n+1}$，用均方误差 $\sigma^{2}_{n }= E[X_{n+1}-(a_{0}+a_{1}X_{1}+\dots+a_{n}X_{n})]^{2}$ 来衡量预测的优劣

[[Wiki - 最优线性预测]]

根据最优线性预测的结果，我们将对零均值平稳列的递推求解过程总结为 levinson 递推公式

[[Wiki - levinson递推公式]]

[[Wiki - 偏自相关函数]]

这一部分的作用是为后续 AR (p) 模型的参数估计做准备，只要用样本自协方差的估计 $\hat{\gamma_{k}}$，就可以推出 $a_{1},\dots,a_{p}$ 的估计

## AR 模型举例

具体讨论了 $AR(1),AR(2)$ 模型的计算方法和性质

AR (1) 模型 $X_{t}= a_{1}X_{t-1}+\epsilon_{t}$ 的稳定条件为 $|a_{1}|<1$

AR (2) 模型 $X_{t}= a_{1}X_{t-1}+a_{2}X_{t-2}+\epsilon_{t}$ 的稳定条件为 $a_{1}\pm a_{2}<1, |a_{2}|<1$


# CH3-自回归滑动平均模型

## 滑动平均模型

[[Wiki - MA模型]]

与 AR 的最小相位条件对应。MA 也常考虑可逆 MA，即在 $|z|\leq 1$ 里无零点

[[Wiki - 最小序列]]

## 自回归滑动平均模型

[[Wiki - ARMA模型]]

[[Wiki - ARMA模型的性质]]

[[Wiki - ARIMA模型]]

[[Wiki - SARIMA模型]]

