---
aliases: 
info: 
date: 2024-10-31-星期四 15:32
update: 
tags:
  - wiki/year2024
  - 统计算法
  - wiki/month09
id: wiki20241031153216
banner: "![[astrowalk.gif]]"
---
---

## The 1 接受拒绝算法

如果 X 分布难以求逆，不好用 [[Wiki - 连续型随机变量的逆变换法]]，则可以借助相关的概率密度函数 [[Wiki - 概率密度函数]] $g(y)$ 产生 $X\sim F$

如果 X 和 Y 的概率密度为 $f,g$，存在常数
$$
\frac{f(x)}{cg(x)}\leq 1, \forall x\in \{t: f(t)>0\}
$$
1、生成 U (0, 1) 随机变量 U [[Wiki - 均匀分布]]

2、生成服从分布 $g$ 的随机变量 Y，与 U 独立

3、如果 $U\leq \frac{f(Y)}{cg(Y)}$，则令 X=Y，否则拒绝 Y，返回步骤 2

### Proof

验证满足分布：
$$
\begin{align}
& P(X\leq x|接受)= \frac{P(Y\leq x接受)}{P(接受)} \\
= & \frac{\int_{-\infty}^{x}\int _{0}^{f(y)/cg(y)}g(y)f_{U}(u) \, du   \, dy}{P(Y\leq +\infty接受)} \\
=&  \frac{\frac{1}{c}\int _{\infty}^{x}f(y) \, dy}{\frac{1}{c}} =F(x)
\end{align}
$$

```ad-tip

为了提高效率，c 越小越好，则接受的期望次数越少
```


