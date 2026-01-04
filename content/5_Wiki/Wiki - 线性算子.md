---
aliases:
  - 线性泛函
info: 线性泛函的定义
date: 2023-08-02-星期三 11:17
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 泛函分析/线性算子
id: wiki20230802111747
banner: "![[astrowalk.gif]]"
---
---
#线性代数 

## Def 1 线性算子

X 和 Y 是向量空间[[Wiki - 一般线性空间]], 如果映射 $T: X\to Y$ 满足 $T (\alpha x+\beta y)=\alpha Tx+\beta Ty,\forall x, y\in X,\forall\alpha,\beta\in\mathbb{K}$ 则称 T 是线性算子, 简称 L.O. 如果 $Y=\mathbb{K}$, 则称 T 是线性泛函。

```ad-example

微分算子、积分算子都是线性算子

不是线性算子的：$T(u)= \int u^{2}(x)dx$
```


## Def 1 linear functional

A linear functional on V is a linear map from V to F. In other words, a linear functional is an element of $\mathcal{L}(V,\mathbf{F})$

是特殊的线性映射[[Wiki - 线性映射]]

**from [[Book - 线性代数应该这样学]]**


