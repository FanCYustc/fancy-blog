---
aliases:
  - 检验水平
  - 假设检验的两类错误
info: 
date: 2024-06-22-星期六 12:20
update: 
tags:
  - wiki/year2024
  - 数理统计/假设检验
  - wiki/month04
id: wiki20240622122042
banner: "![[astrowalk.gif]]"
---
---

## Def 1 功效函数

假设 $\varphi(x)$ 是检验问题 $H_0\longleftrightarrow H_1$ 的检验函数[[Wiki - 检验函数]]，则称用检验 $\varphi$ 否定了零假设 $H_{0}$ 的概率是 $\varphi$ 的功效函数 $\beta_\varphi$
在参数假设检验中 $H_0:\theta\in\Theta_0\longleftrightarrow H_1:\theta\in\Theta_1$, 若 $\varphi$ 是非随机化检验，且拒绝域为 $W$, 那么
$$\beta_\varphi(\theta)=P_\theta\{X\in W\},\quad\theta\in\Theta.$$
功效函数可以用来计算犯两类错误的概率。

1. 第一类：$\alpha^*(\theta)=\beta_\varphi(\theta)I_{\{\theta\in\Theta_0\}}.$

2. 第二类：$\beta^*(\theta)=1-\beta_\varphi(\theta)I_{\{\theta\in\Theta_1\}}.$

功效函数是关于参数 $\theta\in \Theta$ 的函数

## Def 2 检验水平

A test $\phi_T$ is  **exact  size**（称为真实检验水平） $\alpha$ (sometimes does not exist) if

$$
\sup_{\theta\in\Theta_0}\beta_{\phi_T}(\theta)=\alpha.
$$

A test $\phi_T$ is **level** $\alpha$ (always exists) if

$$
\beta_{\phi_T}(\theta)\leq\alpha 
$$

$\theta\in\bar{\Theta}_0$


## Def 3 两类错误

第一类错误指 $H_{0}$ 对，但观察值落入否定域，将原假设错误否定了。犯第一类错误的概率为
$$
\alpha_{\varphi}^{*}(\theta)= \begin{cases}
\beta_{\varphi}(\theta), \quad \theta\in \Theta_{0} \\
0, \quad \theta\in \Theta_{1}
\end{cases}
$$

第二类错误值 $H_{0}$ 不对，但观察值落到接受域中，使得接受了错误的假设，犯第二类错误的概率为
$$
\beta_{\varphi}^{*}(\theta) = \begin{cases}
0, \quad \theta\in \Theta_{0} \\
1-\beta_{\varphi}( \theta), \quad \theta\in \Theta_{1}
\end{cases}
$$

