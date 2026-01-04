---
aliases: 
info: 
date: 2025-01-03-星期五 10:58
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 回归分析/线性回归
  - 数理统计/假设检验
id: wiki20250103105843
banner: "![[astrowalk.gif]]"
---
---

## The 1 区组设计的两因素方差分析

将样本分成 J 个区组，每个区组内的样本都随机做 I 种处理之一，假设每个区组做每种处理的都只有一个样本，记为 $y_{ij}, i=1,\dots,I,j=1,\dots,J$

则原假设为 $H_{0}: \mu_{1j}= =\mu_{2j}=\dots=\mu_{Ij}, j=1,\dots,J$

构造线性回归模型 [[Wiki - 线性回归模型]]
$$
y_{ij}= \mu+ \alpha_{i} +\beta_{j} +\epsilon_{ij}, \epsilon_{ij}\sim N(0,\sigma^{2})
$$
即假设 $y_{ij}$ 为同方差正态分布，还要满足约束 $\alpha_{1}+\dots+\alpha_{I}=0, \beta_{1}+\dots+\beta_{J}=0$

此时 $H_{0}: \alpha_{1}= \dots =\alpha_{I}$

同 [[Wiki - 单因素方差分析]]进行平方和分解和 F 检验，此时求和约束下的变量个数为 $p=1+I+J-2=I+J-1$，$q=I-1$ 可以得到 F 检验 [[Wiki - 线性模型的F检验]] 的统计量为

$$
F=  (J-1) \frac{{\sum_{i=1}^{I}\sum_{j=1}^{J}(\overline{y_{i\bullet}}- \overline{y_{\bullet\bullet}})^{2}}}{\sum_{i=1}^{I}\sum_{j=1}^{J} (y_{ij}- \overline{y_{i\bullet}}-\overline{y_{\bullet j}}+\overline{y_{\bullet\bullet}})^{2}}\sim F_{I-1,(I-1)(J-1)}
$$

其中分子记为 $S_{处理}$，分母记为 $S_{组内}$，有平方和分解 $SS_{总}=SS_{处理}+SS_{区组}+SS_{组内}$

[[Wiki - 线性回归的误差方差估计|残差平方和]]





