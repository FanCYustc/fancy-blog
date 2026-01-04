---
aliases: Additive interval functions and the intgral
info: 另一种定义积分的方式
date: 2023-01-11-星期三 22:39
update: 2023-01-11-Wednesday 22:55:58
tags:
  - wiki/year2023
  - wiki/month01
id: wiki20230111223923
banner: "![[astrowalk.gif]]"
---
---

#### Definition：
For $(\alpha,\beta)$, I $(\alpha,\beta)$ represent to a number. We say I is additive if in such a way that the following equality holds for any $\alpha,\beta,\delta\in[a,b]$ :
$$
I(\alpha,\delta)=I(\alpha,\beta)+I(\beta,\delta)
$$
#### Proposition:
**Proposition 1** Suppose the additive function  $I (\alpha, \beta)$ defined for points  $\alpha, \beta$  of a closed interval  [a, b]  is such that there exists a function  $f \in \mathcal{R} [a, b]$  connected with I as follows: the relation
$$
\inf _{x \in[\alpha, \beta]} f (x)(\beta-\alpha) \leq I (\alpha, \beta) \leq \sup _{x \in[\alpha, \beta]} f (x)(\beta-\alpha)
$$
holds for any closed interval  $[\alpha, \beta]$  such that  $a \leq \alpha \leq \beta \leq b$ . Then

$I (a, b)=\int_{a}^{b} f (x) d x$


**Proof:** Let  P  be an arbitrary partition  $a=x_{0}<\cdots<x_{n}=b$  of the closed interval  [a, b] , let  $m_{i}=\inf _{x \in\left[x_{i-1}, x_{i}\right]} f (x)$ , and let  $M_{i}=\sup _{x \in\left[x_{i-1}, x_{i}\right]} f (x)$ .
For each interval  $\left[x_{i-1}, x_{i}\right]$  of the partition  P  we have by hypothesis

$m_{i} \Delta x_{i} \leq I\left (x_{i-1}, x_{i}\right) \leq M_{i} \Delta x_{i}$

Summing these inequalities and using the additivity of the function  $I (\alpha, \beta)$ , we obtain

$\sum_{i=1}^{n} m_{i} \Delta x_{i} \leq I (a, b) \leq \sum_{i=1}^{n} M_{i} \Delta x_{i}$

 As  $\lambda (P) \rightarrow 0$  they both have the integral of  f  over the closed interval  [a, b]  as their limit. (由积分的上下积分定义) Thus, passing to the limit as  $\lambda (P) \rightarrow 0$ , we find that

$I (a, b)=\int_{a}^{b} f (x) \mathrm{d} x$
