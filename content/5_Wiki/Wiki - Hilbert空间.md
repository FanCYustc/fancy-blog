---
aliases:
info:
date: 2024-09-25-星期三 11:17
update:
tags:
  - wiki/year2024
  - wiki/month09
  - 泛函分析
  - 几何学/内积空间
id: wiki20240925111712
banner: "![[astrowalk.gif]]"
---
---

## Def 1 hilbert 空间

如果内积空间 [[Wiki - 内积空间]]在其内积 [[Wiki - 酉空间]]诱导的范数 [[Wiki - 范数]]下是 banach 空间 [[Wiki - banach空间]]，则称内积空间为 **hilbert 空间**

[[Wiki - Cauchy-Schwarz不等式]]
## The 1 可分性

Hilbert 空间可分 [[Wiki - 度量空间的稠密性]]，当且仅当 H 空间有可数的 O.N.B 规范正交基 [[Wiki - 内积空间的正交基]]

### Proof

$\to:$ 只需证 $dim H=\infty$ 的情况，

由 H 可分，知存在可数个 $\{x_{n}\}=A\subset H,\overline{A}= H$。

通过归纳可以得到 $B=\{y_{n}\}_{n=1}^{\infty}$ 线性无关，使得 $span\{y_{n}\}= span\{x_{n}\}$，于是 $\overline{spanB}=\overline{spanA}=H$，必须有 $\#B=\infty$，否则 $spanB$ 是 H 有限维子空间，所以是闭子空间，与 $\overline{spanB}=H$ 矛盾

利用 [[Wiki - Schmidt 正交化]]，可以有规范正交集 $\{e_{n}\}_{n=1}^{\infty}, span\{e_{n}\}=span\{x_{n}\}$，于是有 $sapn\{e_{n}\}^{\perp}=\{0\}$，即为至多可数的正交基。

$\leftarrow:$ 对至多可数 ONB $\{e_{n}\}$，取 $M= \left\{ \sum_{k=1}^{n}\lambda_{k}e_{k}, \lambda_{k}\in \mathbb{Q}+i \mathbb{Q}, n\in \mathbb{N} \right\}$ 为可数个可数集的并是可数集 [[Wiki - 可数集合]]

可以证明 M 在 H 中稠密