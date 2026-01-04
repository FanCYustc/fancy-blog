---
aliases: 
info: 牛顿迭代法求数值解
date: 2024-03-22-星期五 11:43
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
  - 统计算法
  - 运筹学
id: wiki20240322114329
banner: "![[astrowalk.gif]]"
---
---

## The 1 牛顿法

考虑最小值问题
$$
x^{*}= \arg\min_{x\in \mathbb{R}^{p}} f(x)
$$
迭代公式为
$$
x_{t+1}= x_{t}- (\nabla^{2}f(x_{t}))^{-1}\nabla f(x_{t})
$$
其中 $\nabla^{2}f(x_{t})$ 是 hessian 阵 [[Wiki - 海塞矩阵]]

[[Wiki - 逆矩阵]]

由 $\nabla^{2}f(x)$ 的正定性 [[Wiki - 正定矩阵]]，有 $\nabla f (x)^{T}\Delta x_{sd}= - \nabla f(x)^{T}(\nabla^{2}f(x))^{-1}\nabla f(x)<0$，所以牛顿步径是下降方向。

是 [[Artpatch - 统计算法-统计优化算法#一维问题]]牛顿法的推广

```ad-note

当 Hessian 阵不可逆 时，可以加上正定阵 $\nabla^{2}f (x_{t})\leftarrow \nabla^{2}f (x_{t})+ \lambda I$

与岭回归类似
```

终止条件设为：$\lambda = \nabla f(x)^{T}\nabla^{2}f(x)^{-1}\nabla f(x)$，如果 $\frac{\lambda^{2} }{2}< \epsilon$，则停止收敛，则与最优间隙小于 $\epsilon$

## The 2 阻尼牛顿法

如果加上最优步长 $s_{t}= \arg\min_{s>0} f(x_{t}- s(\nabla^{2}f(x_{t}))^{-1}\nabla f(x_{t}))$

更新 $x_{t+1}=x_{t}- s_{t}(\nabla^{2}f(x_{t}))^{-1}\nabla f(x_{t})$，称为阻尼牛顿法

[[Wiki - 梯度下降法]]

也可以结合回溯搜索进行步长的改变 [[Wiki - 回溯搜索算法]]


## Pro 1 收敛性分析

假设 f 二阶可微连续，则有 $mI\leq \nabla ^{2}f (x)\leq MI$，假设 f 海塞阵是在 S 上利普希茨连续的 [[Wiki - 利普希茨条件]]，即
$$
\|\nabla^{2}f(x)-\nabla^{2}f(y)\|\leq L\|x-y\|, \forall x,y\in S
$$
则 $\exists 0<\eta\leq \frac{m^{2}}{L},\gamma>0$，有下面的结论成立：

若 $\|\nabla f (x^{(k)})\|_{2}\geq \eta$，则
$$
f(x^{(k+1)})-f(x^{(k)})\leq -\gamma
$$
若 $\|\nabla f (x^{(k)})\|_{2}< \eta$，则
$$
\frac{L}{2m^{2}}\|\nabla f(x^{(k+1)})\|_{2}\leq \left( \frac{L}{2m^{2}}\|\nabla f(x^{(k)})\|_{2} \right)^{2}
$$
于是从某个 k 开始，对 $l\geq k$，有
$$
f(x^{(l)})-p^{*}\leq \frac{1}{2m}\|\nabla f(x^{(l)})\|_{2}^{2}\leq \frac{2m^{3}}{L^{2}} \left( \frac{1}{2} \right)^{2^{l-k+1}}
$$
对于 $\eta$ 来说，第一阶段为**阻尼牛顿阶段**，第二阶段为二次收敛阶段，也称为**纯 Newton 阶段**，这个阶段迭代步长总是取 $t=1$

阻尼牛顿阶段步数不超过 $\frac{{f(x^{(0)})-p^{*}}}{\gamma}$，二次收敛阶段不超过 $\log_{2}\log_{2}\left(  \frac{\epsilon_{0}}{\epsilon} \right)$ 次使得 $f (x)-p^{*}\leq \epsilon$，其中 $\epsilon_{0}= \frac{2m^{3}}{L^{2}}$

