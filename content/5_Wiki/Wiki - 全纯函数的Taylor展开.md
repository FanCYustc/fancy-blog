---
aliases: 
info: 
date: 2024-04-28-星期日 10:07
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/级数
  - 复分析/全纯函数
id: wiki20240428100731
banner: "![[astrowalk.gif]]"
---
---

## The 1 Taylor 级数

若 $f\in H(B(z_0,R))$, [[Wiki - 全纯函数]] 则 $f$ 可以在 $B(z_0,R)$ 中展开成幂级数 [[Wiki - 全纯函数的幂级数表示]] ：


$$f(z)=\sum_{n=0}^\infty\frac{f^{(n)}(z_0)}{n!}(z-z_0)^n,z\in B(z_0,R).$$
右端的级数称为 $f$ 的 **Taylor 级数**。

形式同 [[Wiki - Taylor级数]]

## Pro 1

通过 Taylor 展开，有了对 m 阶零点的定义：等价于 f 在 $z_{0}$ 的邻域内可以表示为
$$
f(z)=(z-z_{0})^{m}g(z)
$$
$g(z)$ 在 $z_{0}$ 全纯，且 $g(z_{0})\neq 0$。

进一步，存在 $z_{0}$ 邻域，使得 g 在其中处处不为 0.（由连续性）

