---
aliases: 
info: brown运动的重要性质
date: 2024-06-15-星期六 19:11
update: 
tags:
  - wiki/year2024
  - wiki/month06
  - 随机过程/brown运动
id: wiki20240615191132
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 击中时

$T_{a}= \inf\{t:X(t) =a, t\geq 0\}$ 定义为击中时

对于**标准 brown 运动**[[Wiki - brown运动]]

```ad-proposition
title: Propositon 1



$$\begin{aligned}
\mathrm{P}\left(X(t)\geq a\right)& =\quad\mathrm{P}\left(X(t)\geq a|T_a\leq t\right)\cdot\mathrm{P}\left(T_a\leq t\right)  \\
&+\mathrm{P}\left(X(t)\geq a|T_a>t\right)\cdot\mathrm{P}\left(T_a>t\right) \\
&=\frac12\mathrm{P}\left(T_a\leq t\right)
\end{aligned}$$

利用对称性。

所以 $P (T_{a}\leq t)= 2\left[ 1-\Phi\left(  \frac{a}{\sqrt{ t }} \right) \right]$

**密度函数：**
对 $t$ 求导可得 $T_a$ 的概率密度函数 (此处设 $a > 0$)：
$$ p_{T_a}(t) = \frac{a}{\sqrt{2\pi t^3}} e^{-\frac{a^2}{2t}}, \quad t > 0 $$

**Laplace 变换：**
$$ E[e^{-\alpha T_a}] = e^{-a\sqrt{2\alpha}}, \quad \alpha > 0 $$

还有 $P(T_{a}<\infty)=1$

对 $a>0$，$ET_{a}= +\infty$

由对称性，$T_a$与$T_{-a}$同分布
```

## Pro 2 最大值

设 $M_{t}= \sup_{0\leq s\leq t}B_{t}$

```ad-proposition
title: Propositon 2

$\forall a>0$，对标准brown运动

$$\text{P}\left(\max\limits_{0\leq s\leq t}X(s)\geq a\right)=\text{P}\left(T_a\leq t\right)=2\text{P}\left(X(t)\geq a\right).$$


```


也就是说， $M_{t}$ 与 $|B_{t}|$ 同分布[[Wiki - brown运动的最后离时|反正弦律]]

**联合分布：**
$W_t$ 与 $M_t$ 的联合概率密度为 (对于 $a \le b, b \ge 0$)：
$$ P(W_t \in da, M_t \in db) = \frac{2(2b-a)}{\sqrt{2\pi t^3}} \exp\left\{ -\frac{(2b-a)^2}{2t} \right\} da \, db $$

**过程等价性：**
Lévy 证明了过程 $Y_t = M_t - W_t$ 与反射布朗运动 $|W_t|$ 具有相同的分布（即它们是同分布的过程）。

[[Wiki - 反射原理]]

