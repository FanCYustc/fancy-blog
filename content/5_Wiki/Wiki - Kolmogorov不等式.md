---
aliases: 
info: kolmogorov不等式
date: 2023-12-18-星期一 10:52
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 概率论/极限理论
  - 不等式
id: wiki20231218105242
banner: "![[astrowalk.gif]]"
---
---

## The 1 Kolmogorov 不等式

```ad-theorem
title: Theorem 1


$X_{n}$ 为相互独立的 rv 序列

$$\begin{aligned}

&\operatorname{E}X_k=0,\quad\operatorname{E}X_k^2<\infty,\quad|X_k|\leq c\leq\infty,\quad k=1,\ldots,n, \\
& \text{记 }S_k=\sum_{i=1}^kX_i\text{,则对 }\forall\epsilon>0,  \\
&1-\frac{(c+\epsilon)^2}{\sum_{k=1}^n\operatorname{E}X_k^2}\leq\mathcal{P}\left(\max_{1\leq k\leq n}|S_k|\geq\epsilon\right)\leq\frac1{\epsilon^2}\sum_{k=1}^n EX_k^2
\end{aligned}$$

且右侧不等式不需要条件 $\mid X_{k}\mid\leq c$


```

[[Wiki - 数学期望]]、[[Wiki - 随机变量]]

[[Wiki - 随机变量的矩]]
### Proof

#### 右侧不等式

记
$$\begin{gathered}
A_n =\left\{\max_{1\leq k\leq n}|S_k|\geq\epsilon\right\}\\
B_{k} =\left\{\max_{1\leq j<k}|S_j|<\epsilon,S_k\geq\epsilon\right\},\quad k=2,\ldots,n, 
\end{gathered}$$

所以 $A_{n}= \cup B_{k},P(A_{n})=\sum_{k=1}^{n}P(B_{k})$ 

$$\begin{aligned}
\sum_{k=1}^n\mathbb{E}X_k^2&=\mathbb{E}S_n^2\geq\mathbb{E}\left[S_n^2I(A_n)\right]=\sum_{k=1}^n\mathbb{E}\left[S_n^2I(B_k)\right],\\
\mathbb{E}\left[S_n^2I(B_k)\right]&=\mathbb{E}\left[(S_n-S_k)^2I(B_k)\right]+\mathbb{E}\left[S_k^2I(B_k)\right]\geq\epsilon^{2}P\left(B_k\right).\\
\Longrightarrow\sum_{k=1}^n\mathbb{E}X_k^2&\geq\epsilon^2\sum_{k=1}^{n}P(B_k)=\epsilon^{2}P\left(A_n\right).
\end{aligned} 
$$

#### 左侧不等式

主要是对 $E[S_{n}^{2}I(A_{n})]$ 放缩

$$\begin{aligned}
\operatorname{E}\left[S_n^2I(A_n)\right]& =\sum_{k=1}^n\mathbb{E}\left[S_k^2I(B_k)+(S_n-S_k)^2I(B_k)\right]  \\
&\leq\quad\sum_{k=1}^n\left[(\epsilon+c)^2I(B_k)+\operatorname{E}(S_n-S_k)^2\cdot\operatorname{E}I(B_k)\right] \\
&\leq2(\epsilon+c)^2\mathcal{P}\left(A_n\right)+\mathcal{E}S_n^2\mathcal{P}\left(A_n\right);
\end{aligned}$$


$$\begin{aligned}
\operatorname{E}\left[S_n^2I(A_n)\right]& =\mathrm{~E}\left[S_n^2\right]-\mathrm{E}\left[S_n^2I(A_n^c)\right]  \\
&\geq\mathrm{~E}\left[S_n^2\right]-\epsilon^2\mathrm{E}\left[I(A_n^\mathsf{c})\right] \\
&=\mathrm{~E}\left[S_n^2\right]-\epsilon^2[1-\mathrm{P}\left(A_n\right)].
\end{aligned}$$

以它为过渡，整理得 $P(A_{n})$ 有

$$P(A_n)\geq\frac{\sum_{k=1}^n\mathbb{E}X_k^2-\epsilon^2}{(\epsilon+c)^2+\sum_{k=1}^n\mathbb{E}X_k^2-\epsilon^2}\geq1-\frac{(c+\epsilon)^2}{\sum_{k=1}^n\mathbb{E}X_k^2}.$$

