---
aliases: 
info: 
date: 2025-06-09-星期一 21:56
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 相关
id: wiki20250609215637
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Spearman 等级相关系数

```ad-definition
title: Spearman's Rank Correlation Coefficient

Spearman等级相关系数（记作$\rho$或$r_s$）是一种非参数统计量，用于衡量两个变量的单调关系强度。其定义为两个变量排序后的：

$$ r_s = 1 - \frac{6\sum d_i^2}{n(n^2-1)} $$

其中：
- $d_i$ = $x_i$和$y_i$的排序差（rank difference）
- $n$ = 观测值数量
```

```ad-proposition
title: 性质

1. 取值范围：$-1 \leq r_s \leq 1$
2. $r_s=1$表示完全单调递增关系
3. $r_s=-1$表示完全单调递减关系
4. 对异常值比Pearson相关系数更稳健
5. 适用于序数尺度数据
```

[[Wiki - Pearson相关系数]]

```ad-theorem
title: 显著性检验

原假设$H_0$：两个变量独立

检验统计量（当$n>10$时近似服从标准正态分布）：
$$ z = r_s\sqrt{\frac{n-2}{1-r_s^2}} $$

对于小样本（$n \leq 10$），需查Spearman临界值表。
```
