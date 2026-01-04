---
aliases: 
info: 
date: 2024-12-02-星期一 15:13
update: 
tags: [wiki/year2024,wiki/month12]
id: wiki20241202151309
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 

X 为 banach 空间 [[Wiki - banach空间]]， $T\in \mathcal{L}(X)$ [[Wiki - 有界线性算子]]，$\|T\|\leq 1$ [[Wiki - 线性算子的范数]]，则

1、$(I-T)^{-1}\in \mathcal{L}(X)$

2、$(I-T)^{-1}= \sum_{n=1}^{\infty} T^{n}$

3、$\|(I-T)^{-1}\|\leq \frac{1}{1-\|T\|}$

### Proof

取 $S_{k}= \sum_{n=1}^{k}T^{n}$，证明 $\{S_{k}\}$ 是 $\mathcal{L}(X)$ 上的 cauchy 列，由完备性收敛到 $S=\sum_{n=1}^{\infty}T^{n}$，且 $\|S_{n}(I-T)-I\|= \|T^{n+1}\|\to 0$，所以 $S(I-T)=(I-T)S=I$。

最后有 $\|S\|\leq \sup_{n}\|S_{n}\|\leq \frac{1}{1-\|T\|}$

## Pro 2 

对 banach 空间 X，$A\in \mathcal{L}(X)$，$\rho(A)$ 是开集，$\sigma(A)$ 是闭集 [[Wiki - 有界线性算子的谱]]

### Proof

利用 [[#Pro 1]]

## Pro 3

$\sigma (A)\subset \overline{B (0,\|A\|)}, A\in \mathcal{L}(X)$，X 为 banach 空间

### Proof

即证明 $\forall\lambda \in \mathbb{C},|\lambda|>\|A\|$，有 $(\lambda I-A)$ 可逆

因为 $\|\frac{A}{\lambda}\|<1$，所以由 [[#Pro 1]]，有 $\left ( I-\frac{A}{\lambda} \right)^{-1}\in \mathcal{L}(X)$

