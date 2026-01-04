---
aliases: 
info: 
date: 2025-01-06-星期一 22:54
update: 
tags:
  - wiki/month12
  - wiki/year2024
  - 统计算法
  - 运筹学
id: wiki20250106225413
banner: "![[astrowalk.gif]]"
---
---

## The 1 拟牛顿法

对于 [[Wiki - 牛顿算法]]，把每一步迭代的 $\nabla^{2}f(x_{t})$ 换成 $H_{t}$

1、寻找最优步长 $s_{t}= \arg\min_{s>0}  f(x_{t}- sH_{t}^{-1}\nabla f(x_{t}))$

类似 [[Wiki - 梯度下降法]]寻找最优步长

2、$x_{t+1}= x_{t}- s_{t}H_{t}^{-1}\nabla f(x_{t})$

3、更新修正矩阵 $\Delta_{t}$

4、更新矩阵 $H_{t+1}= H_{t}+ \Delta_{t}$

$H_{t}$ 需要满足 $\nabla^{2}f(x_{t})$ 相一致的性质：

- $H_{t}$ 正定可逆 [[Wiki - 正定矩阵]]
- 满足 newton 条件 $H_{t+1}(x_{t+1}-x_{t})=  \nabla f(x_{t+1})-\nabla f(x_{t})$

## BFGS 算法

修正矩阵为
$$
\Delta_{t}= \frac{\xi_{t}\xi_{t}^{T}}{\xi_{t}^{T}\delta_{t}} - \frac{(H_{t}\delta_{t})(H_{t}\delta_{t})^{T}}{\delta_{t}^{T}H_{t}\delta_{t}}
$$
其中 $\delta_{t}= x_{t+1}-x_{t}, \xi_{t}= \nabla f (x_{t+1})- \nabla f(x_{t})$

可以得到
$$
H_{t+1}^{-1}= H_{t}^{-1}+ \frac{{(\xi_{t}^{T}\delta_{t}+ \xi_{t}^{T}H_{t}^{-1}\xi_{t})(\delta_{t}\delta_{t}^{T})}}{(\xi_{t}^{T}\delta_{t})^{2}}- \frac{{(H_{t}^{-1}\xi_{t}\delta_{t}^{T})+ (H_{t}^{-1}\xi_{t}\delta_{t}^{T})^{T}}}{\xi_{t}^{T}\delta_{t}}
$$

