---
aliases: 
info: Stirling公式及证明
date: 2023-07-01-星期六 16:02
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230701160259
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## Proof

要研究 n！ 的增长速度，即

$$
\sum ^{n}_{k=1}\ln k\sim \int ^{n}_{1}\ln xdx=n\ln n-n+1
$$

但离散的和积分还是有较大误差，对每两个整数之间的一段分析

$$
\begin{aligned}I_{k}=\int _{k-1}^{k}\ln xdx\\

\ln \left( n-1\right) !=\sum ^{n}_{k=2}\ln \left( k-1\right)  <\sum ^{n}_{k=2}I_{k} <\sum ^{n}_{k=1}\ln k=\ln \left( n!\right) \\

\ln \left( n!\right) -\ln \left( n-1\right) !\rightarrow \infty \end{aligned}
$$


误差无界，放缩过头

由于 $lnx$ 是凹函数

$$
\begin{aligned}\dfrac{1}{2} \left ( \ln k+\ln \left ( k-1\right) \right)  <I_{k} <\ln \left ( k-\dfrac{1}{2}\right) \\

\dfrac{1}{2}\sum ^{n-1}_{k=1}\ln \left ( k+1\right) k <\sum ^{n}_{k=2}I_{k} <\sum ^{n-1}_{k=1}\ln \left ( k+\dfrac{1}{2}\right) \end{aligned}
$$

$$
\begin{aligned}RHS-LHS=\dfrac{1}{2}\sum ^{n-1}_{k=1}\left ( \ln \dfrac{k+\dfrac{1}{2}}{k}-\ln \dfrac{k+1}{k+\dfrac{1}{2}}\right) \\

 <\dfrac{1}{2}\sum ^{n-1}_{k=1}\left ( \ln \left ( 1+\dfrac{1}{2k}\right) -\ln \left ( 1+\dfrac{1}{2k+2}\right) \right)  <\dfrac{1}{2}\times \ln \dfrac{3}{2}\end{aligned}
$$


此时误差有界

用已知增长速度的级数形容 n!

记

$$
\begin{aligned}A_{n}=\dfrac{1}{2}\sum ^{n-1}_{k=1}\ln k\times \left ( k+1\right) =\ln n!-\dfrac{1}{2}\times \ln n\\

a_{n}=n\ln n-n+1-A_{n}\end{aligned}
$$


可证明 an 单调递增且有界，设其极限为 a

$$
\begin{aligned}n\ln n-n+1-\ln n!+\dfrac{1}{2}\times \ln n\rightarrow a\\

\dfrac{n^{n}}{e^{n}}\times \dfrac{\sqrt{n}}{n!}\rightarrow e^{a-1}\end{aligned}
$$

虽然知道收敛，但还要估计每个 an

$$
\begin{aligned}a-a_{n}=\lim _{k\rightarrow +\infty }\left ( a_{n+k}-a_{n}\right) =\sum ^{\infty }_{p=1}\left ( a_{n+p}-a_{n+p-1}\right) \\

 <\dfrac{1}{2} \ln \left ( 1+\dfrac{1}{2n}\right)  <\dfrac{1}{4n}\end{aligned}
$$

所以可以设


$$
\begin{aligned}a-a_{n}=\dfrac{\theta _{n}}{4n}\\

\theta _{n}\in \left ( 0, 1\right) \end{aligned}
$$

$$
\begin{aligned}e^{a_{n}}=\left ( \dfrac{n}{e}\right) ^{n}\cdot e\cdot \dfrac{\sqrt{n}}{n!}\\

n!=\sqrt{n}\times \left ( \dfrac{n}{e}\right) ^{n}\cdot e^{1-a_{n}}=\sqrt{n}\times \left ( \dfrac{n}{e}\right) ^{n}\times e^{1-a}\cdot e^{\dfrac{\theta n}{4n}}\end{aligned}
$$


下面要求出 a

### Lemma：

Wallis 引理：
```ad-lemma
title: Lemma 1


记 2n!! 与 (2n-1)!! 分别表示前 $n$ 个偶数和前 $n$ 个奇数的连续乘积，则
$$\begin{aligned}\frac{\pi}{2}&=\lim_{n\to\infty}\frac{1}{2n+1}\left[\frac{2n!!}{(2n-1)!!}\right]^2\end{aligned}$$


```
#### Proof 

因为当 $0 < x < \frac{\pi }{2}$ 时成立
$$
{\sin }^{{2n} + 1}x < {\sin }^{2n}x < {\sin }^{{2n} - 1}x
$$
积分得 
$${\int }_{0}^{\frac{\pi }{2}}{\sin }^{{2n} + 1}{xdx} < {\int }_{0}^{\frac{\pi }{2}}{\sin }^{2n}{xdx} < {\int }_{0}^{\frac{\pi }{2}}{\sin }^{{2n} - 1}{xdx}
$$

所以 
$$\frac{{2n}!!}{\left( {{2n} + 1}\right) !!} < \frac{\left( {{2n} - 1}\right) !!}{{2n}!!}\frac{\pi }{2} < \frac{\left( {{2n} - 2}\right) !!}{\left( {{2n} - 1}\right) !!}
$$

即 
$${\left\lbrack  \frac{{2n}!!}{\left( {{2n} - 1}\right) !!}\right\rbrack  }^{2}\frac{1}{{2n} + 1} < \frac{\pi }{2} < {\left\lbrack  \frac{{2n}!!}{\left( {{2n} - 1}\right) !!}\right\rbrack  }^{2}\frac{1}{2n}
$$

若令 ${a}_{n} = {\left\lbrack  \frac{{2n}!!}{\left( {{2n} - 1}\right) !!}\right\rbrack  }^{2}\frac{1}{{2n} + 1},\;{b}_{n} = {\left\lbrack  \frac{{2n}!!}{\left( {{2n} - 1}\right) !!}\right\rbrack  }^{2}\frac{1}{2n}$，则容易得出 $\left\{  {a}_{n}\right\}$ 是递增数列, $\left\{  {b}_{n}\right\}$ 是递减数列, 且
$$
{b}_{n} - {a}_{n} = \frac{1}{{2n}\left( {{2n} + 1}\right) }{\left\lbrack  \frac{{2n}!!}{\left( {{2n} - 1}\right) !!}\right\rbrack  }^{2} < \frac{\pi }{2}\frac{1}{2n}
$$

$$
\begin{aligned}b_{n}=e^{1-a_{n}}=\dfrac{n!}{\sqrt{n}\times \left ( \dfrac{n}{e}\right) ^{n}}\\

\dfrac{b_{n}^{2}}{b_{2n}}=\dfrac{\left ( n!\right) ^{2}}{\left ( 2n\right) !}\cdot \dfrac{2^{2n}\times \sqrt{2}}{\sqrt{n}}\rightarrow e^{1-a}\\

=\dfrac{\left ( \left ( 2n\right) !!\right) ^{2}}{\left ( 2n\right) !}\times \sqrt{\dfrac{2}{n}}=\dfrac{\left ( 2n\right) !!}{\left ( 2n-1\right) !!}\cdot \sqrt{\dfrac{2}{n}}\rightarrow \sqrt{2 \pi }\end{aligned}
$$
最后一步由引理。所以

$$
n!=\sqrt{2n\pi }\times \left ( \dfrac{n}{e}\right) ^{n}\times e^{\frac{\theta _{n}}{4n}}
$$

## Pro 1 Stirling 公式

在对数时进行更严格的放缩可以得到更优的

```ad-theorem
title: Theorem 1


$$
n!=\sqrt{2n\pi }\times \left ( \dfrac{n}{e}\right) ^{n}\times e^{\dfrac{\theta _{n}}{12n}}
$$



```
