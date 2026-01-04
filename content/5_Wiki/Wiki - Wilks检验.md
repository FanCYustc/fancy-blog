---
aliases: 
info: 
date: 2025-04-29-星期二 17:30
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 多元统计分析
  - 回归分析/方差分析
id: wiki20250429173040
banner: "![[astrowalk.gif]]"
---
---
[[Wiki - 单因素方差分析]]


## Theorem 1 Wilks 定理

```ad-theorem
title: Wilks' Theorem (威尔克斯定理)

设原假设 $H_0$ 下有 $k$ 个限制条件，备择假设 $H_1$ 下的最大似然函数值为 $L_1$，在原假设下的最大似然函数值为 $L_0$，则Wilks统计量定义为：
$$
\Lambda = -2 \ln \left( \frac{L_0}{L_1} \right)
$$
当样本量 $n \to \infty$ 时，$\Lambda$ 渐进服从自由度为 $k$ 的 $\chi^2$ 分布：
$$
\Lambda \overset{d}{\to} \chi^2(k)
$$
```

[[Wiki - 似然比检验]]

[[Wiki - 卡方分布]]

## The 2 wilks 检验

对于 MANOVA 问题（ $g$ 个正态总体均值检验问题）：
$$  \begin{array}{l} \left\{\begin{array}{l} \mathbf{x}_{11}, \ldots, \mathbf{x}_{1 n_{1}} \text { iid } \sim N_{p}\left(\boldsymbol{\mu}_{1}, \Sigma\right), \text { 样本均值和方差: } \overline{\mathbf{x}}_{1}, S_{1} \\ \ldots \\ \mathbf{x}_{g 1}, \ldots, \mathbf{x}_{g n_{g}} \text { iid } \sim N_{p}\left(\boldsymbol{\mu}_{g}, \Sigma\right), \text { 样本均值和方差: } \overline{\mathbf{x}}_{g}, S_{g} \end{array}\right. \\ \Theta=\left\{\boldsymbol{\mu}_{1}, \ldots, \boldsymbol{\mu}_{g}, \Sigma\right\}, \Theta_{0}=\left\{\boldsymbol{\mu}=\boldsymbol{\mu}_{1}=\ldots=\boldsymbol{\mu}_{g}, \Sigma\right\} . \end{array}  $$

- 原假设成立时，极大似然估计为：$\hat{\boldsymbol{\mu}}_{0}=\overline{\mathbf{x}}, \hat{\Sigma}_{0}=(B+W) / n$ ，
- 没有限制时，极大似然估计：$\hat{\boldsymbol{\mu}}_{k}=\overline{\mathbf{x}}_{k}, k=1, \ldots, g, \hat{\Sigma}=W / n$ ，
$$  \begin{aligned} \Lambda=\frac{\max _{\theta \in \Theta_{0}} L(\boldsymbol{\theta})}{\max _{\theta \in \Theta} L(\boldsymbol{\theta})} & =\frac{L\left(\hat{\boldsymbol{\mu}}_{0}, \hat{\Sigma}_{0}\right)}{L\left(\hat{\boldsymbol{\mu}}_{1}, \ldots, \hat{\boldsymbol{\mu}}_{g}, \hat{\Sigma}\right)}=\frac{|\hat{\Sigma}|^{n / 2}}{\left|\hat{\Sigma}_{0}\right|^{n / 2}}=\frac{|W|^{n / 2}}{|B+W|^{n / 2}} \\ \Lambda^{*} & =\frac{|W|}{|B+W|} \end{aligned}  $$

由 Wilks 定理，
$$
-2 \log (\Lambda)=-n \log \left(\Lambda^{*}\right)=-n \log \left(\frac{|W|}{|B+W|}\right) \xrightarrow{d} \chi_{(g-1) p}^{2}$$
其中
$$  \begin{array}{l} T=(n-1) S=\sum_{k=1}^{g} \sum_{i=1}^{n_{k}}\left(\mathbf{x}_{k i}-\overline{\mathbf{x}}\right)\left(\mathbf{x}_{k i}-\overline{\mathbf{x}}\right)^{\top} \\ =\sum_{k=1}^{g} \sum_{i=1}^{n_{k}}\left(\overline{\mathbf{x}}_{k}-\overline{\mathbf{x}}+\mathbf{x}_{k i}-\overline{\mathbf{x}}_{k}\right)\left(\overline{\mathbf{x}}_{k}-\overline{\mathbf{x}}+\mathbf{x}_{k i}-\overline{\mathbf{x}}_{k}\right)^{\top} \\ =\sum_{k=1}^{g} \sum_{i=1}^{n_{k}}\left(\overline{\mathbf{x}}_{k}-\overline{\mathbf{x}}\right)\left(\overline{\mathbf{x}}_{k}-\overline{\mathbf{x}}\right)^{\top}+\sum_{k=1}^{g} \sum_{i=1}^{n_{k}}\left(\mathbf{x}_{k i}-\overline{\mathbf{x}}_{k}\right)\left(\mathbf{x}_{k i}-\overline{\mathbf{x}}_{k}\right)^{\top} \\ \triangleq B+W \end{array}  $$

其中
- $B$ 为组间＂平方和＂（Between－group），代表各组之间的差异；
- $W$ 为组内＂平方和＂（Within－group），代表组内的变差。

```ad-note

以行列式度量 $\mathrm{B}$ 相对于 $\mathrm{W}$ 是否接近 0, 其它检验方法还有:
- Lawley- Hotelling trace : $\operatorname{tr}\left( {\mathrm{{BW}}}^{-1}\right)$
- Phillai trace : $\operatorname{tr}\left( {\mathrm{B}{\left( \mathrm{B} + \mathrm{W}\right) }^{-1}}\right)$
- Roy’s largest root (最大特征根): ${\lambda }_{\max }\left( {\mathrm{W}{\left( \mathrm{B} + \mathrm{W}\right) }^{-1}}\right)$
```

## Pro 1

对于 [[Wiki - 多元线性回归模型]]，其中 $H_{0}$ 是对回归系数 B 的 k 个约束的零假设，则 wilks 检验为
$$
\Lambda^{*}= \frac{|\hat{\Sigma}|}{|\hat{\Sigma}_{0}|}, -2\log(\lambda)= -n\log( \Lambda^{*})= -n\log(\frac{|\hat{\Sigma}|}{|\hat{\Sigma}_{0}|})\to \chi^{2}_{k}
$$
