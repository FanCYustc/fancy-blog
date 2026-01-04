---
aliases: 
info: Borel-Cantelli引理
date: 2023-10-12-星期四 14:40
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机变量
  - 概率论/极限理论
id: wiki20231012144055
banner: "![[astrowalk.gif]]"
---
---

## Lemma 1 B-C 引理

[[Wiki - 上下极限事件]]

```ad-lemma
title: Lemma 1

```
$$\text{设事件序列 }\{E_{n}\}\text{ 满足}\sum_{n=1}^{\infty}\mathrm{P}\left(E_{n}\right)<\infty\text{,则 }P\left(\lim_{ n \to \infty }\sup  E_{n}\right)=0.$$

[[Wiki - 概率测度]]

设事件序列 $\{E_n\}$ 相互独立 [[Wiki - 随机变量的独立性]], 则 $\sum_{n=1}^{\infty}\mathrm{P}\left (E_{n}\right)=\infty$, 等价于  $\mathrm{P}\left (\lim_{ n \to \infty }\sup E_{n}\right)=1.$

把 P 改成 lebesgue 测度也成立 [[Wiki - lebesgue可测]]

### Proof 

第一个

$$
P(\lim_{ n \to \infty }\sup E_{n} )=\operatorname*{lim}_{n\to \infty}\mathrm{P}\left(\bigcup_{k=n}^{\infty}E_{k}\right)\leq\operatorname*{lim}\sum_{k=n}^{\infty}\mathrm{P}\left(E_{k}\right)=0. 
$$

[[Wiki - 无穷级数的收敛性]]

第二个，正着 proof $P(\lim_{ n \to \infty }\inf E_{n}^{c})=0$

$$
\begin{align}
P(\lim_{ n \to \infty } \inf E_{n}^{c})=\lim_{ n \to \infty } P(\bigcap_{n}^{\infty}E_{n}^{c})= \lim_{ n \to \infty } \prod_{n}^{\infty} (1-P(E_{n}))  \\
\leq \lim_{ n \to \infty } (1-\sum_{n}^{\infty}P(E_{n}))\to 0
\end{align}
$$

反过来反证即可


补充：也可以用 [[Wiki - 逐项积分定理]]证明