---
aliases: 
info: 
date: 2025-06-11-星期三 16:18
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 时间序列分析
  - 估计
  - 预测
id: wiki20250611161820
banner: "![[astrowalk.gif]]"
---
---
除了 ARIMA 模型以外另一种常用的时间序列基础预报工具

[[Optimal-Forecast-Reconciliation-for-Hierarchical-and-Grouped-Time-Series-Through-Trace-Minimization-EBSI3R4E]]


以下是根据您要求的格式和风格创建的关于 ETS 模型的知识卡片：

---

## Def 1 ETS 模型

```ad-definition
title: ETS (Error, Trend, Seasonality) 模型

ETS模型是一种时间序列预测方法，通过分解序列的**误差(E)**、**趋势(T)**和**季节性(S)**成分进行建模。基本形式为：
$$y_t = f(E_{t-1}, T_{t-1}, S_{t-m}) + \varepsilon_t$$
其中：
- $y_t$：时间$t$的观测值
- $m$：季节周期长度
- $\varepsilon_t \sim \text{WN}(0,\sigma^2)$：白噪声误差

**成分组合形式**：
1. 趋势成分：$T_t = \begin{cases} 
T_{t-1} + \phi b_{t-1} & \text{(加法)} \\
T_{t-1} \times b_{t-1} & \text{(乘法)}
\end{cases}$
2. 季节成分：$S_t = \gamma (y_t - l_{t-1}) + (1-\gamma)S_{t-m}$
3. 平滑方程：$l_t = \alpha (y_t - S_{t-m}) + (1-\alpha)(l_{t-1} + b_{t-1})$

**模型分类**：
- 趋势类型：无(N)/加(A)/乘(M)/阻尼(Ad/Md)
- 季节类型：无(N)/加(A)/乘(M)
- 误差类型：加(A)/乘(M)
```

---
## The 1 ETS 模型状态空间表示

```ad-theorem
title: ETS状态空间形式

任一ETS模型均可表示为**高斯状态空间模型**：
$$\begin{aligned}
y_t &= w(\mathbf{x}_{t-1}) + r(\mathbf{x}_{t-1})\varepsilon_t \\
\mathbf{x}_t &= f(\mathbf{x}_{t-1}) + g(\mathbf{x}_{t-1})\varepsilon_t
\end{aligned}$$
其中状态向量$\mathbf{x}_t = (l_t, b_t, s_t, s_{t-1}, \dots, s_{t-m+1})^T$包含：
- $l_t$：水平分量
- $b_t$：趋势分量
- $s_t$：季节分量

**预测方程**（$h$步向前）：
$$\hat{y}_{t+h|t} = \begin{cases} 
l_t + hb_t & \text{线性趋势} \\
l_t b_t^h & \text{指数趋势} \\
l_t + \phi_h b_t & \text{阻尼趋势}
\end{cases} + S_{t+h-mk}$$
其中$k = \lfloor (h-1)/m \rfloor$
```

## Pro 1 ETS 模型选择准则

```ad-proposition
title: AICc模型选择准则

最优ETS模型通过最小化**修正AIC**确定：
$$\text{AICc} = -2\log(L) + 2k + \frac{2k(k+1)}{n-k-1}$$
其中：
- $L$：模型似然函数值
- $k$：参数总数
- $n$：观测值数量

**参数估计**：
1. 初始状态$\mathbf{x}_0$通过启发式方法确定
2. 平滑参数$\alpha,\beta,\gamma,\phi$通过最大似然估计
3. 使用L-BFGS-B算法约束参数$\in [0,1]$
```

## 状态更新
为了预测未来, 我们需要不断更新水平、趋势和季节性。ETS (A, A, A) 用以下公式更新
 1. 水平项更新： ${\ell }_{t} = {\ell }_{t - 1} + {b}_{t - 1} + \alpha {\varepsilon }_{t}$
新水平 = 旧水平 + 趋势 + 加权误差修正
2. 趋势项更新: ${b}_{t} = {b}_{t - 1} + \beta {\varepsilon }_{t}$
新趋势 = 旧趋势 + 加权误差修正
3. 季节项更新: ${s}_{t} = {s}_{t - m} + \gamma {\varepsilon }_{t}$
新季节项 $=$ 上一个周期的对应季节值 + 加权误差修正

$\alpha ,\beta ,\gamma$ 为平滑系数, 范围通常在 $\left\lbrack  {0,1}\right\rbrack$