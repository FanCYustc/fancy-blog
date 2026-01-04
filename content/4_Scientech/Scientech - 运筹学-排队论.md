---
aliases: 
info: 24春运筹学第2章
date: 2024-03-08-星期五 07:56
update: 
tags:
  - scientech/year2024
  - scientech/month03
  - 运筹学/排队论
  - 随机过程
id: scientech20240308075636
banner: "![[astrofishing.gif]]"
---
---

[[运筹学 by 《运筹学》教材编写组-第三版.pdf]]

# 第 2 章-排队论

```ad-note


排队论研究的主要是稳态解，即极限时的性质

```



## 2.1 排队论准备知识


**Kendall 符号** X/Y/Z/A/B/C

- X 表示顾客源分布
- Y 表示服务时间分布
- Z 表示服务台个数
- A 表示队列容量限制
- B 表示顾客源限制
- C 表示服务顺序规则

特别约定，如果略去后三项，表示 X/Y/Z/ $\infty / \infty$ /FCFS (先进先出)

更多符号说明：$\lambda_{n}$ 表示系统有 n 个顾客时，单位时间到达顾客数。$\mu_{n}$ 表示系统 n 个顾客时，单位时间服务顾客数。则 $\frac{1}{\lambda_{n}}$ 和 $\frac{1}{\mu_{n}}$ 是平均时间间隔。

$N(t)$ 表示系统 t 时刻的顾客数，$P_{n}(t)=P(N(t)=n)$

$W_{s}$ 为等待+服务时间的期望；$W_{q}$ 为等待时间的期望。

$L_{s}$ 系统平均顾客数，$L_{q}$ 为平均队长

$\rho$ 为服务台累计 服务时间对总时长的占比，称为服务强度

## 2.2 生灭过程和 poison 过程

### Poison 过程

[[Scientech - 随机过程-poison过程]]

[[Wiki - Erlang分布]]

[[Wiki - 连续时间markov链的平稳分布]]作为排队论研究的基础，研究的都是平稳后的连续时间 markov 链

## 2.3 单服务台

### M/M/1

$$
\frac{dP_{n}(t)}{dt} = \lambda P_{n-1}(t)+\mu P_{n+1}(t)-(\lambda+\mu)P_{n}(t)
$$

$t\to \infty$ 时稳定，有 $\mu P_{n+1}+\lambda P_{n-1}-(\lambda+\mu)P_{n}=0$ 的稳定递推方程

**指标计算公式：**
服务强度 $\rho = \lambda / \mu < 1$。
- **稳态概率**：
  $$ P_0 = 1 - \rho, \quad P_n = (1-\rho)\rho^n $$
- **运行指标**：
  - 系统平均顾客数：$L_s = \frac{\lambda}{\mu - \lambda} = \frac{\rho}{1-\rho}$
  - 平均队长：$L_q = \frac{\rho \lambda}{\mu - \lambda} = \frac{\rho^2}{1-\rho} = L_s - \rho$
  - 平均逗留时间：$W_s = \frac{1}{\mu - \lambda} = \frac{L_s}{\lambda}$
  - 平均等待时间：$W_q = \frac{\rho}{\mu - \lambda} = \frac{L_q}{\lambda} = W_s - \frac{1}{\mu}$

### M/M/1/N/ $\infty$
系统容量为 $N$，当系统中有 $N$ 个顾客时，新顾客被拒绝。
- **稳态概率**：
  $$ P_0 = \frac{1-\rho}{1-\rho^{N+1}} (\rho \neq 1), \quad P_n = \rho^n P_0 \quad (n \le N) $$
  若 $\rho=1$, $P_0 = \frac{1}{N+1}$.
- **运行指标**：
  - 有效到达率：$\lambda_e = \lambda(1-P_N)$
  - 系统平均顾客数：$L_s = \frac{\rho}{1-\rho} - \frac{(N+1)\rho^{N+1}}{1-\rho^{N+1}}$
  - 平均队长：$L_q = L_s - (1-P_0)$ 
  - 平均逗留时间：$W_s = \frac{L_s}{\lambda_e}$
  - 平均等待时间：$W_q = \frac{L_q}{\lambda_e}$


### M/M/1/ $\infty$ /m
顾客源有限，总数为 $m$。到达率依赖于状态 $\lambda_n = \lambda(m-n)$。
- **稳态概率**：
  $$ P_0 = \left[ \sum_{k=0}^m \frac{m!}{(m-k)!} (\frac{\lambda}{\mu})^k \right]^{-1}, \quad P_n = \frac{m!}{(m-n)!} (\frac{\lambda}{\mu})^n P_0 $$
- **运行指标**：
  - 系统平均顾客数：$L_s = m - \frac{\mu}{\lambda}(1-P_0)$
  - 平均队长：$L_q = m - \frac{\mu+\lambda}{\lambda}(1-P_0)$
  - 有效到达率：$\lambda_e = \lambda(m-L_s)$
  - 平均逗留时间：$W_s = L_s / \lambda_e$
  - 平均等待时间：$W_q = L_q / \lambda_e$


## 2.4 多服务台

### M/M/c/$\infty$/$\infty$
$c$ 个服务台，服务强度 $\rho = \frac{\lambda}{c\mu} < 1$。
- **稳态概率**：
  $P_0 = \left[ \sum_{n=0}^{c-1} \frac{(c\rho)^n}{n!} + \frac{(c\rho)^c}{c!(1-\rho)} \right]^{-1}$
  $L_q = \frac{(c\rho)^c \rho}{c!(1-\rho)^2} P_0$
- **运行指标**：
  - 平均队长：$L_q$ 如上。
  - 系统平均顾客数：$L_s = L_q + c\rho$
  - 平均逗留时间：$W_s = L_s / \lambda$
  - 平均等待时间：$W_q = L_q / \lambda$

### M/M/c/N/ $\infty$
- **稳态概率** ($\rho = \lambda/(c\mu)$):
  $$ P_0 = \left[ \sum_{n=0}^c \frac{(c\rho)^n}{n!} + \frac{(c\rho)^c}{c!} \sum_{n=c+1}^N \rho^{n-c} \right]^{-1} $$
- **运行指标**：
  - 平均队长：$L_q = \frac{P_0 (c\rho)^c \rho}{c!(1-\rho)^2} [1-\rho^{N-c} - (N-c)\rho^{N-c}(1-\rho)]$
  - 有效到达率：$\lambda_e = \lambda(1-P_N)$
  - 系统平均顾客数：$L_s = L_q + c\rho(1-P_N) = L_q + \lambda_e / \mu$
  - 平均逗留/等待时间：$W_s = L_s / \lambda_e, \quad W_q = L_q / \lambda_e$

### M/M/c/ $\infty$ /m
有限顾客源 $m$ ($m>c$)。
- **稳态概率**：
  $$ P_0 = \left[ \sum_{n=0}^{c-1} \binom{m}{n} (\frac{\lambda}{\mu})^n + \sum_{n=c}^{m} \binom{m}{n} \frac{n!}{c! c^{n-c}} (\frac{\lambda}{\mu})^n \right]^{-1} $$
- **运行指标**：
  - 平均队长：$L_q = \sum_{n=c+1}^m (n-c)P_n$
  - 有效到达率：$\lambda_e = \lambda(m-L_s)$
  - 系统平均顾客数：$L_s = L_q + \lambda_e / \mu$
  - 平均逗留/等待时间：$W_s = L_s / \lambda_e, \quad W_q = L_q / \lambda_e$

## 2.5 一般的排队过程

### M/G/1
服务时间 $T$ 服从任意分布，期望 $E[T]=1/\mu$，方差 $Var[T]$。
- **Pollaczek-Khintchine (P-K) 公式**：
  $$ L_s = \rho + \frac{\rho^2 + \lambda^2 Var[T]}{2(1-\rho)} $$
  其中 $\rho = \lambda E[T]$.
- **运行指标**：
  - 平均队长：$L_q = L_s - \rho$
  - 平均逗留时间：$W_s = W_q + E[T]$
  - 平均等待时间：$W_q = L_q / \lambda$

## 2.6 排队问题的优化

