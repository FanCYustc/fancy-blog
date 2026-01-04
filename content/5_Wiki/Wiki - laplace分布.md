---
aliases: 
info: 
date: 2025-06-10-星期二 16:51
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 概率论/概率分布
id: wiki20250610165105
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Laplace 分布

```ad-definition
title: Laplace分布（双指数分布）

**Laplace分布**是连续概率分布，其概率密度函数为：
$$ f(x|\mu,b) = \frac{1}{2b} \exp\left(-\frac{|x-\mu|}{b}\right) $$
其中：
- $\mu$ 为位置参数（分布的中位数和众数）
- $b > 0$ 为尺度参数（控制分布的离散程度）

**性质**：
1. 期望：$E[X] = \mu$
2. 方差：$\text{Var}(X) = 2b^2$
3. 偏度：0（对称分布）
4. 峰度：3（与正态分布相同）
5. 特征函数：$\varphi(t) = \frac{e^{i\mu t}}{1 + b^2 t^2}$
```

[[Wiki - 随机变量的特征函数]]

[[Wiki - 数学期望]]

[[Wiki - 方差]]

```ad-note
title: 应用场景
1. 金融中的极端事件建模（比正态分布更重尾）
2. 信号处理中的噪声分析
3. 贝叶斯统计中的先验分布（L1正则化对应Laplace先验）
```

```ad-proposition
title: 与指数分布的关系
若 $Y_1, Y_2 \sim \text{Exp}(\lambda)$ 独立，则：
$$ X = Y_1 - Y_2 \sim \text{Laplace}(0, \lambda^{-1}) $$
证明：
$$ f_X(x) = \int_0^\infty f_{Y_1}(|x|+y)f_{Y_2}(y)dy = \frac{\lambda}{2}e^{-\lambda|x|} $$
```

[[Wiki - 指数分布]]

[[Scientech - 概率论-随机变量]]