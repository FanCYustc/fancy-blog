---
aliases: 
info: 二重积分可积判定，性质
date: 2023-04-28-星期五 22:42
update: 
tags:
  - wiki/year2023
  - wiki/month04
  - 数学分析/积分
id: wiki20230428224223
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## The 1

设 $f(x, y)$ 在 Jordan 可测集 $D$ 上**有界.**

$1^{\circ} f(x, y)$ 在 $D$ 上可积的充分必要条件是 Darboux 上和的下确界与 Darboux 下和的上确界相等, 或者 $\inf _T\{\omega(T)\}=0$[[Wiki - 二重Riemann可积#Def2 达布和]]


$2^{\circ}$ 如果 $f(x, y)$ 在 $D$ 上连续, 那么在 $D$ 上可积. 如果 $f(x, y)$ 的**不连续的点分布在 $D$ 中可测的且测度为零** [[Wiki - 平面区域的面积#Def4 零测]] 的点集 (如 $D$ 中有限个孤立的点, 或者有限条光滑的曲线) 上, 那么 $f(x, y)$ 在 $D$ 上也可积.

**等价表述**：对可测集 D，有界函数 f 在 D 上 Riemann 可积当且仅当对任意 $\delta, D_{\delta}(f)=\{P\in D|\omega_{f}(P)\geq \delta\}$ 是零测集[[Wiki - 函数的振幅]]


$3^{\circ}$ 如果在 $D$ 上使 $f(x, y) \neq g(x, y)$ 的点分布在 $D$ 中测度为零的点集上, 那么 $f(x, y)$ 和 $g(x, y)$ 在 $D$ 上有相同的可积性. 可积时有
$$
\int_D f=\int_D g
$$

### Proof：

#### 第二个







#### 证明第三个：

等价于f is 可积函数，有界，D 是零测集 [[Wiki - 平面区域的面积#Def4 零测]] ，则 $\int_{D} f \, d\sigma = 0$

由于零测，$D \subset \cup I_{i}$ ，且 $\sum \sigma(I_{i})<\epsilon$ ，取 $D_{i}=D\cap I_{i} , T={D_{i}}$
So 
$$
\mid S(D,T)\mid =\mid \sum f(P_{i})\sigma(D_{i})\mid \leq M\sum \sigma^{+}(D_{i})<M\epsilon
$$

其中 $M=sup{\{f\}}$


[[Wiki - Riemann积分的基本性质]]