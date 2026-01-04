---
aliases:
  - 罗尔定理
  - Lagrange微分中值定理
  - cauchy中值定理
info: 
date: 2023-03-13-星期一 20:46
update: 
tags:
  - wiki/year2023
  - wiki/month03
  - 数学分析/微分
id: wiki20230313204645
banner: "![[astrowalk.gif]]"
---
---

## The 1 罗尔定理

设函数 $f(x)$ 满足: 
1. 在闭区间 $[a,b]$ 连续
2. 在开区间 $(a,b)$ 可导
3. $f(a)=f(b)$
则 $(a,b)$ 至少存在一个点 $c$, 使得：
$$f ^ { \prime } ( c ) = 0$$

### Proof

证明过程使用了费马引理：

$f(x)$ 在定义域 I 的内点[[Wiki - 度量空间的内部外部|内点外点边界点]] $x_{0}$ 处取到局部极值，若 f 在这一点可导 [[Wiki - 函数的导数]]，则有 $f'(x_{0})=0$

## The 1 拉格朗日微分中值定理

```ad-theorem
title: Theorem 1

函数 f 为区间 $[a, b]$ 上的连续函数，且可微 ，则存在 $\xi\in[a,b]$ 使得
$$
f(b)-f(a)=f'(\xi)(b-a)
$$


```

[[Wiki - 映射的微分]]
## The 3 cauchy 中值定理

若 $f(x)$ 和 $g(x)$ 在 $[a,b]$ 上连续[[Wiki - 函数的连续性]]，在 $(a, b)$ 内可微而且对任一点 $x\in (a, b), g^\prime (x)\neq0.$ 则在 $(a, b)$ 内，必存在一点 $\xi$, 使得
$$\frac{f(b)-f(a)}{g(b)-g(a)}=\frac{f'(\xi)}{g'(\xi)}.$$
这里，因为 $g^{\prime}(x)\neq0$, 由 Lagrange 中值定理知，$g(b)-g(a)\neq0$, 所以上式的左边是有意义的.

