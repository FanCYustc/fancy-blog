---
aliases: 
info: 24春数理统计第5章第6章
date: 2024-04-16-星期二 14:18
update: 
tags:
  - scientech/year2024
  - scientech/month04
  - 数理统计/假设检验
id: scientech20240416141843
banner: "![[astrofishing.gif]]"
---
---

# CH5-参数假设检验

## 5.1 假设检验

[第9节课件](E:\课程资料\数理统计\lec9.pdf)

起源：女士品茶

1、要先设定一个假设

2、在此假设下有一个对事件发生的度量

3、如果事件发生的概率很小（例如 P<0.05），则结果不像是由简单的随机性可以解释的，称为**显著的**。

假设检验需要一个 null hypothesis，即**原假设**或零假设，为观察的中心，不容易否定；还要有一个 alternative nypothesis，称为**对立假设**。

要通过观察的样本计算判断应不应该拒绝或不拒绝原假设。不同的对立假设 $H_{1}$ 会决定算证据的方式不一样

假设检验可能会犯错误，分为 I 型错误和 II 型错误，不能同时都很小，通常选择控制 I 型错误，即本来 $H_{0}$ 对的，结果被拒绝了。

检验函数[[Wiki - 检验函数]]表示在有了样本 X 后，否定 $H_{0}$ 的概率，$\varphi (X)\in [0,1]$

用**功效函数**[[Wiki - 功效函数]]表示否定域发生的概率，是关于参数 $\theta \in \Theta$ 的函数

$$
\beta_{\varphi}(\theta)= P_{\theta}(检验\varphi否定H_{0})=E_{\theta}[\varphi(X)]
$$

A test $\phi_T$ is  exact  size $\alpha$ (sometimes does not exist) if

$$
\sup_{\theta\in\Theta_0}\beta_{\phi_T}(\theta)=\alpha.
$$

A test $\phi_T$ is level $\alpha$ (always exists) if

$$
\beta_{\phi_T}(\theta)\leq\alpha 
$$

$\theta\in\bar{\Theta}_0$

## 5.2 正态假设检验

与区间估计 [[Scientech - 数理统计-区间估计]]的置信区间是一致的，检验函数基本就是枢轴变量生成的 

对于不同的原假设和对立假设，拒绝域不同

[[Wiki - 常见假设检验]]

### 非正态假设检验

利用 [[Wiki - 中心极限定理]]，运用渐进正态性进行假设检验估计

## 5.4 一致最优检验与无偏检验

[第10节课件](E:\课程资料\数理统计\lec10.pdf)

讨论不同检验哪个更优的比较

使得在同样检验水平下（一型错误），比较二型错误，最小的就是一致最优检验

[[Wiki - 一致最优检验]]

[[Wiki - Neyman-Pearson引理]]

两个常见的问题：找一个假设检验的 UMPT，或者证明一个假设的 UMPT 不存在（许多双边的假设检验都没有 UMPT）


下面研究一系列特殊的分布族：**单调似然比分布族**

[[Wiki - 单调似然比分布族]]

在这种分布族下单边假设的 UMPT 好研究

由于 NP 引理的对立假设也是单点假设，所以对单边假设或者双边对立假设，需要这样处理：

找一个 $\theta_{1}\in H_{1}$，对立假设 $H_{1}':\theta = \theta_{1}$

根据 NP 引理找出此假设的 UMPT，若 UMP 与 $\theta_{1}$ 无关，则单边假设 $H_{0}: \theta=\theta_{0}\leftrightarrow H_{1}:\theta<\theta_{0}$ 有 UMPT；但双边假设 $H_{0}:\theta=\theta_{0}\leftrightarrow H_{1}:\theta\neq\theta_{0}$ 不一定有 UMPT

总结一下就是 1、$H_{0}: \theta=\theta_{0}\leftrightarrow H_{1}:\theta=\theta_{1}$ 时由 NP 引理，UMPT 存在。2、$H_{0}:\theta\leq \theta_{0}\leftrightarrow H_{1}:\theta>\theta_{0}$，在 MLR 下存在 UMPT。3、其他要具体分析，如选取 $\theta_{1}$ 后看 UMP 是否与 $\theta_{1}$ 有关。

## 5.5 假设检验与区间估计

[[Scientech - 数理统计-区间估计]]

假设检验 $1-\alpha$ 的接受域就对应系数为 $1-\alpha$ 的置信区间

[[Wiki - 检验的p值]]，对于不同的样本，最终结果有可能都是接受或拒绝，但接受和拒绝的确定程度不同，就用 p 值来衡量

## 5.3 似然比检验

[第11节课件](E:\课程资料\数理统计\lec11.pdf)

### 似然比检验

直观理解，若似然函数 [[Wiki - 极大似然估计]] $L(x;\theta_{0})>L(x;\theta_{1})$，则 $\theta_{0}$ 更像是 x 分布的参数

[[Wiki - 似然比检验]]

在大部分情况下难以计算似然比表达式或者找到关于 $\lambda(x)$ 的单调统计量，这时需要极限分布来解决 [[Wiki - 似然比极限分布]]



针对简单单点假设，还有以下两种检验方法：
### Wald 检验

[三大检验方法的构造 - 知乎](https://zhuanlan.zhihu.com/p/675069941)

需要用到渐进正态性，对于 $H_{0}:g(\theta)=0$ 可以更快的处理

[[Wiki - wald检验]]

### 得分检验

[三大检验方法的构造 - 知乎](https://zhuanlan.zhihu.com/p/675069941)

需要用渐进正态性，基于**拉格朗日乘子法**

[[Wiki - score检验]]

总结：

- LRT, wald，score 三种检验，都渐进收敛到卡方检验 [[Wiki - 卡方分布]]
- LRT 检验关注似然函数的比 $\frac{l(\hat{\theta}|x)}{l(\theta_{0}|x)}$，需要算全空间和零空间的似然函数；但在相同检验水平下，LRT 的二型错误通常比 wald 和 score 小；适用范围更广
- Wald 检验关注的是 $\hat{\theta}$ 与 $\theta_{0}$ 的距离，只需要算 $\hat{\theta}_{n}$ 的似然函数
- Score 检验关注的是 $\theta_{0}$ 附近 MLE 的变化率，只需要计算 $\theta_{0}$ 的 MLE $l_{n}(\theta_{0}|x)$，基于 lagrange 乘子法

由于假设检验与区间估计等价，所以利用似然比检验等可以确定多参数检验的检验函数，从而**假设检验的接受域就对应区间估计的置信域**

## 6.1 拟合优度检验

[第12节课件](E:\课程资料\数理统计\lec12.pdf)

解决对分布的假设检验：$H_{0}: X\sim F$ 。与参数假设检验不同，这里是不用写出对立假设的

### Pearson 卡方检验

对于离散分布，用 pearson 卡方检验

[[Wiki - pearson卡方检验]]

由 pearson 检验引出各种非参数检验，如独立性检验、齐一性检验，秩检验，秩和检验，最终都是化为 pearson 卡方检验解决。

[[Wiki - 独立性检验]]

[[Wiki - 齐一性检验]]

### 符号检验

[[Wiki - 符号检验]]

[[Wiki - 符号秩和检验]]是符号秩检验的改进，利用更多信息

### 连续分布检验

在对假设 $H_{0}: X\sim F$ 且 F 为连续分布时，kolmogorov 和 smirnov 检验更加适用，当然也可以取离散的观测点用 pearson 卡方检验近似检验

[[Wiki - kolmogorov检验]]

[[Wiki - smirnov检验]]

### 正态性检验

1、画箱线图浅观察一下对称性

2、Q-Q 图： [正态分布Q-Q图怎么解读? - 知乎](https://www.zhihu.com/question/379585418)

[[Wiki - PP图和QQ图]]

利用分位点直观判断分布是否与正态分布接近，越接近线性，分布越接近正态分布。线性拟合的那条线可以用最小二乘法拟合（回归分析内容）

如果 QQ 图右尾长，则质量集中在左边，分布左偏；若左尾长，分布右偏

3、画直方图

4、pearson 卡方检验

5、kolmogorov-smirnov 检验

6、Cramer-von mises test

7、Anderson-Darling test

8、Shapiro-Wilk test（据统计这个最有效）

具体见[非参数检验和正态检验课件](E:\课程资料\数理统计\lec12.pdf)






