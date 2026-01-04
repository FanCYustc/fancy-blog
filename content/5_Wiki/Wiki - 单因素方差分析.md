---
aliases: 
info: 
date: 2025-01-03-星期五 10:17
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 回归分析/线性回归
  - 数理统计/假设检验
id: wiki20250103101715
banner: "![[astrowalk.gif]]"
---
---

## The 1 单因素方差检验

设有 K 组样本，每组分布为 $N(\mu_{k},\sigma^{2}),k=1,\dots,K$，原假设为 $H_{0}: \mu_{1}=\dots=\mu_{K}$，称为单因素方差分析

设每组样本为 $y_{k1}, \dots,y_{kn_{k}},k=1,\dots,K$，$n_{k}$ 可以互不相同，可以表达为线性回归模型 [[Wiki - 线性回归模型]]
$$
y_{ki}= \mu_{k}+ \epsilon_{ki}, i=1,\dots, n_{k}, k=1,\dots,K
$$

即此时参数为 $\boldsymbol{\beta}= (\mu_{1},\dots,\mu_{K})$，

此时的 F 检验 [[Wiki - 线性模型的F检验]] 为
$$
F= \frac{n-K}{K-1} \frac{{\|\hat{\mathbf{y}}-\hat{\mathbf{y}_{0}}\|^{2}}}{\|\mathbf{y}-\hat{\mathbf{y}}\|^{2}}\sim F_{K-1,n-K}
$$

其中 $n=n_{1}+\dots+n_{K}$

此时的 X 有特殊性，$H_{0}$ 下模型为 $\mathbf{y}= \mathbf{1}\mu_{1}+ \boldsymbol{\epsilon}, V_{0}= C(\mathbf{1})$， 计算得

$$
\hat{\mathbf{y}}= (\mathbf{1}_{n_{1}}\overline{y_{1\bullet}}, \mathbf{1}_{n_{2}}\overline{y_{2\bullet}},\dots, \mathbf{1}_{n_{K}}\overline{y_{K\bullet}})^{T}
$$

其中 $\overline{y_{k\bullet}}= \frac{1}{n_{k}}\sum_{i=1}^{n_{k}} y_{ki}$

$$
\hat{\mathbf{y}_{0}}= \mathbf{1}_{n} \overline{y_{\bullet\bullet}}
$$
其中 $\overline{y}_{\bullet\bullet}= \frac{1}{n} \sum_{k=1}^{K}\sum_{i=1}^{n_{k}}y_{ki}$。于是

$$
F= \frac{{n-K}}{K-1} \frac{{\sum_{k=1}^{K}\sum_{i=1}^{n_{k}}(\overline{y_{k\bullet}}- \overline{y_{\bullet\bullet}})^{2}}}{\sum_{k=1}^{K}\sum_{i=1}^{n_{k}}(y_{ki}-\overline{y_{k\bullet}})^{2}}
$$

其实这也是一个平方和分解[[Wiki - 线性回归的误差方差估计|残差平方和]]，分母是 RSS，分子是 $SS_{回}$


```ad-example

当 K=2 时就是两样本 t 检验
```

 [[Wiki - 常见假设检验]]