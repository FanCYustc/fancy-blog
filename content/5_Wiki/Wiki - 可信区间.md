---
aliases: 
info: 
date: 2024-05-31-星期五 12:05
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/贝叶斯方法
id: wiki20240531120527
banner: "![[astrowalk.gif]]"
---
---

## Def 1 可信区间

```ad-definition
title: Definition 1

设参数 $\theta$ 的后验分布为 $\pi(\theta|x)$, 对给定的样本 $x$ 和 $0<\alpha<1$ (通常 $\alpha$ 取较小的数) , 若存在两个统计量 $\hat{\theta}_1=\hat{\theta}_1(x)$ 和 $\hat{\theta}_2=\hat{\theta}_2(x)$, 使得
$$P(\hat{\theta}_1\leqslant\theta\leqslant\hat{\theta}_2|x)\geqslant1-\alpha,$$
则称 $[\hat{\theta}_1,\hat{\theta}_2]$ 为 $\theta$ 的可信水平为 1 $-\alpha$ 的 **Bayes 可信区间** (Bayesian credible interval)
而满足
$$P(\theta\geqslant\hat{\theta}_L|x)\geqslant1-\alpha $$
的 $\hat{\theta}_{L}=\hat{\theta}_{L}(x)$ 称为 $\theta$ 的可信水平为 1 $-\alpha$ 的可信下限，而满足
$$P(\theta\leqslant\hat{\theta}_U|x)\geqslant1-\alpha $$

的 $\hat{\theta}_U=\hat{\theta}_U(x)$ 称为 $\theta$ 的可信水平为 $1-\alpha$ 的可信上限。

```



与 [[Scientech - 数理统计-区间估计]]的置信区间不同，置信区间是在样本数据确定前就存在的，是关于 x 的区间，不能先确定区间是什么再观测样本。

而可信区间是在已知样本 x 后提出来的，例如 $[0.2,0.6]|x$ 是有意义的，但在置信区间中不能说 $\theta$ 落在 $[0.2,0.6]$ 中的概率为 0.9 这种

