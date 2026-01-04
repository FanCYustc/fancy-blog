---
aliases: 
info: 待定系数法求特解
date: 2024-05-29-星期三 18:51
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
id: wiki20240529185146
banner: "![[astrowalk.gif]]"
---
---


二阶常系数非齐次线性微分方程的一般形式
$$y''+py'+qy=f(x)$$
由[[Wiki - 常系数齐次线性微分方程组的基解]]可知, 求解二阶常系数非齐次线性微分方程的通解, 归结为求对应齐次方程的通解和非齐次方程本身的一个特解

对应齐次方程的通解在常系数齐次线性微分方程得到解决, 所以这里只讨论求特解的方法. 



## The 1 待定系数法

这里讨论$f(x)$的两种形式
### $f(x)=e^{ \lambda x }P_{m}(x)$型
根据多项式与指数函数乘积的导数仍是多项式推测$y^*=R(x)e^{ \lambda x }$为特解, 推导略

特解形式为:$$y^*=x^kR_{m}(x)e^{ \lambda x }$$
其中$R_{m}(x)$y与$P_{m}(x)$t同次的多项式, $k\in\{0,1,2\}$根据特征方程根的数量决定

上述结论可推广至n阶

### $f(x)=e^{ \lambda x }[P_{l}(x)\cos(\omega x)+Q_{n}(x)\sin(\omega x)]$型
应用欧拉公式变为复指数求解, 推导略

特解形式为:$$y^*=x^{k}e^{ \lambda x }[R_{m}^{(1)}(x)\cos(\omega x)+R_{m}^{(2)}(x)\sin(\omega x)]$$
$R_{m}^{(1)}(x)$, $R_{m}^{(2)}(x)$ 是m次多项式, $m=max(l,n)$, $k$是特征方程中 $\lambda+\omega i$或$\lambda-\omega i$ 这两个根的重复次数(二阶只能取到$\{0,1\}$)

## The 2 算子法

引入微分算子 $D := \frac {d}{d x}$, 则 $n$ 阶常系数线性微分方程可以写成 $L(D)y = f(x)$ 的形式，其中 $L(D)$ 是算子多项式。
方程的一个特解可以表示为 $y^* = \frac{1}{L(D)} f(x)$，其中 $\frac{1}{L(D)}$ 是 $L(D)$ 的逆算子。[[Wiki - 微分方程算子法]]

### 基本性质
1.  **线性性质**: $\frac {1}{L (D)} (\alpha u (x) + \beta v (x)) = \alpha \frac {1}{L (D)} u (x) + \beta \frac {1}{L (D)} v (x)$
2.  **算子分解**: 若 $L(D) = L_{1}(D)L_{2}(D)$，则 $\frac {1}{L (D)} f (x) = \frac {1}{L _ {1} (D)} \left[ \frac {1}{L _ {2} (D)} f (x) \right]$

### 常用公式
1.  **积分公式**: $\frac{1}{D} f(x) = \int f(x)dx$，$\frac{1}{D^k} f(x)$ 为 $k$ 次不定积分。
2.  **移位公式 1**: $\frac{1}{D - a} f(x) = e^{ax}\int e^{-ax}f(x)dx$。
3.  **移位公式 2**: $\frac {1}{L (D)} \left[ e ^ {\gamma x} f (x) \right] = e ^ {\gamma x} \frac {1}{L (D + \gamma)} f (x)$。
4.  **指数函数特解**: 
    *   若 $L(\gamma) \neq 0$，则 $\frac{1}{L(D)} e^{\gamma x} = \frac{e^{\gamma x}}{L(\gamma)}$。
    *   若 $\gamma$ 是 $s$ 重特征根，即 $L(D) = (D - \gamma)^{s}L_{1}(D)$ 且 $L_{1}(\gamma) \neq 0$，则 $\frac {1}{L (D)} e ^ {\gamma x} = \frac {x ^ {s}}{s ! L _ {1} (\gamma)} e ^ {\gamma x}$。
5.  **三角函数特解**:
    *   若 $L(i\beta) \neq 0$，则 $\frac {1}{L (D)} \cos \beta x = \operatorname {R e} \frac {e ^ {i \beta x}}{L(i\beta)}$, $\frac {1}{L (D)} \sin \beta x = \operatorname {I m} \frac {e ^ {i \beta x}}{L(i\beta)}$。
    *   特别地，若 $L(D) = M(D^2)$ 且 $M(-\beta^2) \neq 0$，则 $\frac{1}{M(D^2)} \cos \beta x = \frac{\cos \beta x}{M(-\beta^2)}$，$\frac{1}{M(D^2)} \sin \beta x = \frac{\sin \beta x}{M(-\beta^2)}$。
6.  **多项式特解**: $\frac{1}{L(D)} f_m(x) = Q_m(D)f_m(x)$，其中 $Q_m(D)$ 是 $1/L(D)$ 按升幂排列展开式的前 $m+1$ 项（直到 $D^m$）。

