---
aliases: 
info: 相似于Jordan标准型的基
date: 2023-12-04-星期一 08:42
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/相似标准型
  - 线性代数/线性空间
id: wiki20231204084227
banner: "![[astrowalk.gif]]"
---
---

## The 1 根子空间分解

[[Wiki - 广义特征向量#Cal 1 根子空间分解定理]]

## The 2 循环子空间分解

```ad-theorem
title: Theorem 2

设 $\mathscr{B}: W\to W$ 是幂零变换 [[Wiki - 幂零变换]]，则存在 W 的一组向量 $\alpha_{1},\dots\alpha_{k}$ 使得

$$
W=C_{\alpha_{1}}\oplus C_{\alpha_{2}}\dots\oplus C_{\alpha_{k}}
$$

[[Wiki - 循环子空间]]，
存在 W 的一组基 M [[Wiki - 基和维数]]使得 $\mathscr{B}$ 在 M 下的矩阵为
$(J_{m_{1}}(0),J_{m_{2}}(0),\dots,J_{m_{k}}(0))$ [[Wiki - Jordan标准型的求法]]

```

## Cal 1 

对于特征值 $\lambda$ 的 m 次根向量，即 $(\mathscr{B}-\lambda \mathscr{I})^{m}(\alpha)=0,(\mathscr{B}-\lambda \mathscr{I})^{m-1}(\alpha)\neq0$

则取 $\alpha_{i}=(\mathscr{B}-\lambda \mathscr{I})^{m-i} (\alpha),i=1,\dots,m$，$C_{\alpha}= <\alpha_{1},\dots\alpha_{m} >$。则

1、$\alpha_{1},\dots,\alpha_{m}$ 是 $C_{\alpha}$ 的一组基

2、$\mathscr{B}|_{C_{\alpha}}$ 下在 $\alpha_{1},\dots,\alpha_{m}$ 下的矩阵为 $J_{m}(\lambda)$ [[Wiki - Jordan标准型]]

3、$P_{J_{m}(\lambda)}(\alpha)=d_{J_{m}(\lambda)}(\alpha)=(\lambda-\alpha)^{m}$ [[Wiki - 向量关于线性变换的最小多项式]]




