---
aliases: 
info: 
date: 2024-12-02-星期一 14:44
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 泛函分析/线性算子
  - 泛函分析/谱理论
id: wiki20241202144412
banner: "![[astrowalk.gif]]"
---
---

## Def 1 预解式

$$
R_{\lambda}(A): \rho(A)\to \mathcal{L}(X): \lambda\to (\lambda I-A)^{-1}
$$
称为算子 $A\in \mathcal{L}(X)$ 的预解式


## Pro 1 

$\lambda\to R_{\lambda}(A)$ 是 $\rho(A)$ 上的算子值全纯函数

其中算子值全纯指的是

$X$ 是复 Banach 空间 [[Wiki - banach空间]]，$\Omega$ 是 $\mathbb{C}$ 上的开集，称算子值函数
$$T:\Omega\to\mathcal{L}(X),\lambda\mapsto T_\lambda $$
在 $\lambda_0\in\Omega$ 全纯是指：存在 $\lambda_0$ 的邻域 $U$ 使得
$$\forall\lambda\in U,\exists S_\lambda\in\mathcal{L}(X)\text{s.t.}\left|\left|\frac{T_{\lambda+\delta}-T_\lambda}{\delta}-S_\lambda\right|\right|\to0\text{as}\delta\to0$$

[[Wiki - 全纯函数]]

