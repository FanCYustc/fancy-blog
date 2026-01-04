---
aliases: 
info: 
date: 2024-03-22-星期五 11:45
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 统计算法
  - 数理统计/点估计
id: wiki20240322114516
banner: "![[astrowalk.gif]]"
---
---

## The 1 EM 算法

思想：在似然估计是，似然函数不好求极值。但如果把样本看做有一部分数据 y 缺失我们没有看到，如果把 y 加进来似然函数就好求。

[[Wiki - 极大似然估计]]

记观测到的数据为 $X_{obs}$，缺失数据为 $X_{miss}$，要求极大似然估计 [[Wiki - 极大似然估计]]
$$
\hat{\theta}= \arg\max_{\theta} l(\theta|X_{obs})
$$
1、初始化 $\theta_{0}$

2、E-step：如果已知缺失数据的条件分布为 $f(X_{miss}| \theta^{(t)}, X_{obs})$，求

$$
Q( \theta, \theta^{(t)})=E_{X_{miss}|\theta,X_{obs}}[l( \theta| X_{obs},X_{miss})] = \int f(x_{miss}|\theta^{(t)},X_{obs}) l(\theta| X_{obs}, x_{miss}) \, dx_{miss} 
$$

3、M-step：迭代
$$
\theta^{(t+1)}= \arg\max_{\theta} Q( \theta, \theta^{(t)})
$$

重复 $t=1,2,\dots$

### Example

对于混合正态分布
$$
f(x| \theta)= \sum_{k=1}^{K}\pi_{k}f_{k}(x),\sum_{k=1}^{K}\pi_{k}=1, f_{k}\sim N( \mu_{k}, \sigma^{2})
$$

其中参数 $\theta= (\mu_{1},\dots,\mu_{K}, \pi_{1},\dots,\pi_{k}, \sigma^{2})$

引入 $X_{miss}$ 为 $J_{i}\in \{1,..,K\}$，期中 $P (J_{i}= k)= \pi_{k}$，且 $x_{i}|J_{i}= k\sim N(\mu_{k},\sigma^{2})$，则此时似然函数可以表示为

$$
\begin{align*} &\ell(\theta \mid x_{i}, J_{i}, i = 1,..., n) \\ =&\sum_{k=1}^{K} \sum_{i=1}^{n} I(J_{i} = k) \log\{\pi_{k}f_{k}(X_{i})\} \\ =&\sum_{k=1}^{K} \sum_{i=1}^{n} I(J_{i} = k) \log(\pi_{k}) -\frac{1}{2} \sum_{k=1}^{K} \sum_{i=1}^{n} I(J_{i} = k)\{\log \sigma^{2} + (x_{i} - \mu_{j})^{2}/\sigma^{2}\} + C \\
\end{align*}
$$

E-step：

此时 $J_{i}$ 的条件分布为
$$
E(I(J_{i} = k) | x_{i}, \theta^{(t)}) = P(J_{i} = k | x_{i}, \theta^{(t)}) = \frac{\pi_{k}^{(t)} f_{k}^{(t)}(x_{i})}{\sum_{k=1}^{K} \pi_{k}^{(t)} f_{k}^{(t)} (x_{i})}  := p_{ik}^{(t)} 
$$

则 Q 函数为: 
$$
Q(\theta | \theta^{(t)}) =\sum_{k=1}^{K} \sum_{i=1}^{n} p_{ik}^{(t)} \log(\pi_{k}) - \frac{1}{2} \sum_{k=1}^{K} \sum_{i=1}^{n} p_{ik}^{(t)} \left( \log \sigma^2 + \frac{(x_{i} - \mu_{j})^2}{\sigma^{2}} \right) + C
$$

M-step：最大化 Q 函数得到

$$
\begin{align}
&\pi_{k}^{(t+1)}= \frac{1}{n} \sum_{i=1}^{n}p_{ik}^{(t)} \\
& \mu_{k}^{(t+1)}= \frac{{\sum_{i=1}^{n}}p_{ik}^{(t)}x_{i}}{\sum_{i=1}^{n}p_{ik}^{(t)}} \\
& (\sigma^{2})^{(t+1)} = \sum_{k=1}^{K}\sum_{i=1}^{n} \frac{1}{n} p_{ik}^{(t)}(x_{i}- \mu_{k}^{(t+1)})^{2}
\end{align}
$$

可以用此方法进行聚类

$$
x_{i}\in \arg\max_{k} p_{ik}^{(t)}
$$

## Pro 1

$l( \theta^{(t)}|x)$ 在 EM 算法迭代中关于 t 单调非减

### Proof

用 [[Wiki - Jensen不等式]]

## The 2 广义 EM 算法

由于

$$
l(\theta|X)- l( \theta^{(t)}|X)\geq Q( \theta|\theta^{(t)})- Q( \theta^{(t)}|\theta^{(t)})
$$

恒成立。只需要找到 $\theta^{(t+1)}$ 使得

$$
Q( \theta^{(t+1)}|\theta^{(t)})\geq Q( \theta^{(t)}| \theta^{(t)})
$$

即可保证似然函数单调不减，称为广义 EM 算法

