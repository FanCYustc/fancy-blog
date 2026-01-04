---
aliases: 
info: holder不等式
date: 2023-11-02-星期四 15:29
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 不等式
  - 概率论/期望方差
id: wiki20231102152918
banner: "![[astrowalk.gif]]"
---
---

## The 1 holder 不等式

```ad-theorem
title: Theorem 1


$$\begin{aligned}&\text{设 }p>1\text{,}1/p+1/q=1\text{,}X\in\mathcal{L}_p\text{,}Y\in\mathcal{L}_q\text{,则}\\&\operatorname{E}|XY|\leq\left(\operatorname{E}|X|^p\right)^{1/p}\left(\operatorname{E}|Y|^q\right)^{1/q}.\end{aligned}$$


```
把期望变成一般的 lebesgue 积分也是一样的：

$$
\mid\mid fg\mid\mid_{1}\leq \mid \mid f\mid\mid_{p} \mid\mid g\mid\mid_{q},\forall f\in L^{p}(E),g\in L^{q}(E) 
$$

[[Wiki - Lp线性空间]]

### Proof

$$
\leftrightarrow \operatorname{E}\left[\left(\frac{|X|^p}{\operatorname{E}|X|^p}\right)^{1/p}\left(\frac{|Y|^q}{\operatorname{E}|Y|^q}\right)^{1/q}\right]\leq1.
$$

$$
\operatorname{E}\left[\left(\frac{|X|^p}{\operatorname{E}|X|^p}\right)\right]=1=\operatorname{E}\left[\left(\frac{|Y|^q}{\operatorname{E}|Y|^q}\right)\right]
$$

余下利用 $u^{\alpha}v^{\beta}\leq\alpha u+\beta v,0<\alpha<1,\alpha+\beta=1$ （**young 不等式**）

对于一般可测函数 f, g 的证明见[[实分析讲义-于树澄.pdf]] 第 13 节

