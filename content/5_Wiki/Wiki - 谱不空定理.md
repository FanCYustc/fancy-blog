---
aliases: 
info: 
date: 2024-12-02-星期一 15:13
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 泛函分析/谱理论
id: wiki20241202151326
banner: "![[astrowalk.gif]]"
---
---

## The 1 谱不空定理

$0\neq A\in \mathcal{L}(X)\to \sigma (A)\neq \emptyset$，其中 X 为 banach 空间 [[Wiki - banach空间]]

[[Wiki - 有界线性算子的谱]]
### Proof

证明假设 $\sigma(A)=\varnothing$, 则 $\rho(A)=\mathbb{C}$, 说明 $\lambda\mapsto R_\lambda(A)$ 时算子值整函数，于是
$$\forall f\in\mathcal{L}(X)^*,u_f(\lambda)\stackrel{\text{def}}{=}f(R_\lambda(A)),\lambda\in\mathbb{C}$$

是整函数 [[Wiki - 整函数]]，因为

$$\left|\frac{u_f(\lambda)-u_f(\lambda_0)}{\lambda-\lambda_0}+f(R_{\lambda_0}(A)^2)\right|\leqslant||f||\cdot\left|\left|\frac{R_\lambda(A)-R_{\lambda_0}(A)}{\lambda-\lambda_0}+R_{\lambda_0}(A)^2\right|\right|\to0\text{as}\lambda\to\lambda_0$$

另一方面，当 $|\lambda|>2||A||$ 时，

$$\begin{aligned}||R_\lambda(A)||\leqslant\frac{1}{|\lambda|}\frac{1}{1-\left|\left|\frac{A}{\lambda}\right|\right|}=\frac{1}{|\lambda|-||A||}\leqslant\frac{1}{||A||}\end{aligned}$$

而 $\lambda\mapsto R_\lambda(A)$ 连续，在 $\overline{D(0,2||A||)}$ 上有界，于是存在 $C>0$ 使得 $||R_\lambda(A)||\leqslant C,\forall\lambda\in\mathbb{C}$,
$$|u_f(\lambda)|\leqslant||f||\cdot||R_\lambda(A)||\leqslant C||f||,\forall\lambda\in\mathbb{C}$$
由 Liouvillle 定理 [[Wiki - 整函数的Liouville定理]]，$u_f$ 是常函数。从而
$$f(R_\lambda(A))=f(R_\mu(A)),\forall\lambda,\mu\in\mathbb{C},\forall f\in\mathcal{L}(X)^*$$
由 HBT [[Wiki - hahn-banach定理]], $R_\lambda(A)=R_\mu(A)$, 这与 R.I.矛盾。

