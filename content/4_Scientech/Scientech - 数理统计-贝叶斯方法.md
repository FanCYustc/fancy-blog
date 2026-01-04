---
aliases: 
info: 24春数理统计第7章
date: 2024-05-28-星期二 14:54
update: 
tags:
  - scientech/year2024
  - scientech/month05
  - 数理统计/贝叶斯方法
id: scientech20240528145457
banner: "![[astrofishing.gif]]"
---
---

# CH7-Bayes 方法和统计决策理论

## 7.1 Bayes 方法

[lec13 课件](E:\课程资料\数理统计\lec13.pdf)

传统统计是基于频率逼近概率；
Bayes 方法是基于个体对事件的主观相信，Bayes 方法是衡量个体对某个结果的相信程度，知道的信息越多，会改变相信程度

[[Wiki - 全概率公式和贝叶斯公式]]

利用 Bayes 公式，Bayes 方法可理解成：对事件的认识可能为 $A_{1},A_{2},\dots$；在 $P(B|A_{i})$ 上看到 B 发生，此时 $A_{i}$ 发生的概率为 $P(A_{i}|B)$，此时对 $A_{i}$ 的认识发生更新

之后又看见 C，基于最新的认识，又对 $A_{i}$ 的认识发生更新，如此**迭代更新**

```ad-definition
title: Definition 1

先验分布：在参数空间 $\Theta$ 上，任一概率分布都可作为参数的**先验分布** $\pi(\theta)$

后验分布：在样本条件下，**后验分布** $\pi(\theta|x)$ 为
$$
\pi(\theta|x) = \frac{{f(x|\theta)\pi(\theta)}}{\int _{\Theta}f(x|\theta)\pi(\theta) \, d\theta }
$$


```

^63c372

Bayes 统计的自学习性在一些情形下有优势

## 7.2 先验分布的确定

### 无信息先验分布

[[Wiki - 广义先验密度]]

先考虑两种特殊情况：

1. 位置参数的先验分布，即 $\pi (\theta)\equiv 1$
2. 刻度参数的先验分布，对形如 $\sigma^{-1}\varphi\left( \frac{x}{\sigma} \right),\sigma>0$ 的 f，先验密度为 $\pi (\sigma)= \frac{1}{\sigma}, \sigma>0$

3.  一般情形，使用 Jeffreys 无信息检验[[Wiki - Jeffreys无信息检验]]

### 共轭先验分布

[[Wiki - 共轭先验分布]]

[[Wiki - beta分布]]

对于共轭先验分布求后验分布，可以这样：

由于
$$\pi(\theta|x)=\frac{f(x|\theta)\pi(\theta)}{m(x)}\propto f(x|\theta)\pi(\theta),$$
1、对似然函数 $l(\theta|x)$（即样本密度函数 $f(x|\theta)$）的核，即仅与 $\theta$ 有关的部分

2、对先验分布 $\pi(\theta)$，提取只与 $\theta$ 有关的部分

3、则 $\pi (\theta|x)\propto \{f (\theta|x) 的核\}\cdot\{\pi( \theta)的核\}$，再归一化（积分为 1）得到后验分布

### 后验分布的计算

在确定广义先验密度后，用

$$
f(x) = \int _{\Theta} L(\theta|x)\pi(\theta) \, d\theta 
$$
计算有样本后的样本密度，继续迭代计算后验分布

$$
\pi(\theta|x) = \frac{{f(x|\theta)\pi(\theta)}}{\int _{\Theta}f(x|\theta)\pi(\theta) \, d\theta }
$$

再次计算
$$f(z\mid\mathbf{x})=\int f(z\mid\boldsymbol{\theta})\pi(\boldsymbol{\theta}\mid\mathbf{x})d\boldsymbol{\theta}$$



有一些迭代方法：
- 马尔科夫链蒙特卡洛方法（见实用随机过程）
- conjugate priors

## 7.3 Bayes 统计推断

### Bayes 点估计

与 [[Scientech - 数理统计-点估计]]对比

[[Wiki - Bayes点估计]]

有众数，中位数，均值三种点估计；其中众数估计与极大似然估计一致。均值估计在一定条件下有优点

同 [[Wiki - 一致最小方差无偏估计|均方误差]]，可以通过后验均方误差来评估估计的有效性

还可以看估计的值随样本量 n 趋于无穷会不会收敛，称为后验相合性

### Bayes 区间估计

后验区间估计用的是可信区间 [[Wiki - 可信区间]]

与 [[Scientech - 数理统计-区间估计]]对比

### Bayes 假设检验

与假设检验 [[Scientech - 数理统计-假设检验]]对比

第一种是最大后验原则：基于后验，其实 Bayes 假设检验不再区分原假设和对立假设

[[Wiki - Bayes假设检验]]此时多重假设检验与对立假设检验没什么区别

或者可以用 Bayes 因子[[Wiki - Bayes因子检验]]进行假设检验

有一些悖论：1、在相同检验水平 $\alpha$ 下，存在样本量 n，使得在频率检验下拒绝了，但在 Bayes 检验下被接受了

2、当样本量 n 很小时，Bayes 检验一直接受 $H_{0}$，但频率方法可能拒绝

## 7.4 统计决策理论

[lec14 课件](E:\课程资料\数理统计\lec14.pdf)

统计方法：1、只用样本。2、用样本+先验

3、除了统计方法，还要给出统计决策的**效用**

之前的频率方法和 Bayes 方法都可以纳入到统计决策的框架

一个一般的统计决策需要包含以下内容：

1、统计模型 $\{f (\theta|x): x\in X,\theta\in \Theta\}$

2、决策空间 $\mathcal{A}=\{a=\delta(x)\}$

3、损失函数 $L(a,\theta)$ 度量在每一种决策和参数下的损失

常见的有平方损失 $L (a,\theta)= (a-\mu(\theta))^{2}$，绝对值损失等

[[Wiki - 风险函数]]

[[Wiki - 一致最优决策]]

