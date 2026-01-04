---
aliases:
  - 对偶基
info: 对偶空间的定义及性质
date: 2023-08-02-星期三 11:19
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 泛函分析/线性算子
  - 对偶
id: wiki20230802111915
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 

## Def 1 dual space 对偶空间 

```ad-definition
title: Definition 1

A dual space of V is the linear spaceof all the linear functionals on V

即
$$
V'=\mathcal{L} (V,\mathbb{K})
$$
V 的对偶空间是所有 V 的线性泛函构成的空间

```

[[Wiki - 线性算子]] 

 [[Wiki - 一般线性空间]] 
## Pro 1


对于有限维空间，
$$
dim\space V'=dim\space V
$$




由 [[Book - 线性代数应该这样学#^060332]]

## Pro 2

对于 hilbert 空间 H [[Wiki - Hilbert空间]]，$H^{*}=H$

### Proof

由 [[Wiki - Riesz代表定理]]，$y\to f_{y}, f_{y}(x)=\langle y, x\rangle$ 是等距同构 [[Wiki - 等距映射与等距同构]]

## Def 2 对偶空间的基

```ad-definition
title: Definition 2


If $v_{1},\ldots,v_{n}$ is a basis of $\text{V}$ , then the dual basis of $v_{1},\ldots,v_{n}$ is the list
$\varphi_{1},\ldots,\varphi_{n}$ of elements of $V^{\prime}$ , where each $\varphi_{j}$ is the linear functional on $V$ such that

$$
\varphi_j(\nu_k)=\begin{cases}1&\text{if }k=j,\\0&\text{if }k\ne j.\end{cases}
$$


```

[[Wiki - 基和维数]]

他们是 V'的一组基

**来源：[[Book - 线性代数应该这样学]]**

```ad-example

E.g.对 $\mathbb{R}^{n}$ 和它的对偶空间 $\mathbb{R}^{n*}=L(\mathbb{R}^n,\mathbb{R})$，设 $\mathbb{R}^n$ 的一组基为 $e_{1},\dots,e_{n}$，对偶基则为 $e_{j}^{*}(x)=x_{j}(\vec{x})$，即一个投影变换

```


