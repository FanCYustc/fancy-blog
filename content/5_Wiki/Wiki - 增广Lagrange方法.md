---
aliases: 
info: 
date: 2025-01-06-星期一 22:08
update: 
tags:
  - wiki/year2024
  - 统计算法
  - 凸优化
  - wiki/month11
id: wiki20250106220845
banner: "![[astrowalk.gif]]"
---
---

## The 1 augment Lagrange method

对带约束的优化问题
$$
\min_{x\in \mathbb{R}^{p}} f(x)\quad s.t. Ax=b
$$
改为增广 Lagrange 形式
$$
\min_{x\in \mathbb{R}^{p}} f(x)+ \frac{\rho}{2} \|Ax-b\|_{2}^{2}=\min_{x\in\mathbb{R}^{p}}h(x) \quad s.t.Ax=b
$$

则增广 Lagrange 函数为
$$
L(x,u)= f(x)= \frac{\rho}{2}\|Ax-b\|_{2}^{2}+ u^{T}(Ax-b)
$$
[[Wiki - 拉格朗日乘数法]]

则对偶问题 [[Wiki - Lagrange对偶函数]] 是
$$
\max_{u\in \mathbb{R}^{d}} -h^{*}(-A^{T}u)- b^{T}u
$$

其中 $h (x) = f (x) + \frac{\rho}{2} \|Ax-b\|^{2}$

见 [[Artpatch - 统计算法-统计优化算法#ADMM 算法]]

则迭代公式为

$$
\begin{align}
x_{t} &= \arg\min_{x\in \mathbb{R}^{p}} f(x)+ \frac{\rho}{2}\|Ax-b\|^{2}+ u_{t}^{T}Ax= \arg\min_{x\in \mathbb{R}^{p}}L(x,u_{t}) \\
u_{t+1} &= u_{t}+s_{t}(Ax_{t}-b) 
\end{align}
$$
