---
aliases:
info: X射线变换的定义（沿直线的积分）
date: 2025-12-25-星期四 11:05
update: 2025-12-25-星期四 11:05
tags:
  - wiki/year2025
  - wiki/month12
  - 数学分析/积分
id: wiki20251225110503
banner: "![[astrowalk.gif]]"
---

## Def 1 X射线变换

```ad-definition
title: Definition 1 (X-Ray Transform)

X射线变换 $X(f)$ 将 $\mathbb{R}^d$ 上的函数 $f$ 映射到其在所有直线上的积分集合。
对于任意直线 $L$，
$$ X(f)(L) = \int_L f(x) d\sigma(x) $$
```

## Comparison with Radon Transform

*   **d=2**: X射线变换与 [[Wiki - Radon变换]] 重合，因为 $\mathbb{R}^2$ 中的超平面就是直线。
*   **d=3**: X射线变换（沿直线积分）不同于 Radon 变换（沿平面积分）。在医学成像中，实际测量的数据（X射线穿过人体）通常对应于 X射线变换，但在数学处理上，Radon 变换（平面积分）往往更简单。两者可以通过相互转化联系起来。

[[Wiki - Radon变换]]
