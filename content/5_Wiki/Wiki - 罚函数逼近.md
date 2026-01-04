---
aliases: 
info: 
date: 2025-06-11-星期三 17:53
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
  - 回归分析
id: wiki20250611175320
banner: "![[astrowalk.gif]]"
---
---

## Def 1 罚函数逼近

```ad-definition
title: 定义
**罚函数逼近问题**推广了范数逼近：
$$
\begin{array}{ll}
\text{minimize} & \sum_{i=1}^m \phi(r_i) \\
\text{subject to} & r = A x - b
\end{array}
$$
其中 $\phi: \mathbb{R} \to \mathbb{R}$ 为**罚函数**，需满足：
- $\phi$ 凸、对称、非负
- $\phi(0) = 0$
```

[[Wiki - 凸函数]]

[[Wiki - 范数]]

**常见罚函数及性质：**

1. **$l_p$ 罚函数** ：$\phi(u) = |u|^p \quad (p \geq 1)$，对应 $l_p$ -范数逼近 [[Wiki - Lp线性空间]]
2. **死区线性罚函数**：$\phi(u) = \begin{cases} 0 & |u| \leq a \\ |u| - a & |u| > a \end{cases}$ 
3. **Huber 罚函数 (鲁棒)**：$\phi_{\text{hub}}(u) = \begin{cases} u^2 & |u| \leq M \\ M(2|u| - M) & |u| > M \end{cases}$。对野值鲁棒，凸近似
4. **对数障碍罚函数**：$\phi(u) = \begin{cases} -a^2 \log(1 - (u/a)^2) & |u| \leq a \\ \infty & |u| > a \end{cases}$ 近似二次罚函数，强制有界性。


```ad-note
title: 统计解释
罚函数逼近等价于**噪声的极大似然估计**：
- 若噪声 $\epsilon_i$ 的密度函数为 $p(z) \propto e^{-\phi(z)}$，则最小化 $\sum \phi(r_i)$ 即最大化似然函数。
- **例**：
  - $\phi(u) = u^2$ 对应高斯噪声（最小二乘）
  - $\phi(u) = |u|$ 对应拉普拉斯噪声（$l_1$-范数逼近）
```
