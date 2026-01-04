---
aliases: 
info: 子空间的和
date: 2023-05-19-星期五 23:33
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230519233308
banner: "![[astrowalk.gif]]"
---
---

#线性代数/线性空间 #代数 

[[Wiki - 一般线性空间]]

[[Wiki - 生成子空间]]

## Def1 子空间的和

```ad-definition
title: Definition 1

子空间的和记为 $W_{1}+W_{2}$

$$
W_{1}+W_{2}=\{\alpha_{1} +\alpha_{2} \mid \alpha_{1} \in W_{1},\alpha_{2}\in W_{2} \}
$$


```

## Pro1 和为包含他们的最小子空间

```ad-proposition
title: Propositon 1


$W_1+W_2$ 构成 V 的子空间，并且是包含 $W_1 和 W_2$ 的**最小子空间**。


```

[[Wiki - 一般线性空间理论#子空间]]

### 对最小的证明：

对任意 $\alpha_{1}\in W_{1},\alpha_{1}=\alpha_{1}+\mathbf{0}\in W_{1}+W_{2},$ 因此 $W_{1}\subset W_{1}+W_{2}.$ 同理, $W_{2}\subset W_{1}+W_{2}.$ 故 $W_{1}\cup W_{2}\subset W_{1}+W_{2}.$ 下设 W 是包含 $W_{1}\cup W_{2}$ 的任意子空间. 则对任意 $\alpha_1\in W_1,\alpha_2\in W_2,$ $\alpha_{1},\alpha_{2}\in W,$ 从而 $\alpha_1+\alpha_2\in W$ 这说明 $W_1+W_2\subset W,$ 即 $W_1+W_2$ 是包含 $W_{1}\cup W_{2}$ 的最小子空间

  

## Pro 2 维数定理：

[[Wiki - 基和维数#Def 2 维数]]

```ad-proposition
title: propositon 2


$$
{\rm{dim}}\left( {{W_1} + {W_2}} \right) = {\rm{dim}}{W_1} + {\rm{dim}}{W_2} - {\rm{dim}}\left( {{W_1} \cap {W_2}} \right)
$$




```


[[Wiki - 子空间的交]]


### 证明：

设 $\dim W_{1}=r,\dim W_{2}=s,\dim(W_{1}\cap W_{2})=t.$ 再设 $\alpha_1,\cdots,\alpha_t$ 是

$W_1\cap W_2$ 的一组基, 则它可以分别扩充为 $W_1$ 与 $W_2$ 的一组基 [[Wiki - 基和维数#Pro 3 扩充基]]

$$
\alpha_1,\cdots,\alpha_t,\beta_1,\cdots,\beta_{r-t};
$$
$$
\alpha_1,\cdots,\alpha_t,\gamma_1,\cdots,\gamma_{s-t}.
$$

于是

$$
W_{1}+W_{2}=\langle\alpha_{1},\cdots,\alpha_{t},\beta_{1},\cdots,\beta_{r-t},\gamma_{1},\cdots,\gamma_{s-t}\rangle.
$$
