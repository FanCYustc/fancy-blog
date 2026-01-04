---
aliases: 
info: lebesgue微分公式
date: 2024-04-29-星期一 10:52
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/微分
id: wiki20240429105216
banner: "![[astrowalk.gif]]"
---
---

思考 Riemann 一维积分时的微分定理，F (x) 可微 $\leftrightarrow \lim_{ h \to 0 } \frac{{F(x+h)-F(x)}}{h}$ 存在，即 $\lim_{ h \to 0 } \frac{{\int _{x}^{x+h}f(t) \, dt}}{h}$ 此**平均值**存在

## The 1 lebesgue 微分定理 (LDT)

对上述推广到 lebesgue 积分和 $\mathbb{R}^{d}$ ：

```ad-theorem
title: Theorem 1

若 f 在 $\mathbb{R}^{d}$ 可积，对于 $a.e.x$，有

$$
\lim_{ m(B) \to 0 ,x\in B} \frac{1}{m(B)} \int _{B} f(y) \, dy =f(x)
$$


```

不用取所有的 B，B 可以用所有的开球



更进一步，有若 $f\in L_{loc}^{1}(\mathbb{R}^{d})$，[[Wiki - 局部可积函数]] 则对 a.e.x，有

```ad-theorem
title: Theorem 1
$$
\lim_{ m(B) \to 0 ,x\in B} \frac{1}{m(B)} \int _{B} f(y) \, dy =f(x)
$$

```


### Proof

需要用到极大函数 [[Wiki - Hardy-Littlewood极大函数]]，见 [[Book - Real Analysis]] 3.1 证明定理 1.3 和定理 1.4；

同时证明还需要用到 cal 1：

## Cal 1

若 g 是**具有紧致支撑的连续函数**，$g \in C_{c}(\mathbb{R}^{d})$，则 g 的微分定理对任意 x 成立

## Cal 2 

对相对于 x 中心球的 lebesgue 微分定理：

设 $f\in L_{loc}^{1}(\mathbb{R}^d)$. 则对任意 $x\in L_f$ [[Wiki - 函数的lebesgue集]] 我们有

```ad-theorem
title: Theorem 2


$$\lim_{r\to0^+}\frac{1}{m(B_r(x))}\int_{B_r(x)}\left|f(y)-f(x)\right|dy=0.$$
特别的，因为 $L_f$ 为满测集，我们有
$$\lim\limits_{r\to0^+}\frac{1}{m(B_r(x))}\int\limits_{B_r(x)}f(y)\:dy=f(x),\quad a.e.\:x\in\mathbb{R}^d.$$


```

### Proof

利用 [[Wiki - 正则收缩#Pro 1]]

