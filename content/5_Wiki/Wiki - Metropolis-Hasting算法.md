---
aliases:
  - 独立性样本生成器
info: 
date: 2024-10-31-星期四 15:06
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 统计算法
id: wiki20241031150607
banner: "![[astrowalk.gif]]"
---
---

## The 1 Metropolis-Hasting 算法

基于 [[Wiki - MCMC方法]]

对于一些目标密度函数 f 的样本，使用逆变换法等不好生成 [[Artpatch - 统计算法-随机数生成]]

1. 找一个建议分布 g，在 $X_{t}$ 取出来后，从建议分布 $g(\cdot|X_{t})$ 中生成样本 Y
2. 从均匀分布 $U(0,1)$ 中生成样本 U
3. 如果
$$
U\leq \frac{{f(Y)g(X_{t}|Y)}}{f(X_{t})g(Y|X_{t})}
$$
则接受 Y，令 $X_{t+1}=Y$，否则令 $X_{t+1}=X_{t}$，则转移概率为 $p (X_{t}, Y)= \min\{1,\frac{{f(Y)g(X_{t}|Y)}}{f(X_{t})g(Y|X_{t})} \}$

可以证明由建议分布生成的 markov 链收敛到目标分布 f，利用 [[Wiki - 时间可逆的markov链]]

```ad-caution

注意拒绝率不能过于大。
```

## The 2 metropolis 算法

是 metropolis-hasting 算法的特例，特殊在建议分布 g 是对称的，满足 $g(Y|X_{t})=g(X_{t}|Y)$，此时更新的概率为 $p (X_{t}, Y)= \min\left\{ 1, \frac{{f(Y)}}{f(X_{t})}  \right\}$

```ad-example

例如随机游走建议分布：$g (Y|X_{t})= g(|Y-X_{t}|)$ 是对称的。即$Y= X_{t}+Z$，Z是一个对称分布的随机变量
```


## The 3 独立性样本生成器

另一种特例，特殊在 $g(Y|X_{t})=g(Y)$ 与 $X_{t}$ 无关，比较类似拒绝-接受算法 [[Wiki - 拒绝-接受算法]]了


当建议分布 g 与 f 接近时，独立性样本生成器表现较好。