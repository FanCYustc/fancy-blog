---
aliases: []
info: 对偶映射的null space and range的定义及性质
date: 2023-08-02-星期三 15:59
update: 2023-08-02-Wednesday 16:12:10
tags:
  - wiki/year2023
  - wiki/month08
  - 对偶
id: wiki20230802155933
banner: "![[astrowalk.gif]]"
---
---

#线性代数/线性映射  #线性代数/线性空间 

[[Wiki - 对偶算子]]
## Def 1 The null space of T‘

Suppose V and W are finite-dimensional and $T\in\mathcal{L}(V,W)$ Then

1.  $null\space T^{\prime}=(\operatorname{range}T)^{0};$

2. And $dim (null T^{'})= dim (null T) +\dim W-\dim V.$

[[Wiki - 基和维数]]

[[Wiki - 线性映射基本定理]]

[[Wiki - 零化子]]

[[Wiki - 线性映射的像空间和核]]
### Proof

1、First suppose $\varphi\in\operatorname{null}T^{\prime}.$ Thus $0=T^{\prime}(\varphi)=\varphi\circ T$ . Hence

$$
0=(\varphi\circ T)(v)=\varphi(Tv)\quad\mathrm{for~every~}v\in V.
$$

Thus $\varphi\in(\operatorname{range}T)^{0}$ . This implies that null $T^{\prime}\subset(\operatorname{range}T)^{0}.$ To prove the inclusion in the opposite direction, now suppose that $\varphi\in(\operatorname{range}T)^{0}$. Thus $\varphi(Tv)\:=\:0$ for every vector $\nu\in V$ 

Hence $0=\varphi\circ T=T^{\prime}(\varphi)$. In other words, $\varphi\:\in\:\operatorname{null}T^{\prime},$ which shows that
(range $T)^{0}\subset\operatorname{null}T^{\prime}$ , completing the proof of (a).

2、We have

$$
\begin{aligned}\dim\operatorname{null}T'&=\dim(\operatorname{range}T)^0\\&=\dim W-\dim\operatorname{range}T\\&=\dim W-(\dim V-\dim\operatorname{null}T)\\&=\dim\operatorname{null}T+\dim W-\dim V,\end{aligned}
$$



## Def 2 range of T'

- Dim range T'=dim range T
- $Range T' = (null\space T )^{0}$

### Proof

1 由 def1 即得，只证 2

First suppose $\varphi\:\in\:\operatorname{range}T^{\prime}$ . Thus there exists $\psi\:\in\:W^{\prime}$ such that
$\varphi\:=\:T^{\prime}(\psi)$. If $v\in\operatorname{null}T$ , then

$$
\varphi(v)=\big(T^{\prime}(\psi)\big)v=(\psi\circ T)(v)=\psi(Tv)=\psi(0)=0.
$$

Hence $\varphi\in(\operatorname{null}T)^{0}$ . This implies that range $T^{\prime}\subset(\operatorname{null}T)^{0}$ We will complete the proof by showing that range $T^{\prime}$ and (null $T$ 0have the same dimension. To do this, note that

$$
\begin{aligned}\dim\operatorname{range}T^{\prime}&=\dim\operatorname{range}T\\&=\dim V-\dim\operatorname{null}T\\&=\dim(\operatorname{null}T)^0,\end{aligned}
$$

即行秩等于列秩 [[Wiki - 矩阵的秩]]

**来源：[[Book - 线性代数应该这样学]]**