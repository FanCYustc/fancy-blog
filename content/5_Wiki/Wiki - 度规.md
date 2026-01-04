---
aliases:
  - Minkowski泛函
  - 均衡集
  - 吸收集
info: 
date: 2024-11-13-星期三 10:45
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 几何学
  - 泛函分析/线性算子
id: wiki20241113104543
banner: "![[astrowalk.gif]]"
---
---

## Def 1 吸收

对向量空间[[Wiki - 一般线性空间|向量空间]] X，$C \subset X$，若 $\forall x\in C,\exists t>0$，使得 $\frac{x}{t}\in C$，就称 C 是吸收的。

## Def 2 Minkowski 泛函

对向量空间 X，C 是**包含 0 的凸集**[[Wiki - 凸集]]，定义 $P_{C}: X\to [0,+\infty), P_{C}(x)= \inf\left\{ t>0| \frac{x}{t}\in C \right\}$，称为 C 的 Minkowski 泛函，或者**度规**

其中 $P_{C}(x)=+\infty\leftrightarrow \left\{ t>0| \frac{x}{t}\in C \right\}= \emptyset$

## Pro 1

Minkowski 泛函有如下性质：
1. $P_{C}(x)\geq 0, P_{C}(0)=0$
2. 正齐次性：$P_{C}(tx)= tP_{C}(x), \forall x\in C, t>0$
3. 次可加性：$P_{C}(x+y)\leq P_{C}(x)+P_{C}(y)$

与范数 [[Wiki - 范数]]有一点区别，由于可能取无穷，$P_{C}$ 不一定是次线性泛函


## Def3 均衡

向量空间 X，C 是包含 0 的凸集，如果 $\forall x\in C,\theta\in \mathbb{R}, e^{i\theta}x\in C$，就称 C 是均衡的
## Pro 2 

复向量空间中的每个均衡吸收的凸集都决定了复向量空间 X 的一个半范数[[Wiki - 次线性泛函|半范数]]

### Proof

由于吸收，所以不会有取到 $+\infty$ 的情况，$P_{c}$ 是次线性泛函 [[Wiki - 次线性泛函]]

由于均衡，所以 $P_{c}$ 又是半范数



