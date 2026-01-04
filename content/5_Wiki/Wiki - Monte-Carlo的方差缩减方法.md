---
aliases: 
info: 
date: 2024-10-17-星期四 14:35
update: 
tags:
  - wiki/year2024
  - 数学建模
  - 概率论/期望方差
  - wiki/month09
id: wiki20241017143552
banner: "![[astrowalk.gif]]"
---
---

## 1 增大抽样次数

很好理解 [[Wiki - 方差]] ·

## 2 对偶变量法

取两个相关且同分布的变量 $X_{1},X_{2}$，则

$$
Var\left[ \frac{{g(X_{1})+g(X_{2})}}{2} \right] = \frac{1}{4}(Var[g(X_{1})]+Var[g(X_{2})]+2Cov[g(X_{1}),g(X_{2})])
$$

只要 $g(X_{1}),g(X_{2})$ 负相关就可以减小方差 [[Wiki - 协方差]]

[[Wiki - Pearson相关系数]]

### The 1 

$g$ 为**单调函数**，$U\sim U(0,1)$，则 $Cov[g (U), g (1-U)]\leq 0$

利用逆变换法，对于分布为 F 的随机变量 X，构造 $F^{-1}(U),F^{-1}(1-U)\sim F$ 且负相关

### The 2 

更一般的，对于多元，$g(x_{1},\dots,x_{n})$ 关于每个 $x_{n}$ 都是单调的，$U_{i}i.i.d\sim U(0,1),i=1,\dots,n$，则有
$$
Cov[g(U_{1},\dots,U_{n}), g(1-U_{1},\dots,1-U_{n})]\leq 0
$$

```ad-todo

所以对于目标参数估计 $\theta = E[g(x_{1},\dots,x_{n})]$，**g 是单调的**。

- 取 n 个独立的随机变量 $U_{i}\sim U(0,1),i=1,\dots,n$
- 构造随机变量 $\theta_{i} = g(F^{-1}_{1}(U_{1}),\dots,F^{-1}_{n}(U_{n}))$
- 构造对偶变量 $\theta_{i}^{+} = g(F^{-1}_{1}(1-U_{1}),\dots,F_{n}^{-1}(1-U_{n}))$
- 重复 m 次，用 $\hat{\theta} = \frac{1}{2m} \sum_{i=1}^{m}(\theta_{i}+ \theta_{i}^{+})$ 作为 Monte-Carlo 估计量


```

[[Wiki - 分布函数的逆]]

对偶变量法能保证估计量还是无偏的 [[Wiki - 无偏估计]]

## 3 控制变量法

与接受拒绝抽样思想一致，取 f 满足 $E[f(X)]=\mu$ 已知，则 $Y= g (X)+ c(f(X)-\mu)$ 还是 $\theta =E[g(X)]$ 的无偏估计 [[Wiki - 无偏估计]]

取 $c= - \frac{Cov[g(X), f(X)]}{Var[f(X)]}$ 时构造的 Y 方差最小，为

$$
Var[Y]= Var[g(X)]- \frac{Cov^{2}[g(X),f(X)]}{Var[f(X)]}
$$

方差缩减比为

$$
\frac{Var[g(X)]-Var[Y]}{Var[g(X)]}= Cor^{2}[g(X),f(X)]
$$

所以 $f(X)$ 和 $g(X)$ 相关性越大，方差降低的效果越明显。但缺点是需要已知 $\mu$，且需要进行 $Var[f(X)],Cov[g(X),f(X)]$ 的计算

## 4 重要抽样法

当 g 在支撑集上分布不均匀时会使估计方差较大，

$$
\theta = \int _{A} g(x) \, dx = \int _{A} \frac{g(x)}{f(x)} \, f(x) dx  
$$

若有随机变量支撑集为 A，有概率密度函数 f [[Wiki - 概率密度函数]]，则有
$\theta = E_{f}\left[ \frac{g(X)}{f(X)} \right]$，选取合适的 f，能让 monte-Carlo 的方差变小。


从概率密度为 f 的随机变量中抽取样本 $x_{1},\dots,x_{n}$，重要抽样估计量为
$$
\hat{\theta}= \frac{1}{n} \sum_{i=1}^{n} \frac{g(x_{i})}{f(x_{i})}
$$
$$
Var\left[ \frac{g(X)}{f(X)} \right] = \int _{A} \frac{g^{2}(x)}{f(x)} \, dx- \theta^{2} 
$$
由 cauchy 不等式 [[Wiki - Cauchy-Schwarz不等式]]，当取 $f (x)= \frac{|g(x)|}{\int _{A} g(x) \, dx}$ 时为概率密度函数，且估计的方差最小。但使用时不用选取这么准确的，要选与 $|g(x)|$ 足够接近的

## 5 分层抽样法

例如计算积分

$$
\begin{align}
\theta &= \int _{0}^{1}g(x) \, dx  \\
&= \frac{1}{4}\left(  4\int _{0}^{\frac{1}{4}}g(x) \, dx + 4\int _{\frac{1}{4}}^{\frac{1}{2}}g(x)\, dx +4\int _{\frac{1}{2}}^{\frac{3}{4}}g(x) \, dx+ 4\int _{\frac{3}{4}}^{1}g(x) \, dx    \right) \\
&= \frac{1}{4}(\theta_{1}+\theta_{2}+\theta_{3}+\theta_{4})
\end{align}
$$


将区间分成多层，分别从分布 $U \left(  0, \frac{1}{4}  \right)$， $U \left(  \frac{1}{4}, \frac{1}{2}  \right)$，$U\left(  \frac{1}{2}, \frac{3}{4} \right)$，$U\left( \frac{3}{4}, 1 \right)$ 中抽取 $\frac{m}{4}$ 个样本分别求 Monte-Carlo 估计 $\hat{\theta}_{j}= \frac{4}{m} \sum_{i=1}^{\frac{m}{4}} g(U_{i}^{(j)}),j=1,2,3,4$

得到最终分层抽样估计量
$$
\hat{\theta}= \frac{1}{4}\sum_{j=1}^{4}\hat{\theta}_{j}=\frac{1}{4}\sum_{j=1}^{4}\sum_{i=1}^{\frac{m}{4}}g(U_{i}^{(j)})
$$
方差会更小