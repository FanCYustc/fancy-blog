---
aliases: 
info: 
date: 2024-09-09-星期一 14:40
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 泛函分析
  - 几何学/度量空间
id: wiki20240909144046
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 度量空间的完备性]]

## The 1 度量空间的完备化

对于任何度量空间 $(X,d)$，**都存在**完备度量空间 $(\tilde{X},\tilde{d})$，其稠密子空间 [[Wiki - 度量空间的稠密性]] $X_{0}$ 与 $(X,d)$ 等距同构 [[Wiki - 等距映射与等距同构]]，称为度量空间的一个完备化，且次完备化**在等距同构意义下唯一**，即若 $(\tilde{X},\tilde{d})$ 与 $(\tilde{X'},\tilde{d'})$ 都是 X 的完备化，则 $\tilde{X}$ 与 $\tilde{X'}$ 等距同构


听起来很像 [[Wiki - 测度延拓定理]]


### Proof


与 cantor 实数的定义过程很像，因为 $\mathbb{R}$ 就是 $\mathbb{Q}$ 的完备化 [[Wiki - 实数的定义]]

[[Wiki - 柯西收敛准则|实数的完备性]]

1、令 $\mathcal{F} = \{(X,d)上的cauchy列\}$ [[Wiki - 度量空间的柯西收敛列]]，定义 $\tilde{X}= \mathcal{F} / \sim$

此时验证 $\tilde{d} ([\eta], [\xi])= \lim_{ n \to \infty } d(\eta_{n}, \xi_{n})$ 是良定的度量，其中 $\{\eta_{n}\}\to\eta, \{\xi_{n}\}\to \xi$ 是它们的代表元。

2、记 $\xi_{x}= (x,x, \dots)$

则 $X_{0} = \{[\xi_{x}]\hat{\mathbf{x}}\in X\}$ 为 $\tilde{X}$ 的子集，定义 $T： X\to X_{0}, x\to[\xi_{x}]$，证明 T 是等距同构

3、证明 $X_{0}$ 在 $\tilde{X}$ 中稠密

4、证明 $(\tilde{X},\tilde{d})$ 是完备度量空间

5、验证唯一性：若有两个 $X_{0},X_{0}'$，对应 $T,T'$ 为等距同构，证明 $\varphi = T' \circ T^{-1}$ 是等距同构 $X_{0}\to X_{0}'$

