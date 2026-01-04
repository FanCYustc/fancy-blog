---
aliases: 
info: 线性泛函与欧式空间
date: 2023-08-04-星期五 11:29
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 泛函分析/线性算子
id: wiki20230804112903
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 

[[Scientech - 线性代数-欧几里得空间]]
## The 1 欧式空间 riesz 代表定理
[[Wiki - 欧几里得空间]]

[[Wiki - 内积]]

```ad-proposition
title: Propositon 1

Suppose V is finite-dimensional and $\varphi$ is a linear functional on V. Then there is a unique vector $u\in V$ such that

$$
\varphi(\nu)=\langle\nu,u\rangle 
$$

for every $v\in V$



```

[[Wiki - 线性算子]]

## The hilbert 空间的 riesz 代表定理

$H$ 是 Hilbert 空间 [[Wiki - Hilbert空间]]，$\forall f\in H^*$ [[Wiki - 有界线性算子]]（代表 H 的所有有界线性泛函）, 存在唯一 $y_f\in H$ 使得
$$f(x)=\langle x,y_f\rangle\:,x\in H$$


且 $||y_f||=||f||.$ [[Wiki - 线性算子的范数]]

### Proof

- 存在性：若 $f\equiv 0$ 则 $y_{f}=0$。

若 $f\neq 0$，则 $Ker (f) \neq H$ [[Wiki - 线性映射的像空间和核]]，于是存在 $y_{0}\in Ker (f)^{\perp},\|y_{0}\|=1$。

因为 $f\left( x- \frac{f(x)}{f(y_{0})}y_{0} \right)=0$，由线性泛函，所以 $x- \frac{f (x)}{f (y_{0})}y_{0}\in Ker(f)$

所以 $\langle x- \frac{f (x)}{f (y_{0})}y_{0}, y_{0}\rangle=0$，解得 $f (x)= \langle x, \overline{f (y_{0})}y_{0}\rangle$，取 $y_{f}= \overline{f(y_{0})}y_{0}$

- 唯一性：易证

因为 $\|f (x)\|=\|\langle x, y_{f}\rangle\| \leq \|x\| \cdot \|y_{f}\|$，又因为 $\|y_{f}\|= \|\overline{f (y_{0})}\|\leq \|f\|$，所以 $\|f\|=\|y_{f}\|$


## Cal 1 

H 为 hilbert 空间，$\alpha(\cdot,\cdot)$ 为共轭双线性泛函（[[Wiki - 酉空间]]中的性质 2），如果存在 C 使得 $|a (x, y)|\leq C\|x\|\|y\|,\forall x, y \in H$，则存在 H 上的线性变换[[Wiki - 线性映射|线性变换]] $A\in \mathcal{L}(H)$，使得 $\alpha (x, y)= \langle x, Ay\rangle$

且满足 $\|A\| = \sup_{0\neq x, y\in H} \frac{|\alpha(x,y)|}{\|x\|\cdot \|y\|}$

### Proof 

$\forall y\in H$，定义 $f_{y}(x)= \alpha (x, y), x\in H$

由 riesz 代表定理，存在唯一的 $z\in H, f_{y}(x)= \langle x, z\rangle$，且 $\|z\|=\|f_{y}\|$

证明 $A: H\to H, y\to z$ 是线性变换：A 是线性的，且 $\|Ay\|=\|z\|=\|f_{y}\|\leq C\|y\|$，所以 A 有界。

再另一方面

$|\alpha (x, y)|=|\langle x, Ay\rangle|\leq \|x\|\|A\|\|y\|$，所以 $\|A\|= \sup_{0\neq x, y\in H} \frac{\alpha(x,y)}{\|x\|\|y\|}$

